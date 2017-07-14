To set up:

* `rake db:setup`

# E-commerce Site

Rails E-commerce Store is a <a href="http://rubyonrails.org/">Ruby on Rails</a> application which demonstrates the core functionality of an e-commerce web shop. Users can browse items, add items to their cart and purchase a product using <a href="https://stripe.com/">stripe</a>. Shop admins can add, edit or remove products.

### Dependencies
* Ruby >= 2.3.1
* Rails >= 5.1.2
* bcrypt
* materialize
* postgres
* bundler

### Installation
```
$ postgres
$ git clone https://github.com/teustice/rails_e_commerce
$ cd rails_e_commerce
$ bundle install
$ rails db:create
$ rails db:setup
$ rails s
```

visit <a href="https://localhost:3000">localhost:3000</a> in your browser

### Stripe Setup
* In the root directory create a file called .env
* Make an account at <a href="https://stripe.com/">stripe</a>
* Save you public and secret keys in the .env like so:

```
PUB_KEY = "public key"
SEC_KEY = "secret key"
```


### Authors
Tanner Eustice, Some guy in Bali

### License
MIT &copy; 2017
