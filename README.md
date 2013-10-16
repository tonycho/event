The demo is hosted at http://event2vive.herokuapp.com/admin/
login:
u: admin@2vive.com
p: demo

This app is to manage events utilizing Padrino for learning purposes.

Padrino, Sinatra, SqlLite3, and Twitter bootstrap have been used in this project.

Feel free to try it out locally by following the instructions below


Instructions:
event-admin
===========

    git clone git@github.com:abovegem/event-admin.git
    cd event-admin
    bundle install
    padrino rake ar:create
    padrino rake ar:migrate
    padrino rake seed
    padrino start
    open up your browser and go to localhost:300
    


