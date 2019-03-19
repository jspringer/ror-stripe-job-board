Rails.configuration.stripe = {
  :publishable_key => ENV['stripe_publishable_key'],
  :secret_key      => ENV['stripe_api_key']
}

# Stripe.api_key = ENV['stripe_api_key']

# Stripe documentation said to use the line below though it seems it does the same as the above

Stripe.api_key = Rails.configuration.stripe[:secret_key]