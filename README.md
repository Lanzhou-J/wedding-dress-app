# Beautiful in White - T2A2

# Identification of the problem:

# Why is it a problem that needs solving:

### A link (URL) to my deployed app:
https://beautiful-in-white.herokuapp.com/

### A link to the GitHub repository:
https://github.com/Lanzhou-J/wedding-dress-app

# Description of my marketplace app:

## Purpose

## Functionality and features:
### Functionality 1: Navigation Bar and Footer Bar

### Functionality 2: Multilingual versions of homepage

### Functionality 3: 

### Feature 1: 

### Feature 2: 

### Feature 3: 

## Sitemap

The website simply has all pages link to each other via the navigation bar. A sitemap for the website is presented below.

![Sitemap](app/assets/images/docs/wedding_app_sitemap.png)

## Screenshots

##### Home page
![screenshot_home]()

##### Login and Signup page
![screenshot_login]()

##### Wedding dresses index page
![screenshot_index]()

##### Wedding dress show page
![screenshot_index]()

##### Shops index page
![screenshot_shop]()

##### Shop show page
![screenshot_shop]()

## Target audience

The target audience for the website are:

1. Brides
2. Wedding dress Designers
3. Bridal shop owners

## Tech stack
- Ruby on Rails
- HTML is used to structure the content of all the webpages.
- Bootstrap and Scss is used to style the webpages.
- Heroku is used to deploy the rails app.

# User stories for my app
- As a Bridal wedding dresses shop owner (merchant) or designer, I want to use this platform to display all my products including wedding dresses and accessories, and do business online. I also want to take orders and communicate with customers for designing custom wedding dresses.

- As a customer, I want to use this platform to find wedding dresses that suit me and communicate with other brides, see their comments and ratings of a particular product. I also want to add a product to a cart so that I can purchase multiple items at once.

- As a bride who has already had the wedding, I would use the platform to sell preowned, used and second-hand wedding dresses.

# Wireframes:
Wireframes were created for each page during the planning stage of the project. Wireframes are presented below. The tools that I used to create wireframes are Balsamic wireframes Desktop and Procreate app on ipad.

##### Homepage
![wireframe_1]()

##### Wedding dresses index page
![wireframe_1]()

# An ERD for my app
![erd](app/assets/images/docs/erd.png)

# Explain the different high-level components (abstractions) in the app (R15):

### Active Record:
  Active Record is one of the examples of a higher level component that is used in my app.
  
   - ```ActiveRecord::Base``` is used when creating the classes that will be stored in the database tables. According to [RailsGuides](https://guides.rubyonrails.org/active_record_basics.html), in Rails 6.0.3, all models will inherit from ApplicationRecord (an abstract class).
      ```Ruby
      class Dress < ApplicationRecord
      end
      ```
      and ```ApplicationRecord``` inherits from ```ActiveRecord::Base``` (```ActiveRecord``` module with the ```Base``` class inside of it). 
      ```Ruby
      class ApplicationRecord < ActiveRecord::Base
        self.abstract_class = true
      end
      ```
  - ```ActiveRecord::Migration``` is used for creating, updating, and deleting tables from the database. It can migrate schema information to the database of the application. [Link](https://medium.com/@lukepierotti/querying-in-activerecord-why-sql-is-still-important-91ac014ab57)

  ActiveRecord module provides us with many functionalities, e.g. we can establish a connection to the database; create database tables; define associations between different tables; establish an ORM(object relational mapping) between Ruby classes/objects/attributes and the tables/rows/columns in the corresponding database. [Link](https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Active_Records.php) Active Record also automatically creates methods to allow our applications to read and manipulate data that is stored in the tables (CRUD functions: create, read, update and delete records). Actually ActiveRecord runs SQL queries, it facilitates programmers by bundling common SQL query methods into simple ruby class methods such as `Dress.create()`, `Dress.find()` etc.

### Action View
In Rails, when we create forms in .erb view files we don't need to use html tags (e.g.`<label>`, `<form>` etc.) anymore. Instead, I used methods (e.g. `.label`, `.text_field`, `.file_field` etc.) That is achieved by Action View, a built-in module that is responsible to look for and render our views. Action View can also provide many helpers (e.g. Form helpers that facilitates programmers to create HTML forms). [Link](https://medium.com/datadriveninvestor/what-is-action-view-e5455f79f251) 

Normally the final HTML output is consisted of 3 parts: `Templates`, `Partials` and `Layouts`. [RailsGuides](https://guides.rubyonrails.org/action_view_overview.html)
 - Templates: Rails supports different template systems, for example, ERB template, an HTML file using ERB template system has `.html.erb` as a file extension. Within the ERB template Ruby code is included in `<% %>`(does not return an output) or `<%= %>`(used when return output) tags.
 - Partials: For example, I used `_card.html.erb` to render dress cards in my dresses index page. Similarly I used `_shopcard.html.erb` to render shop cards in the shops index page. Partial templates can break the rendering process into smaller chunks and reuse them in the app.
 - Layouts: They are used to render view templates that are repeatedly used in the app. For example, a navigation bar or a footer bar that is used across all pages in the rails app.

### Active Storage

Nowadays nearly all the web apps allow users to upload files such as images. By doing so, users are able to custom their avatar image, or update a picture of a product for sell. ActiveStorage is a module that allows app users to upload files easily. It facillitates uploading files to a cloud storage service such as Amazon S3, Google Cloud Storage, Microsoft Azure and attach the files to objects that Active Record created.

In my app I declared Active Storage services (`local`, `test`, and `amazon`) in `config/storage.yml`. I used Amazon S3 to store images uploaded by users in production environment (in `production.rb`).
```Ruby
# Store files on Amazon S3
config.active_storage.service = :amazon
```
I use local disk-based service for development environment (in `development.rb`)
```Ruby
  # Store uploaded files on the local file system
  config.active_storage.service = :local
```
And I used test service for testing.
```Ruby
# Store uploaded files on the local file system in a temporary directory.
config.active_storage.service = :test
```
In order to attach pictures to records, I used `has_one_attached` macro both in `models/dress.rb` and `models/shop.rb`. It sets up a one-to-one relationship between records and files uploaded. [RailsGuides](https://guides.rubyonrails.org/v5.2.0/active_storage_overview.html)

# Third party services:
- Heroku: It is used to deploy this application.
- Amazon S3: S3 is for data storage that can be accessed via a url. In this app, it is used to store images that are uploaded (in production environment).
- Stripe: It is used for making and receiving payments for users of the app. It handles PCI compliance for us.
- Geocoding: A third party API used for converting addresses into geographic coordinates (longitude and latitude).
- Mapbox: Used with Geocoding, use the longitude and latitude value of the address of a shop to show the location of it on a map.
- Devise: A ruby gem used for user authentication.
- Cancancan: A ruby gem used for user authorization.
- RailsAdmin: A Rails engine that provides a clean interface for managing data that can be used by admins of the app.

# Describe my projects models in terms of the relationships they have with each other.

# Discuss the database relations to be implemented:

# Database schema design:

# Project Management
## Trello

Tasks were allocated and tracked using Trello. Trello board screenshots presented below:

##### 16/05/2020
![trello_1](app/assets/images/docs/20200516Trelloboard.png)

##### 20/05/2020
![trello_2]()


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# This action returns all of the listing records and sends them to the index view