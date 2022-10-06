<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
$ npm install
```

## Configuration
Right no all configuration set on *src/app.module.ts* file, so no need to use env file 
- make a DB in mysql with name as you wish 
- confugure DB details in `app.module.ts`
- *PORT* :- set `PORT` in *src/main.ts* (not using env at the moment)


## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## App flow
- I used **module** structure so all **module** is in *src* dir
- find sql file in dir and import it
- you can find APIs in ***http://localhost:3001/api***
- please try with GET `/channels` API
