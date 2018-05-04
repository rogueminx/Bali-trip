# Store Fix Up
Ruby/ Rails Independent Friday Project

## May 4, 2018

#### By Anna-Marie Cooper

## Technologies Used
  * Ruby, Rails, Ajax

## Description

Debugging a web-app previously created by another coder.

##### List of bugs and refactoring tasks

- [x] Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
- [x] Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
- [x] Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

- [x] Ensure that users can't order a negative number of items.
- [x] Add flash messages for signing up, signing in and signing out.
- [x] Add product update and delete functionality for admins.
- [x] Add admin flash messages for adding, updating and deleting products.
- [x] Add Paperclip for product image upload.
- [x] Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
- [ ] Add product validations.
- [ ] Add Stripe so users can pay when finalizing orders.
- [ ] Add password validations to ensure a user's password is sufficiently complex.
- [x] Add admin links to navbar (and other spots) so admins can easily add, update and delete products.
- [ ] Fix the row height for products, which can quickly become uneven.
- [ ] Add integration testing for AJAX functionality.
- [ ] Add further AJAX functionality where it might be useful.


## Setup/Installation Requirements
* Open terminal
* Move to desired folder
* Type  _`$ git clone https://github.com/dlewiski/adopt-an-animal.git`_
* Type _`$ cd adopt-an-animal`_ to move to directory.
* Type _`bundle install`_ to install all necessary gems
* Type _`rails db:create`_ to create the database.
* Type _`rails db:migrate`_ to run migrations for database
* To view the website, type : _`$ rails server `_ and navigate to `http://localhost:3000/`

## License
  Copyright (c) 2018 Anna-Marie Cooper

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
