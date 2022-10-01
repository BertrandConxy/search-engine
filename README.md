![](https://img.shields.io/badge/HJ-blue)

# HJ Search engine

> HJ search is a full-stack web app. A search engine which is a real time search box where users search articles and then the search engine records and displays analytics about what users searched the most, number of times they searched a particular query and other information.

### Quick Preview

![image](https://user-images.githubusercontent.com/90222110/193413642-9449b304-4c6f-4812-938c-6e431c001840.png)

### Live Demo
  [Demo](https://hj-search.herokuapp.com/)

# Built with
- Ruby
- Ruby on Rails
- Rubocop
- Bootstrap
- Gems
  - Rspec
  - Faker
  - FuzzyStringMatch

# Get Started
Follow these steps below:

## Pre-requisites

```bash
- Ruby 3.0.0
- Rails 7
- PostgreSQL 12
```

## Setup
Clone the repo and run bundle install in the command line to install the dependencies

```bash
$ git clone https://github.com/BertrandConxy/search-engine.git
$ cd search-engine
```

## Install gems with:

```bash
$ bundle install
```

## Play with the code
```
rails c
```

## Populate the database with dummy data
```
rails db:migrate
rails db:seed
```

## Run linters
```
rubocop -A
```

## Run test on project with

```bash
$ rspec
  - this will run all the test cases
```

```bash
$ rspec spec/folder_name/name_of_test_file.rb
  - to run test cases individually
```

## Start rails server (puma)

```bash
$ rails server
```

Open [http://localhost:3000/](http://localhost:3000/) in your browser


## Author

👤 **Bertrand Mutangana Ishimwe**

- GitHub: [@BertrandConxy](https://github.com/BertrandConxy)
- Twitter: [@Bconxy](https://twitter.com/BertrandMutanga)
- LinkedIn: [Bertrand Mutangana Ishimwe](https://www.linkedin.com/in/bertrandmutangana)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/BertrandConxy/search-engine/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Original design idea by [Google](https://google.com)

## 📝 License

This project is [MIT](./MIT.md) licensed.
