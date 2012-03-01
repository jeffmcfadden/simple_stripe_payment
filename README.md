# A Simple Stripe.com Payment App

Fill out a form, charge the card, save the payment. Done.

## Play Locally:

Create a file config/env.rb **Do Not Put This Under Version Control**:

	ENV['STRIPE_API_KEY'] = 'yourStripeApiKey' 
	ENV['STRIPE_PUB_KEY'] = 'yourStripePubKey'
    
Then launch your rails server.

## Deploy to heroku:

    $ heroku apps:create --stack cedar
    $ heroku config:add STRIPE_API_KEY='yourStripeApiKey'
    $ heroku config:add STRIPE_PUB_KEY='yourStripePubKey'
    $ git push heroku master
    $ heroku run rake db:migrate
    $ heroku open 