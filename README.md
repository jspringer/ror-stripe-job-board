## Job Board

The basis of the application is a job board where anyone looking to get hired can come and apply for positions. If you are a user or company looking to post a job you can sign up for an account and do so for a fee. We use a combination of the [Stripe](https://stripe.com) API and the Stripe Ruby Gem to initialize a charge when a job gets posted.

If there are errors along the way the form will offer error feedback for both the Rails based form and the Stripe based form.

### Stripe Integration

Stripe has a variety of solutions when it comes to accepting payments securely. There's really no wrong way to do so but some applications may favor alternative approaches. In our case I opted for [Stripe Elements](https://stripe.com/elements) which is a drop in replacement that allows you to display a form for the credit card of which you can manipulate at will.

Styling it or triggering something to happen upon user input is completely up to you. If you'd rather bypass all of that customization you can always integrate the originally [Stripe.js](https://stripe.com/docs/stripe-js) library and or use [Stripe Checkout](https://stripe.com/docs/checkout) which is as simple as dropping in a form with key value pairs inside your application.

##### Jobs

Each `Job` will house quite a few fields of which are imporant for any type of job listing online.

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

[Demo]()