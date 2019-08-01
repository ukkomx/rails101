# Rails 101 Workshop

This project is the result of the workshop available at https://ukko.mx.

This workshop explores the basics of Ruby on Rails. It covers:

- MVC basics
- The structure of a Rails app
- The Gemfile
- Creating a Rails appliaction for a simple online shop:
  - Creating a Product model
  - Creating logic and views for managing products
  - Attaching images to product
- RubyGems and gems
- User authentication with Devise
- Rails' assets pipeline
- Landing page with products



### Settiing up Heroku

1. Sign up at https://heroku.com
2. Install Heroku CLI
3. Login with heroku
4. Enter `heroku create` from your app directory

### Deploying with heroku

To deploy your app enter the following command from your app directory. Your project must have git initialized for heroku to work.

`git push heroku master`

To setup the database and migrations run:

`heroku run rails db:setup`

Create user to login in the app:

`heroku run rails c`

`User.create(name: 'Admin', email: 'admin@test.com', password: '123456', password_confirmation: '123456')`