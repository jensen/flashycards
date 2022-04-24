import type { LoaderFunction } from "@remix-run/node";
import db from "../services/db.server";
import { useLoaderData } from "@remix-run/react";
import { useState } from "react";
import { motion } from "framer-motion";
import useCardTilt from "../hooks/useCardTilt";
import useCardDrag from "../hooks/useCardDrag";
import { useCards } from "../statecharts/cards";
import shuffle from "../utils/shuffle";

export const loader: LoaderFunction = async ({ params }) => {
  if (!params.id) {
    return new Response("Must provide id", {
      status: 400,
    });
  }

  const cards = await db("select * from cards where deck_id = $1", [params.id]);

  return {
    cards: shuffle(cards),
  };
};

const Card = (props) => {
  return (
    <motion.div
      {...props}
      initial={{ opacity: 0 }}
      className="glass card"
      onDragStart={props.onDragStart}
      onDragEnd={props.onDragEnd}
      drag
      dragTransition={{ bounceStiffness: 200, bounceDamping: 8 }}
      dragConstraints={{ left: 0, right: 0, top: 0, bottom: 0 }}
      whileTap={{ scale: 1.3, transition: { ease: "easeIn" } }}
      animate={props.animate}
      style={{ ...props.style }}
      transition={{ ease: [0.6, 0.05, -0.01, 0.9] }}
      onPointerMove={props.onPointerMove}
    >
      <p className="card-question">{props.question}</p>
      <motion.p
        className="card-answer"
        animate={props.selected ? "selected" : "hidden"}
        variants={{
          hidden: {
            opacity: 0,
            transition: { duration: 0, delay: 0 },
          },
          selected: {
            opacity: 1,
            transition: { duration: 0.5, ease: "easeIn" },
          },
        }}
      >
        {props.answer}
      </motion.p>
    </motion.div>
  );
};

export default function Deck() {
  const { cards } = useLoaderData();
  const [current, send] = useCards(cards);
  const context = current.context;

  const [isSelected, setSelected] = useState(false);

  const { rotateX, rotateY, onMove } = useCardTilt();
  const { x, y, onDragEnd, dragAnimation } = useCardDrag({
    onMoved: (correct: boolean) => send("NEXT", { correct }),
  });

  const card = context.cards[context.current];

  if (current.matches("show")) {
    return (
      <div className="cards-window" onPointerMove={onMove}>
        <div className="cards">
          <Card
            key={card.id}
            question={card.question}
            answer={card.answer}
            style={{
              x,
              y,
              rotateX,
              rotateY,
              zIndex: card.id,
            }}
            onDragEnd={(event, info) => {
              setSelected(false);
              onDragEnd(info);
            }}
            onTapStart={() => {
              setSelected(true);
            }}
            onTap={() => {
              setSelected(false);
            }}
            animate={dragAnimation}
            selected={isSelected}
          />
        </div>
      </div>
    );
  }

  return (
    <div>
      <button onClick={() => send("START")}>Again</button>
    </div>
  );
}
