import type { LoaderFunction } from "@remix-run/node";
import { Link, useLoaderData } from "@remix-run/react";
import db from "../services/db.server";

export const loader: LoaderFunction = async () => {
  const decks = await db("select * from decks");

  return { decks };
};

export default function Index() {
  const { decks } = useLoaderData();

  return (
    <ul>
      <li className="deck center-item glass">
        <Link to={`/decks/new`} className="deck-link">
          <span className="deck-create">Create Deck</span>
        </Link>
      </li>
      {decks.map((deck) => (
        <li key={deck.id} className="deck glass">
          <Link to={`/decks/${deck.id}`} className="deck-link">
            {deck.name}
          </Link>
        </li>
      ))}
    </ul>
  );
}
