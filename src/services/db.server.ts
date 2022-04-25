import sqlite3 from "sqlite3";

if (!process.env.DATABASE_FILE) {
  throw new Error("Must provide DATABASE_FILE environment variable");
}

const db = new sqlite3.Database(process.env.DATABASE_FILE);

export default function query<T>(
  sql: string,
  params: Array<string> = []
): Promise<T[]> {
  return new Promise((resolve, reject) => {
    return db.all(sql, params, (error, rows) => {
      if (error) return reject(error);
      resolve(rows);
    });
  });
}
