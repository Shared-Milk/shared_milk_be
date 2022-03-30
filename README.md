# Shared Milk Backend Application

![languages](https://img.shields.io/github/languages/top/Shared-Milk/shared_milk_be?color=red)
![PRs](https://img.shields.io/github/issues-pr-closed/Shared-Milk/shared_milk_be)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov) <!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/contributors-7-orange.svg?style=flat)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->


## Background and Description

Shared Milk is a collobarotive application, inspired by a father who watched the struggle of women in his life who were unable to produce enough breast milk for their child and the issues, mentally and physically, that came with this. Shared Milk is a platform to connect mothers who are under-producing to mothers who are over-producing. Shared Milk does not store, ship or touch the product. We simply connect mothers, cutting out expensive milk banks and providing food to children in need. The project is structured using SOA or Service Oriented Architecture also known as microservices. The backend side is a rails application, that uses GraphQL to expose two API endpoints, store user data to the database and allows the frontend to retrieve users(who are over-producing milk) and present that data based on a specific location. 


[Frontend Application](https://github.com/Shared-Milk/shared_milk_ui)

## Schema 

<img width="581" alt="Screen Shot 2022-03-30 at 9 51 48 AM" src="https://user-images.githubusercontent.com/90224504/160850784-dcb0ea33-8c24-427e-82c1-aeffb885b50e.png">


## Learning Goals

- Structure GraphQL API endpoints
- Implement Circle CI for continuous integration/testing
- Utilize Continuous Deployment with GitHub and Heroku
- Build APIs that return JSON responses 
- Refactor code for better code organization/readability 
- Create an application with mircroservices for a seamless, separate frontend view and backend database. 
- Practice good project management by using project boards, participating in daily stand-ups and team retros 
- Utilize quality workflow practices: small commits, descriptive pull requests, and code reviews 
- Write thorough, understandable documentation



## Requirements and Setup (for Mac):

### Ruby and Rails
- Ruby Version 2.7.4
- Rails Version 5.2.7

### Gems Utilized
- RSpec 
- Pry
- SimpleCov
- Shoulda-Matchers 
- Factory_Bot_Rails
- Faker
- Webmock
- VCR
- jquery-rails
- rspec_junit_formatter
- Orderly
- graphql
- graphiql

## Setup
1. Clone this repository:
On your local machine open a terminal session and enter the following commands for SSH or HTTPS to clone the repositiory.


- using ssh key <br>
```shell
$ git clone git@github.com:Shared-Milk/shared_milk_be.git
```

- using https <br>
```shell
$ git clone https://github.com/Shared-Milk/shared_milk_be
```

Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory:<br>
In terminal, use `$cd` to navigate to the backend Application project directory.

```shell
$ cd shared_milk_be
```

3. Install required Gems utilizing Bundler: <br>
In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.

```shell
$ gem install bundler
```

If Bundler is already installed or after it has been installed, run the following command.

```shell
$ bundle install
```

There should be be verbose text diplayed of the installation process that looks similar to below. (this is not an actual copy of what will be output).

```shell
$ bundle install
Using rake 13.0.6
Using concurrent-ruby 1.1.9
Using i18n 1.9.1
Using minitest 5.15.0
Using thread_safe 0.3.6
Using tzinfo 1.2.9
Using activesupport 5.2.6
Using builder 3.2.4
Using erubi 1.10.0
Using mini_portile2 2.7.1
Using racc 1.6.0
Using nokogiri 1.13.1
Using rails-dom-testing 2.0.3
Using crass 1.0.6
Using loofah 2.13.0
Using rails-html-sanitizer 1.4.2
Using actionview 5.2.6
Using rack 2.2.3
Using rack-test 1.1.0
Using actionpack 5.2.6
Using nio4r 2.5.8
Using websocket-extensions 0.1.5
Using websocket-driver 0.7.5
Using actioncable 5.2.6
Using globalid 1.0.0
Using activejob 5.2.6
Using mini_mime 1.1.2
Using mail 2.7.1
Using actionmailer 5.2.6
Using activemodel 5.2.6
Using arel 9.0.0
Using activerecord 5.2.6
Using marcel 1.0.2
Using activestorage 5.2.6
Using msgpack 1.4.4
Using bootsnap 1.10.3
Using bundler 2.1.4
Using byebug 11.1.3
Using coderay 1.1.3
Using diff-lcs 1.5.0
Using docile 1.4.0
Using factory_bot 6.2.0
Using method_source 1.0.0
Using thor 1.2.1
Using railties 5.2.6
Using factory_bot_rails 6.2.0
Using faker 2.19.0
Using ffi 1.15.5
Using jsonapi-serializer 2.2.0
Using rb-fsevent 0.11.1
Using rb-inotify 0.10.1
Using ruby_dep 1.5.0
Using listen 3.1.5
Using pg 1.3.1
Using pry 0.14.1
Using puma 3.12.6
Using sprockets 4.0.2
Using sprockets-rails 3.4.2
Using rails 5.2.6
Using rspec-support 3.10.3
Using rspec-core 3.10.2
Using rspec-expectations 3.10.2
Using rspec-mocks 3.10.3
Using rspec-rails 5.1.0
Using shoulda-matchers 5.1.0
Using simplecov-html 0.12.3
Using simplecov_json_formatter 0.1.3
Using simplecov 0.21.2
Using spring 2.1.1
Using spring-watcher-listen 2.0.1

If there are any errors, verify that bundler, Rails, and your ruby environment are correctly setup.

4. Database Migration<br>
Before using the web application you will need to setup your databases locally by running the following command

```shell
$ rails db: {:drop, :create, :migrate, :seed}
```


5. Startup and Access<br>
Finally, in order to use the web app you will have to start the server locally and access the app through a web browser. 
- Start server
```shell
$ rails s
```

- Open web browser and visit link
    http://localhost:3000
    
At this point you should be taken to a page with an example JSON response for a user

## Endpoints provided 
```

- '/graphql', to get create a user and to retrieve all users for a region.

```



## **Contributors** ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/sethperna"><img src="https://avatars.githubusercontent.com/u/90224504?v=4" width="100px;" alt=""/><br /><sub><b>Seth (he/him)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=sethperna" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3ASethPerna" title="Reviewed Pull Requests">👀</a>
     </td>
       <td align="center"><a href="https://github.com/kanderson852"><img src="https://avatars.githubusercontent.com/u/89998621?v=4" width="100px;" alt=""/><br /><sub><b>Kelly (she/her)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=kanderson852" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3Akanderson852" title="Reviewed Pull Requests">👀</a>
     </td>
      <td align="center"><a href="https://github.com/EMielke76"><img src="https://avatars.githubusercontent.com/u/81482407?v=4" width="100px;" alt=""/><br /><sub><b>Eric (he/him)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=EMielke76" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3AEMielke76" title="Reviewed Pull Requests">👀</a>
     </td>
      <td align="center"><a href="https://github.com/janitastic"><img src="https://avatars.githubusercontent.com/u/76501557?v=4" width="100px;" alt=""/><br /><sub><b>Jani 'Hah-nee' (she/her)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=janitastic" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3Ajanitastic" title="Reviewed Pull Requests">👀</a>
     </td>
      <td align="center"><a href="https://github.com/lschnell8"><img src="https://avatars.githubusercontent.com/u/78449313?v=4" width="100px;" alt=""/><br /><sub><b>Lindsay (no personal preference)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=lschnell8" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3Alschnell8" title="Reviewed Pull Requests">👀</a>
     </td>
      <td align="center"><a href="https://github.com/cagallo"><img src="https://avatars.githubusercontent.com/u/78453792?v=4" width="100px;" alt=""/><br /><sub><b>Chez (she/her)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=cagallo" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3Acagallo" title="Reviewed Pull Requests">👀</a>
     </td>
      <td align="center"><a href="https://github.com/devonwigle"><img src="https://avatars.githubusercontent.com/u/88619501?v=4" width="100px;" alt=""/><br /><sub><b>Devon (she/her)</b></sub></a><br /><a href="https://github.com/Shared-Milk/shared_milk_be/commits?author=devonwigle" title="Code">💻</a> <a href="https://github.com/Shared-Milk/shared_milk_be/pulls?q=is%3Apr+author%3Adevonwigle" title="Reviewed Pull Requests">👀</a>
     </td>
    </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification.
<!--

