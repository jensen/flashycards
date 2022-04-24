import type {
  LinksFunction,
  LoaderFunction,
  MetaFunction,
} from "@remix-run/node";
import {
  Link,
  Links,
  LiveReload,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
  useLoaderData,
} from "@remix-run/react";

import reset from "./styles/reset.css";
import main from "./styles/main.css";
import gradients from "./styles/gradients.css";

export const links: LinksFunction = () => [
  { rel: "preconnect", href: "https://fonts.googleapis.com", key: "" },
  {
    rel: "preconnect",
    href: "https://fonts.googleapis.com",
    crossOrigin: "anonymous",
  },
  {
    rel: "stylesheet",
    href: "https://fonts.googleapis.com/css2?family=Poppins:wght@100;400;500;700&display=swap",
  },
  {
    rel: "stylesheet",
    href: reset,
  },
  {
    rel: "stylesheet",
    href: main,
  },
  {
    rel: "stylesheet",
    href: gradients,
  },
];

export const meta: MetaFunction = () => ({
  charset: "utf-8",
  title: "flashy",
  viewport: "width=device-width,initial-scale=1",
});

export const loader: LoaderFunction = () => {
  return {
    gradient: Math.round(Math.random() * 33),
  };
};

export default function App() {
  const { gradient } = useLoaderData();

  return (
    <html lang="en">
      <head>
        <Meta />
        <Links />
      </head>
      <body className={`gradient-${gradient}`}>
        <main className="layout">
          <header className="glass header">
            <Link className="header-text font-bold" to="/">
              flashy<span className="font-light">cards</span>
            </Link>
          </header>
          <section className="content">
            <Outlet />
          </section>
        </main>
        <ScrollRestoration />
        <Scripts />
        <LiveReload />
      </body>
    </html>
  );
}
