# Express Boilerplate!

This is a boilerplate project used for starting new projects!

The following dependencies are installed by default:
`cors`
`dotenv`
`express`
`helmet`
`morgan`

Installed a logging library if required `npm i winston`

The follosing dev dependencies are alse installed by default:
`chai`
`mocha`
`nodemon`
`supertest`

## Set up

Complete the following steps to start a new project (NEW-PROJECT-NAME):

1. `git clone GITHUB-URL NEW-PROJECTS-NAME`
2. `cd NEW-PROJECTS-NAME` into the cloned repository
3. `rm -rf .git && git init`
4. `npm install`
5. `mv example.env .env`
6. Edit the contents of the `package.json` to use NEW-PROJECT-NAME instead of `"name": "express-boilerplate",`

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests `npm test`

## Deploying

When your new project is ready for deployment, add a new Heroku application with `heroku create`. This will make a new git remote called "heroku" and you can then `npm run deploy` which will push to this remote's master branch.
