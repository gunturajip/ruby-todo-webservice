# README

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

## COMPLETE GUIDE TO CREATE BASIC REST API USING RUBY, RAILS, AND POSTGRESQL

### INSTALL WSL FOR DEVELOPING BACKEND WEB USING RAILS 5

- Open Microsoft Store, search for Ubuntu, and install it
- Type Ubuntu on Windows Search and open it
- Finish Ubuntu installation process and remember your username and password
- Now reopen Ubuntu and type the following series of command prompt (https://gorails.com/setup/windows/10):
```
    1. sudo apt-get update
    2. sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
    3. git clone https://github.com/excid3/asdf.git ~/.asdf
    4. echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
    5. echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
    6. echo 'legacy_version_file = yes' >> ~/.asdfrc
    7. echo 'export EDITOR="code --wait"' >> ~/.bashrc
    8. exec $SHELL

    (DONE INSTALLING ASDF AS A VERSION MANAGER)

    9. asdf plugin add ruby
    10. asdf install ruby 3.2.2
    11. asdf global ruby 3.2.2
    12. gem update --system (optional)
    13. which ruby
    14. ruby -v

    (DONE INSTALLING RUBY AS A PROGRAMMING LANGUAGE)

    15. git config --global color.ui true
    16. git config --global user.name "YOUR NAME IN GITHUB ACCOUNT"
    17. git config --global user.email "YOUR EMAIL IN GITHUB ACCOUNT"

    (DONE INTEGRATING WITH GITHUB AND SIMPLY ENTER YOUR GITHUB ACCESS TOKEN ONCE EVERYTIME YOU OPEN UP UBUNTU WSL TO PUSH OR DO SOMETHING TO COLLABORATE WITH GITHUB)

    18. gem install rails -v 5.0.1
    19. rails -v

    (DONE INSTALLING RAILS AS A WEB FRAMEWORK)

    20. sudo apt install postgresql libpq-dev
    21. sudo passwd postgres (and type your own postgresql password)
    22. sudo service postgresql start
    23. sudo -u postgres psql

    (DONE INSTALLING POSTGRESQL AS A DATABASE)
```
- Enjoy your backend development using WSL :)
