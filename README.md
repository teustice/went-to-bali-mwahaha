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

### Refactored
* Made the following asynchronous
  * Add a product to the cart
  * Delete a product from the cart
  * Show product details
* Added the following admin features
  * Add a product as Admin
  * Delete a product as Admin
  * Update a product as Admin
* Added the following validations
  * Validate product quantity is >= 1
  * Validate all properties of a product on creation
  * Validate that the quantity form is not empty
* Misc
  * Updated seed file with product images
  * Added Stripe for checkout
  * Write specs for models

### Authors
Tanner Eustice, Some guy in Bali

### License
MIT &copy; 2017
