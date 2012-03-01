# A Simple Stripe.com Payment App

Fill out a form, charge the card, save the payment. Done.

## Deploy to heroku:

$ heroku apps:create --stack cedar
$ heroku config:add STRIPE_API_KEY='yourStripeApiKey'
$ heroku config:add STRIPE_PUB_KEY='yourStripePubKey'
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open 