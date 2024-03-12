### [plant-clinic](https://mellifluous-arithmetic-b968bd.netlify.app/), a copycat of the subreddit r/plantclinic powered by GraphQL API

## Description

The core function of plant-clinic is to diagnose sick plants. If a user wonders "what's wrong with my plant?", the community helps diagnose and treat it! A registered user can:

- create a post including picture of the plant
- comment on a post
- scroll through posts list
- search for posts within posts list

## Web App

plant-clinic is developed using:

- Rails API with GraphQL for backend. Runs on Koyeb. Serverless PostgreSQL database supported by CockroachDB. Tested via Minitest - [GitHub repo](https://github.com/maricalmer/plant-clinic_backend)
- React with GraphQL + Apollo Client for frontend. Deployed on Netlify - [GitHub repo](https://github.com/maricalmer/plant-clinic_frontend)

## Rails Server

![ruby](https://img.shields.io/badge/Ruby-3.1.2-F32C24?style=for-the-badge&logo=ruby&logoColor=white) ![Rails](https://img.shields.io/badge/Rails-7.0.6-C52F24?style=for-the-badge&logo=rubyonrails&logoColor=white) ![GraphQL](https://img.shields.io/badge/graphql-16.7.1-F6009B?style=for-the-badge&logo=graphql&logoColor=white) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14.8-4764BE?style=for-the-badge&logo=postgresql&logoColor=white)

## Ruby gems (non exhaustive)

[![graphql](https://img.shields.io/badge/graphql-1.10.0-red.svg)](https://rubygems.org/gems/graphql) [![graphiql-rails](https://img.shields.io/badge/graphiql--rails-1.5.0-red.svg)](https://rubygems.org/gems/graphiql-rails) [![bcrypt](https://img.shields.io/badge/bcrypt-3.1.13-red.svg)](https://rubygems.org/gems/bcrypt) [![rack-cors](https://img.shields.io/badge/rack--cors-2.0.1-red.svg)](https://rubygems.org/gems/rack-cors) [![ar-lazy-preload](https://img.shields.io/badge/ar_lazy_preload-2.0.0-red.svg)](https://rubygems.org/gems/ar_lazy_preload) [![dotenv-rails](https://img.shields.io/badge/dotenv--rails-2.8.1-red.svg)](https://rubygems.org/gems/dotenv-rails) [![graphql-query-resolver](https://img.shields.io/badge/graphql--query--resolver-0.2.0-red.svg)](https://rubygems.org/gems/graphql-query-resolver)

## Run Locally

Clone the project

```bash
  git clone git@github.com:maricalmer/maricalmer.github.io.git my-project-frontend
  git clone git@github.com:maricalmer/maricalmer.github.io.git my-project-backend
```

Go to the project directory and remove git logs

```bash
  cd my-project-frontend
  rm -rf .git
  cd ..
  cd my-project-backend
  rm -rf .git
```

Install dependencies

```bash
  bundle install
  yarn install
  cd ..
  cd my-project-frontend
  yarn install
```

Make sure you have ./node_modules/.bin in your $PATH:

```bash
  echo $PATH
  # You should see `./node_modules/.bin` in the list
```

If it's not the case, add it:

```bash
  cd ~/code/dotfiles/<your_github_nickname>
  echo 'export PATH="./bin:./node_modules/.bin:${PATH}"' >> zshrc
  cd ~/code/<your_github_nickname>/my-project
  source ~/.zshrc
```

Start the server

```bash
  cd ..
  cd my-project-backend
  rails s
```

In a new terminal

```bash
  cd ..
  cd my-project-frontend
  yarn start
```

## Visit the page!

[plant-clinic](https://mellifluous-arithmetic-b968bd.netlify.app/)

## License

[MIT](https://choosealicense.com/licenses/mit/)
