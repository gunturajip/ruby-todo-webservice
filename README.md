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

### TESTING REST API WITHOUT AUTH

- GET All Todos:
    - Endpoint:
    ```
        http :3000/todos
    ```
    - Result:
    ```
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.14, sql.active_record;dur=1.28, process_action.action_controller;dur=2.35
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: da463c09-9953-4bc9-bf6f-8e4c1fa1e74c
        X-Runtime: 0.004486
        X-XSS-Protection: 0

        []
    ```
- GET Detail Todo:
    - Endpoint:
    ```
        http :3000/todos/1
    ```
    - Result:
    ````
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"92bc58783b858112f279b0dfb4e5a96e"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.24, sql.active_record;dur=0.75, instantiation.active_record;dur=0.05, process_action.action_controller;dur=1.85
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: eee69705-a7d3-4926-8a97-c516f0f00538
        X-Runtime: 0.004050
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T00:31:53.562Z",
            "created_by": "1",
            "id": 1,
            "title": "Beethoven",
            "updated_at": "2023-05-16T00:32:13.818Z"
        }
    ````
- POST Todo:
    - Endpoint:
    ```
        http POST :3000/todos title=Guntur created_by=1
    ```
    - Result:
    ```
        HTTP/1.1 201 Created
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"c38c5fb056f786ccf6a56459f2f46cf0"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: sql.active_record;dur=14.67, start_processing.action_controller;dur=0.30, unpermitted_parameters.action_controller;dur=0.25, process_action.action_controller;dur=45.39
        Transfer-Encoding: chunked
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: 4cde64dc-97f3-47e3-92b4-0374d805190b
        X-Runtime: 0.049902
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T00:31:53.562Z",
            "created_by": "1",
            "id": 1,
            "title": "Guntur",
            "updated_at": "2023-05-16T00:31:53.562Z"
        }
    ```

- PUT Todo:
    - Endpoint:
    ```
        http PUT :3000/todos/1 title=Beethoven
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.42, sql.active_record;dur=16.11, instantiation.active_record;dur=0.12, unpermitted_parameters.action_controller;dur=0.27, process_action.action_controller;dur=36.52
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: d8c97d2d-85de-4b0a-828c-8b9092acd0f3
        X-Runtime: 0.040641
        X-XSS-Protection: 0
    ```
- DELETE Todo:
    - Endpoint:
    ```
        http DELETE :3000/todos/1
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.25, sql.active_record;dur=20.72, instantiation.active_record;dur=0.14, process_action.action_controller;dur=69.97
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: 1b3e588c-c924-465c-bda6-7c68474985d1
        X-Runtime: 0.072565
        X-XSS-Protection: 0
    ```