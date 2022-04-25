import type { ActionFunction, json } from "@remix-run/node";
import { redirect } from "@remix-run/node";
import { Form, useActionData } from "@remix-run/react";
import { useState } from "react";
import db from "../services/db.server";
import DeleteIcon from "../components/icons/Delete";

type ActionData = {
  formError?: string;
  fieldErrors?: {
    name: string | null;
    questions: Array<string | null>;
    answers: Array<string | null>;
  };
  fields?: {
    name: string;
    questions: string[];
    answers: string[];
  };
};

const invalid = (data: ActionData) => json(data, { status: 400 });

export const action: ActionFunction = async ({ request }) => {
  const body = await request.formData();

  const name = (body.get("name") as string) || "";
  const questions = body.getAll("questions[]") as string[];
  const answers = body.getAll("answers[]") as string[];

  const fieldErrors: {
    name: string | null;
    questions: Array<string | null>;
    answers: Array<string | null>;
  } = {
    name: null,
    questions: new Array(questions.length).fill(null),
    answers: new Array(answers.length).fill(null),
  };

  if (!name) {
    fieldErrors.name = "Must provide name";
  }

  for (let i = 0; i < questions.length; i++) {
    if (questions[i] === "") {
      fieldErrors.questions[i] = "Question cannot be blank";
    }

    if (answers[i] === "") {
      fieldErrors.answers[i] = "Answer cannot be blank";
    }
  }

  if (
    fieldErrors.name ||
    fieldErrors.questions.some(Boolean) ||
    fieldErrors.answers.some(Boolean)
  ) {
    return invalid({ fieldErrors, fields: { name, questions, answers } });
  }

  const [deck] = await db<IDeck>(
    "insert into decks (name) values ($1) returning id",
    [name]
  );

  const template = [];
  const params = [];

  for (let i = 0, p = 1; i < questions.length; i++, p += 3) {
    template.push(`($${p}, $${p + 1}, $${p + 2})`);
    params.push(questions[i]);
    params.push(answers[i]);
    params.push(String(deck.id));
  }

  await db(
    "insert into cards (question, answer, deck_id) values " +
      template.join(", "),
    params
  );

  return redirect(`/decks/${deck.id}`);
};

export default function NewDeck() {
  const actionData = useActionData<ActionData>();
  const [supressErrors, setSupressErrors] = useState(false);

  const [cards, setCards] = useState([0]);

  return (
    <div className="create-modal">
      <Form
        className="contents"
        method="post"
        onSubmit={() => setSupressErrors(false)}
      >
        <label className="form-group form-label padded rounded glass">
          <div className="form-label-text">
            <span>Name</span>
            {actionData?.fieldErrors?.name && supressErrors === false && (
              <span className="form-error" role="alert">
                {actionData.fieldErrors.name}
              </span>
            )}
          </div>
          <input
            className="form-input"
            name="name"
            type="text"
            defaultValue={actionData?.fields?.name}
          />
        </label>
        {cards.map((card, index) => (
          <div key={card} className="form-group padded rounded glass">
            {index > 0 && (
              <div className="form-delete-field">
                <button
                  type="button"
                  className="btn-icon"
                  onClick={() => {
                    setCards((prev) => prev.filter((c, i) => index !== i));
                    setSupressErrors(true);
                  }}
                >
                  <DeleteIcon />
                </button>
              </div>
            )}
            <label className="form-label">
              <div className="form-label-text">
                <span>Question {index + 1}</span>
                {actionData?.fieldErrors?.questions[index] &&
                  supressErrors === false && (
                    <span className="form-error" role="alert">
                      {actionData.fieldErrors.questions[index]}
                    </span>
                  )}
              </div>
              <input className="form-input" name="questions[]" type="text" />
            </label>
            <label className="form-label">
              <div className="form-label-text">
                <span>Answer {index + 1}</span>{" "}
                {actionData?.fieldErrors?.answers[index] &&
                  supressErrors === false && (
                    <span className="form-error" role="alert">
                      {actionData.fieldErrors.answers[index]}
                    </span>
                  )}
              </div>
              <input className="form-input" name="answers[]" type="text" />
            </label>
          </div>
        ))}
        <div className="btn-group">
          <button
            className="btn"
            type="button"
            onClick={() => {
              setCards((prev) => [...prev, prev[prev.length - 1] + 1]);
              setSupressErrors(true);
            }}
          >
            Add Card
          </button>
          <button className="btn" type="submit">
            Create Deck
          </button>
        </div>
      </Form>
    </div>
  );
}
