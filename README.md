Rails-4-Working-Contact-Form
============================

This is a bare Rails 4 application with a working home page and a working Contact form with basic validations appearing in a list above the form on submit. 

To run it, you’ll need to modify `database.yml` to include your database name and password. If you aren’t using Postgres for dev, you’ll also need to modify the Gemfile and make changes to database.yml for the gem you’re using.  

To send the form from your dev and production, modify `application.rb`, `environments/development.rb` and `mailers/notifications_mailer.erb`. These files just need to have your email address, domain and password values instead of the generic placeholders included.


How to customize
----------------

- The form page is in __app/views/messages/new.html.erb__. It includes the form as a partial.

- The actual form is in __app/views/messages/_form.html.erb__

- The form currently redirects on submit to the home page with a notice. Change this in __app/controllers/messages_controller.rb__

- fields and errors are defined in __app/models/message.rb__

- Change the content or format of the sent message in __app/views/notifications_mailer/new_message_html.erb__
