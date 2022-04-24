import { createMachine, assign } from "xstate";
import { useMachine } from "@xstate/react";
import shuffle from "../utils/shuffle";

interface ICard {
  id: number;
  question: string;
  answer: string;
}

interface IContext {
  cards: ICard[];
  current: number;
  correct: number[];
}

const machine = createMachine<IContext>(
  {
    id: "cards",
    initial: "show",
    context: {
      cards: [],
      current: 0,
      correct: [],
    },
    states: {
      restart: {
        onEntry: assign((context, event) => {
          return {
            cards: shuffle(
              context.cards.map((card) => ({
                ...card,
              }))
            ),
          };
        }),
        always: "show",
      },
      show: {
        on: {
          NEXT: [
            { target: "complete", cond: "isComplete" },
            { target: "show", actions: ["nextCard"] },
          ],
        },
      },
      complete: {
        on: {
          START: { target: "restart", actions: ["reset"] },
        },
      },
    },
  },
  {
    guards: {
      isComplete: (context, event) =>
        context.current === context.cards.length - 1,
    },
    actions: {
      nextCard: assign((context, event) => ({
        current: context.current + 1,
        correct: event.correct
          ? [...context.correct, context.cards[context.current].id]
          : context.correct,
      })),
      reset: assign((context, event) => ({ current: 0, correct: [] })),
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
