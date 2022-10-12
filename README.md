# ReScript Examples

This is a collection of example modules that experiment with rescript. The repo was created from a template based on the official ReScript [starter template](https://github.com/rescript-lang/rescript-project-template).

## Modification

The following modifications were made to the project in an attempt to use react:

modified the package.json dependencies:
```sh
npm install @rescript/react --save
```

manually added to bsconfig.json:
```sh
  "reason": { "react-jsx": 3 },
  "bs-dependencies": ["@rescript/react"]
```

## Installation

```sh
npm install
```

## Build

- Build: `npm run build`
- Build & watch: `npm run start`
- Clean: `npm run clean`

## Run

#### simplest example with stdout logging
- `node src/Demo.bs.js`

#### webserver that listens on port 3000
- contains http bindings
- `node src/Server.bs.js`
- browse to http://localhost:3000/
- without a dev server, must restart the `node` command and refresh browser to affect changes

#### simple react server
- `node src/ReactServer.bs.js`
- failed attempt to return component
- probably need to run in a project with a dev server
- plan to abandon attempt and create a react-specific template
