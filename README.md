### Job Board

Simple CRUD job board that allows logged in users to post new job listings for a set fee (default set is $3000 (3000) for 30 day). The charges and credit card form is handled by [Stripe](https://stripe.com) via the Stripe API and Ruby Gem. 

If there are errors along the way the form will offer error feedback for both the Rails based form and the Stripe based form.

[Demo](https://jsnspr-ror-stripe-job-board.herokuapp.com)

## Set up

Copy the files locally.

Make sure you have [PostgreSQL installed](https://www.postgresql.org/). 

Edit db/seeds.rb and replace the default user info with your own or any fake account you wish to use. Don't use a password you use for other accounts. You can also edit the default job seeds to whatever you want or remove them entirely. 

Set up a free [Stripe](https://stripe.com) account. You do not need to set up a full account unless you want to do live charges. Otherwise, the test publishable and secret keys will work fine, which can found [here](https://dashboard.stripe.com/account/apikeys). 

If running locally, these keys need to be placed in the config/application.yml file: 

```
development:
  stripe_api_key: sk_test_r4nD0Ml3tT3Rs4nDnUmB3Rs
  stripe_publishable_key: pk_test_r4nD0Ml3tT3Rs4nDnUmB3Rs

production:
  stripe_api_key: sk_test_r4nD0Ml3tT3Rs4nDnUmB3Rs
  stripe_publishable_key: pk_test_r4nD0Ml3tT3Rs4nDnUmB3Rs
  ```

If running on a server, you will need to set up the environment variables on the server. For example, on Heroku, once you have the app set up (see [this guide](https://devcenter.heroku.com/articles/getting-started-with-rails5) for instructions), run: `heroku config:set stripe_publishable_key=your_publishable_key_here stripe_api_key=your_secret_key_here`from the command line. For a test credit card, use: 4242 4242 4242 4242, 04/24, 242, 00001. This is a recognized test Visa account and no one will be charged. 

If running locally, install the gems via `bundle install` from the command line. If you make any changes to the Gemfile, you need to run `bundle install` again to generate a new a new Gemfile.lock file. 

If running from a server, follow the instructions for running a Rails app on it (again, follow [this guide](https://devcenter.heroku.com/articles/getting-started-with-rails5) if using Heroku).

If using Heroku to host, everytime the [Dyno](https://www.heroku.com/dynos) shuts down, the data uploaded (company avatar/logo images) will be lost but the DB data will remain the same resulting in broken images. This is just due to the way Heroku works when using a free account with Dynos that shut down after 30 min of inactivity (meant for showing demos / testing and not persistent live hosting) and not an issue with the app. You can edit those entries to reupload the image, but obviously this will be an issue every time the Dyno shuts down. 

## Database details

Each `Job` will feature the following:

- Title -  `title:`
- Description - `description:text`
- Logo Avatar - via [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) - `avatar:string`
- Website URL - `url:string`
- Type: Fulltime, Part-Time, Freelance, Contract `job_type:string`
- Location - `location:string`
- User ID - `user_id:integer`
- Remote ok - `remote_ok: boolean, default: false`
- apply_url - `apply_url:string`

Each `User` will have:

  - Name - `name:string`
  - Email - `email:string`
  - Stripe ID - `stripe_id:string`
  - Card Type - `card_type:string`
  - Card Last 4 - `card_last4:string`
  - Card Exp Mo - `card_exp_month:string`
  - Card Exp Year - `card_exp_year:string`
  - Expires at - `expires_at:datetime`
  - Admin - `admin:boolean`
