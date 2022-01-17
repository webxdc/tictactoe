# tictactoe.webxdc

![icon](./icon.png)

a tic tac toe webxdc app.

### Features:

- Multiple games at once
- spectate running games
- rudimentary "Matchmaking"
- Sound (some tone's to test sound)

### Things that could be improved:

- add resilience against message loss
- code quality (it's a bit messy for my tastes)

## Developing

type-check the project

```
npm i -g typescript
tsc --noEmit --allowJs --lib es2015,dom *.js
```
