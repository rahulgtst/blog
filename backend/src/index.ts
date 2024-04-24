import express, { Express, Request, Response } from 'express';

const app: Express = express();
const PORT: number = 5000;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello World from TypeScript!');
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
