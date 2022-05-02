import { useState } from "react";
import { useMotionValue } from "framer-motion";

const defaultAnimation = {
  x: 0,
  y: 0,
  opacity: 1,
  transition: {
    duration: 0.33,
    ease: "easeIn",
  },
};

export default function useCardDrag({ onMoved }) {
  const [dragStart, setDragStart] = useState({
    axis: null,
    animation: defaultAnimation,
  });

  const x = useMotionValue(0);
  const y = useMotionValue(0);

  const moveCard = (animation, correct: boolean) => {
    setDragStart({ ...dragStart, animation });

    setTimeout(() => {
      setDragStart({ axis: null, animation: defaultAnimation });

      x.set(0);
      y.set(0);

      onMoved(correct);
    }, 200);
  };

  const onDragEnd = ({ offset: { x, y } }) => {
    const rad = Math.atan2(y, x);
    const DRAG_THRESHOLD =
      "ontouchstart" in document.documentElement ? 100 : 300;

    if (Math.abs(x) > DRAG_THRESHOLD || Math.abs(y) > DRAG_THRESHOLD) {
      moveCard(
        {
          x: 1000 * Math.cos(rad),
          y: 1000 * Math.sin(rad),
        },
        x > 0
      );
    }
  };

  return {
    x,
    y,
    onDragEnd,
    dragAnimation: dragStart.animation,
  };
}
