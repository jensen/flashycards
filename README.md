## Purpose

This project was completed as part of a group learning [exercise](https://www.devjam.org/project/039c8aa3-999c-403e-97cf-2ccd2b3626c6). The requirements describe a multiple choice quick application which was one of the previous [projects](https://github.com/jensen/quizitive). I tweaks the requirements to another form of flash card study.

## Demo

Swipe left and right through cards until you get them all right. When understanding of the card is not high, swipe left to bring it back into rotation. If confidence in understanding is high in a card, swipe right to remove it from the deck for the round.

Each time the application reloads, it will display a random background gradient.

![Flashy Cards Demo](https://user-images.githubusercontent.com/14803/166834916-af6f718d-8200-4883-80d9-494fb5a7630d.png)

[https://flashycards.karl.sh/](https://flashycards.karl.sh/)

## Project Features

### User Stories

1. ✅ User can create a deck of questions and answers.
2. ✅ User can choose a deck to study.
3. ✅ User is presented with one card in the deck at at time.
4. ✅ User can hold down on the card to reveal the answer.
5. ✅ User can swipe the card left to repeat it in the deck.
6. ✅ User can swipe the card right to remove it from the deck for the round.

## Technical

### Dependencies

- typescript
- react
- remix
- framer-motion
- sqlite

### Hosting

This application is hosted using [Dokku](https://dokku.com/) on a personal VPS. The sqlite database is used to keep track of the decks.

### Styles

This was the first project in a while that I did not use tailwindcss. Instead the CSS classes are defined in `src/styles`.

### Animation

Created a couple of custom hooks to help with the animation. The `useCardTilt` can be used to attach an `onMove` event handler to an `onPointerMove` event.

```javascript
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
```

## Development

You'll need to run two terminals (or bring in a process manager like concurrently/pm2-dev if you like):

Start the Remix development asset server

```sh
npm run dev
```

This starts your app in development mode, which will purge the server require cache when Remix rebuilds assets so you don't need a process manager restarting the express server.

## Deployment

First, build your app for production:

```sh
npm run build
```

Then run the app in production mode:

```sh
npm start
```
