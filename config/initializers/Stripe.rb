require 'stripe'
Rails.configuration.stripe = { 
  :publishable_key => ENV['pk_test_51Nc1yWSHQgAYF3VTeYMydqh4bAOY6B7tyNouPzYEhBf4c2Wr6T0p1HTN3LvRjv1q9qfPx5sSrvo3RyoSzTPQX6bb00cZk5qqAa'],
  :secret_key => ENV['sk_test_51Nc1yWSHQgAYF3VTk4IQXwUD4Fml2OSdis51sAbq19c0pcxfUQpszSIeaOFT9VDoQP9gktGQh4RyfnBv0LtRlO9n00tnkQkgc6']
} 
Stripe.api_key = Rails.configuration.stripe[:secret_key]