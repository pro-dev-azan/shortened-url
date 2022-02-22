# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Table of Contents
* [What has been implemented](#implemented)
* [Technical details (packages and style guide followed)](#TechDetails)
* [Known Bugs](#bugs)
* [What are the future improvements](#improvements)
* [Setup guide](#guide)
* [Demo](#demo)

# <a name="implemented"></a>What has been implemented

* Users can create a shorter URL by inserting a long URL.
* Users can see the status of the URL (Active, Expired).
* Users can see the number of removed characters from the URL.
* User has 2 type of roles i.e Admin, Regular User.
* Admin has the ability to access the admin panel where admin can update the other users email addresses, password, and role.
* Regular users have access to the perform only CRUD operations.
* Admin users can also change the status of shortened URLs.

# <a name="TechDetails"></a>Technical details (packages and style guide followed)

* ```Ruby 2.7.3 and Rails 6```
* ```DEVISE``` for user authentication 
* ```Rails Admin``` for admin console
* ```Parsley``` for frontend validation
* ```Bootstrap 5``` for frontend design
* ```Pry``` for debugging

# <a name="bugs"></a>Known Bugs

* In Rails admin while updating the user password is required.
* Forget password functionality is not working 

# <a name="improvements"></a>What are the future improvements

* Known bugs can be fixed
* Can improve UI
* User email validation

# <a name="guide"></a>Setup Guide

### Check out the repository
```git clone git@github.com:organization/project-name.git```

Things you may want to cover:
* RVM
Make sure you have following required packages installed:
  * ```curl```
  * ```gpg2```

And then run:

```\curl -sSL https://get.rvm.io | bash -s stable```

* Ruby version

```rvm install ruby-2.7.3```

* System dependencies

```gem install rails```

```gem install pg -v ‘1.2.3’ -- --with-cflags=“-Wno-error=implicit-function-declaration”```

* Configuration

```bundle install```

* Database creation

```rails db:setup```

* Database initialization

```rails db:migrate```

* Deployment instructions

Add a ```HOST``` in ```application.yml``` for local setup ```HOST: 'http:localhost:3000'```

### Start the app

Start the Rails app by using ```rails db:seed```. 

You're ready to localize your app:

```rails server```

You can find your app now by pointing your browser to [http://localhost:3000](http://localhost:3000) or on Demo site. If everything worked you can log into app with demo login credentials:

User: ```abc@admin.com```
Password: ```123456``` 
 
# <a name="demo"></a>Demo

* Heroku Deployed URL ```https://url-shortener-app-porject.herokuapp.com/```
