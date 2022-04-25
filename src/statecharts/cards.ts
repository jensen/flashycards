import { createMachine, assign } from "xstate";
import { useMachine } from "@xstate/react";
import shuffle from "../utils/shuffle";

interface IContext {
  cards: ICard[];
  correct: ICard[];
  redo: ICard[];
}

const machine = createMachine<IContext>(
  {
    id: "cards",
    initial: "show",
    context: {
      cards: [],
      correct: [],
      redo: [],
    },
    states: {
      shuffle: {
        onEntry: assign((context, event) => ({
          cards: shuffle(context.cards),
        })),
        always: "show",
      },
      show: {
        always: [
          { target: "shuffle", actions: "continue", cond: "isEmpty" },
          { target: "complete", cond: "isComplete" },
        ],
        on: {
          NEXT: [{ target: "show", actions: "nextCard" }],
        },
      },
      complete: {
        on: {
          START: { target: "shuffle", actions: ["reset"] },
        },
      },
    },
  },
  {
    guards: {
      isComplete: (context, event) =>
        context.cards.length === 0 && context.redo.length === 0,
      isEmpty: (context, event) =>
        context.cards.length === 0 && context.redo.length > 0,
    },
    actions: {
      nextCard: assign((context, event) => {
        const [current] = context.cards;
        const cards = context.cards.slice(1);

        return event.correct
          ? {
              cards,
              correct: [...context.correct, current],
            }
          : {
              cards,
              redo: [...context.redo, current],
            };
      }),
      continue: assign((context, event) => ({
        cards: [...context.redo],
        redo: [],
      })),
      reset: assign((context, event) => ({
        cards: [...context.correct],
        correct: [],
      })),
    },
  }
);

export const useCards = (cards: ICard[]) => {
  return useMachine(machine, {
    context: {
      cards,
    },
  });
};
