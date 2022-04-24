import { useMotionValue, useTransform } from "framer-motion";

export default function useCardTilt() {
  const x = useMotionValue(0.5);
  const y = useMotionValue(0.5);

  const rotateX = useTransform(y, [0, 1], [12, -12], {
    clamp: true,
  });
  const rotateY = useTransform(x, [0, 1], [-12, 12], {
    clamp: true,
  });

  const onMove = (event) => {
    const bounds = event.currentTarget.getBoundingClientRect();

    x.set((event.clientX - bounds.x) / event.currentTarget.clientWidth, true);
    y.set((event.clientY - bounds.y) / event.currentTarget.clientHeight, true);
  };

  return {
    rotateX,
    rotateY,
    onMove,
  };
}
