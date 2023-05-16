## COMPLETE GUIDE TO CREATE BASIC REST API USING RUBY, RAILS, AND POSTGRESQL

### ABOUT RUBY ON RAILS

Ruby on Rails (often referred to as Rails) is a popular web application framework written in the Ruby programming language. Rails follows the Model-View-Controller (MVC) architectural pattern, which separates an application into three main components: the model, the view, and the controller.

Here's a high-level overview of how Rails 7 framework works:

- Model:
Models represent the data and logic of your application. They interact with the database and handle data validation, associations, and business logic.
Rails uses an Object-Relational Mapping (ORM) tool called ActiveRecord, which provides an easy and intuitive way to work with databases. It abstracts the database interactions, allowing you to define your models and their associations using Ruby classes.
Models typically have attributes that map to database columns, and they can also define relationships with other models (one-to-one, one-to-many, many-to-many).
Rails provides convenient methods and conventions for querying and manipulating data using ActiveRecord.

- View:
Views are responsible for presenting the application's user interface. They display data to users and handle user interactions.
Rails uses a templating system called ERB (Embedded Ruby) by default, which allows you to embed Ruby code within HTML templates.
Views can access data provided by the controller and display it in a structured manner using HTML, CSS, and JavaScript.
Rails provides view helpers that simplify common tasks, such as generating forms, rendering partials, or handling URLs.

- Controller:
Controllers handle the incoming HTTP requests, perform the required actions, and prepare the data to be displayed in the views.
When a request is received, Rails routes it to the appropriate controller action based on the URL and HTTP verb.
Controllers retrieve data from the models, process it, and store it in instance variables accessible to the views.
Controllers also handle user input, validate data, and initiate changes in the model or other parts of the system.
After processing the request, controllers render a view or redirect to another page.

- Routing:
Rails has a powerful routing system that maps URLs to specific controller actions.
The config/routes.rb file defines the application's routes, including URL patterns and the corresponding controller actions.
Routes can be configured to handle different HTTP verbs (GET, POST, PUT, DELETE) and accept parameters from the URL.
Rails generates helper methods that simplify generating URLs and paths within the application.

- Middleware:
Rails incorporates a middleware stack that sits between the web server and the application.
Middleware components can intercept requests and responses, perform actions, modify data, or add additional functionality.
Examples of middleware include handling session management, CSRF protection, logging, caching, and more.
Middleware can be added or customized to meet specific application requirements.

- Active Support:
Active Support is a core Rails component that provides a collection of utility classes, extensions, and helpers.
It offers numerous functionalities like date and time manipulation, string manipulation, caching, internationalization support, and much more.

Active Support enriches the Ruby language and simplifies common programming tasks in Rails applications.
These are the fundamental concepts and components that make up the Rails 7 framework. Rails promotes convention over configuration, meaning it provides sensible defaults and follows established patterns, allowing developers to focus on application logic rather than repetitive boilerplate code. It also emphasizes the principle of "Don't Repeat Yourself" (DRY) to reduce duplication and increase maintainability.

### STARTING THE PROJECT

[Follow this steps first if you have not setup the environment](#install-wsl-for-developing-backend-web-using-rails-5)

- Clone this repository and with your favourite Text Editor
- Open Terminal and type ```bundle install``` to install all dependecies needed to run the project
- Enjoy the API endpoints (begin with signup and login user)

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

    18. gem install rails -v 7.0.4.3
    19. rails -v

    (DONE INSTALLING RAILS AS A WEB FRAMEWORK)

    20. sudo apt-get install httpie
    21. http --version

    (DONE INSTALLING HTTPIE AS A HTTP CLIENT FOR SENDING REQUEST JUST LIKE POSTMAN)
```
- Enjoy your backend development using WSL :)

### API ENDPOINTS

## Users

| Method | Endpoint          | Description                       |
| ------ | ----------------- | --------------------------------- |
| POST   | `/signup`         | Register a new user               |
| POST   | `/auth/login`     | Login user                        |

### Todos

| Method | Endpoint              | Description                 |
| ------ | --------------------- | --------------------------- |
| POST   | `/todos`              | Create a new todo           |
| GET    | `/todos`              | Get a list of todos         |
| GET    | `/todos/:todo_id`     | Get a specific todo         |
| PUT    | `/todos/:todo_id`     | Update a specific todo      |
| DELETE | `/todos/:todo_id`     | Delete a specific todo      |

### Items

| Method | Endpoint                               | Description                |
| ------ | -------------------------------------- | -------------------------- |
| POST   | `/todos/:todo_id/items/`               | Create a new item          |
| GET    | `/todos/:todo_id/items/`               | Get a list of items        |
| GET    | `/todos/:todo_id/items/:item_id`       | Get a specific item        |
| PUT    | `/todos/:todo_id/items/:item_id`       | Update a specific item     |
| DELETE | `/todos/:todo_id/items/:item_id`       | Delete a specific item     |

### REST API FLOW (USING HTTPIE)

- POST Signup User:
    - Endpoint:
    ```
        http :3000/signup name=asa email=asa@email.com password=foobar password_confirmation=foobar
    ```
    - Result:
    ```
        HTTP/1.1 201 Created
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"ff4612de306b9d458f42e52a6c9b0d40"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: sql.active_record;dur=17.06, start_processing.action_controller;dur=0.95, unpermitted_parameters.action_controller;dur=0.81, instantiation.active_record;dur=0.19, render.active_model_serializers;dur=0.31, process_action.action_controller;dur=1080.08
        Transfer-Encoding: chunked
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: c0912c38-1e60-4dfe-aae9-7a24829ab84d
        X-Runtime: 1.549277
        X-XSS-Protection: 0

        {
            "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0",
            "message": "Account created successfully"
        }
    ```

- POST Login User:
    - Endpoint:
    ```
        http :3000/auth/login email=asa@email.com password=foobar
    ```
    - Result:
    ```
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"8b254b04c9d53045c8fa74199766623c"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.51, unpermitted_parameters.action_controller;dur=0.65, sql.active_record;dur=2.42, instantiation.active_record;dur=0.16, render.active_model_serializers;dur=0.20, process_action.action_controller;dur=561.96
        Transfer-Encoding: chunked
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: a1759366-0bd9-4cd2-9f51-d5300e1630cf
        X-Runtime: 0.592782
        X-XSS-Protection: 0

        {
            "auth_token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0"
        }
    ```

- GET All Todos (by pagination):
    - Endpoint:
    ```
        http :3000/todos page==1 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0
    ```
    - Result:
    ```
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"d1a709cbd8b127b560ba7a44eb6ad6e0"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.28, sql.active_record;dur=52.16, instantiation.active_record;dur=3.26, render.active_model_serializers;dur=128.09, process_action.action_controller;dur=135.04
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: cf83f128-df6c-4e7f-bfa8-975292665240
        X-Runtime: 0.140130
        X-XSS-Protection: 0

        [
            {
                "created_at": "2023-05-16T00:33:19.614Z",
                "created_by": "1",
                "id": 2,
                "items": [
                    {
                        "created_at": "2023-05-16T06:24:50.636Z",
                        "done": null,
                        "id": 1,
                        "name": "Listen to Supatak",
                        "todo_id": 2,
                        "updated_at": "2023-05-16T06:24:50.636Z"
                    }
                ],
                "title": "Guntur",
                "updated_at": "2023-05-16T00:33:19.614Z"
            },
            {
                "created_at": "2023-05-16T00:33:26.799Z",
                "created_by": "1",
                "id": 3,
                "items": [],
                "title": "Aji",
                "updated_at": "2023-05-16T00:33:26.799Z"
            },
            {
                "created_at": "2023-05-16T00:33:33.776Z",
                "created_by": "1",
                "id": 4,
                "items": [],
                "title": "Pratama",
                "updated_at": "2023-05-16T00:33:33.776Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.611Z",
                "created_by": "1",
                "id": 5,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.686Z",
                        "done": false,
                        "id": 2,
                        "name": "ad",
                        "todo_id": 5,
                        "updated_at": "2023-05-16T06:34:46.686Z"
                    }
                ],
                "title": "numquam",
                "updated_at": "2023-05-16T06:34:46.611Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.713Z",
                "created_by": "1",
                "id": 6,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.737Z",
                        "done": false,
                        "id": 3,
                        "name": "ad",
                        "todo_id": 6,
                        "updated_at": "2023-05-16T06:34:46.737Z"
                    }
                ],
                "title": "aliquam",
                "updated_at": "2023-05-16T06:34:46.713Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.763Z",
                "created_by": "1",
                "id": 7,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.791Z",
                        "done": false,
                        "id": 4,
                        "name": "sunt",
                        "todo_id": 7,
                        "updated_at": "2023-05-16T06:34:46.791Z"
                    }
                ],
                "title": "nostrum",
                "updated_at": "2023-05-16T06:34:46.763Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.820Z",
                "created_by": "1",
                "id": 8,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.847Z",
                        "done": false,
                        "id": 5,
                        "name": "laudantium",
                        "todo_id": 8,
                        "updated_at": "2023-05-16T06:34:46.847Z"
                    }
                ],
                "title": "quos",
                "updated_at": "2023-05-16T06:34:46.820Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.875Z",
                "created_by": "1",
                "id": 9,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.899Z",
                        "done": false,
                        "id": 6,
                        "name": "vitae",
                        "todo_id": 9,
                        "updated_at": "2023-05-16T06:34:46.899Z"
                    }
                ],
                "title": "expedita",
                "updated_at": "2023-05-16T06:34:46.875Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.926Z",
                "created_by": "1",
                "id": 10,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.944Z",
                        "done": false,
                        "id": 7,
                        "name": "unde",
                        "todo_id": 10,
                        "updated_at": "2023-05-16T06:34:46.944Z"
                    }
                ],
                "title": "enim",
                "updated_at": "2023-05-16T06:34:46.926Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.961Z",
                "created_by": "1",
                "id": 11,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:46.975Z",
                        "done": false,
                        "id": 8,
                        "name": "commodi",
                        "todo_id": 11,
                        "updated_at": "2023-05-16T06:34:46.975Z"
                    }
                ],
                "title": "doloribus",
                "updated_at": "2023-05-16T06:34:46.961Z"
            },
            {
                "created_at": "2023-05-16T06:34:46.991Z",
                "created_by": "1",
                "id": 12,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.006Z",
                        "done": false,
                        "id": 9,
                        "name": "reprehenderit",
                        "todo_id": 12,
                        "updated_at": "2023-05-16T06:34:47.006Z"
                    }
                ],
                "title": "praesentium",
                "updated_at": "2023-05-16T06:34:46.991Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.024Z",
                "created_by": "1",
                "id": 13,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.041Z",
                        "done": false,
                        "id": 10,
                        "name": "et",
                        "todo_id": 13,
                        "updated_at": "2023-05-16T06:34:47.041Z"
                    }
                ],
                "title": "iure",
                "updated_at": "2023-05-16T06:34:47.024Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.061Z",
                "created_by": "1",
                "id": 14,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.080Z",
                        "done": false,
                        "id": 11,
                        "name": "dolores",
                        "todo_id": 14,
                        "updated_at": "2023-05-16T06:34:47.080Z"
                    }
                ],
                "title": "quam",
                "updated_at": "2023-05-16T06:34:47.061Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.114Z",
                "created_by": "1",
                "id": 15,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.132Z",
                        "done": false,
                        "id": 12,
                        "name": "dicta",
                        "todo_id": 15,
                        "updated_at": "2023-05-16T06:34:47.132Z"
                    }
                ],
                "title": "omnis",
                "updated_at": "2023-05-16T06:34:47.114Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.151Z",
                "created_by": "1",
                "id": 16,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.169Z",
                        "done": false,
                        "id": 13,
                        "name": "dolorum",
                        "todo_id": 16,
                        "updated_at": "2023-05-16T06:34:47.169Z"
                    }
                ],
                "title": "corrupti",
                "updated_at": "2023-05-16T06:34:47.151Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.188Z",
                "created_by": "1",
                "id": 17,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.205Z",
                        "done": false,
                        "id": 14,
                        "name": "enim",
                        "todo_id": 17,
                        "updated_at": "2023-05-16T06:34:47.205Z"
                    }
                ],
                "title": "fugit",
                "updated_at": "2023-05-16T06:34:47.188Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.224Z",
                "created_by": "1",
                "id": 18,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.241Z",
                        "done": false,
                        "id": 15,
                        "name": "repellat",
                        "todo_id": 18,
                        "updated_at": "2023-05-16T06:34:47.241Z"
                    }
                ],
                "title": "corporis",
                "updated_at": "2023-05-16T06:34:47.224Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.259Z",
                "created_by": "1",
                "id": 19,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.277Z",
                        "done": false,
                        "id": 16,
                        "name": "est",
                        "todo_id": 19,
                        "updated_at": "2023-05-16T06:34:47.277Z"
                    }
                ],
                "title": "maxime",
                "updated_at": "2023-05-16T06:34:47.259Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.297Z",
                "created_by": "1",
                "id": 20,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.314Z",
                        "done": false,
                        "id": 17,
                        "name": "sunt",
                        "todo_id": 20,
                        "updated_at": "2023-05-16T06:34:47.314Z"
                    }
                ],
                "title": "error",
                "updated_at": "2023-05-16T06:34:47.297Z"
            },
            {
                "created_at": "2023-05-16T06:34:47.334Z",
                "created_by": "1",
                "id": 21,
                "items": [
                    {
                        "created_at": "2023-05-16T06:34:47.355Z",
                        "done": false,
                        "id": 18,
                        "name": "odit",
                        "todo_id": 21,
                        "updated_at": "2023-05-16T06:34:47.355Z"
                    }
                ],
                "title": "earum",
                "updated_at": "2023-05-16T06:34:47.334Z"
            }
        ]
    ```

- GET a Todo:
    - Endpoint:
    ```
        http :3000/todos/2 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ````
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"9a0651b754e130d7e33c5fbef71d7751"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.61, sql.active_record;dur=8.08, instantiation.active_record;dur=0.54, render.active_model_serializers;dur=8.23, process_action.action_controller;dur=18.02
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: 60a9ae39-71a8-4ea5-b132-9100cf7ef167
        X-Runtime: 0.028521
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T00:33:19.614Z",
            "created_by": "1",
            "id": 2,
            "items": [
                {
                    "created_at": "2023-05-16T06:24:50.636Z",
                    "done": null,
                    "id": 1,
                    "name": "Listen to Supatak",
                    "todo_id": 2,
                    "updated_at": "2023-05-16T06:24:50.636Z"
                }
            ],
            "title": "Guntur",
            "updated_at": "2023-05-16T00:33:19.614Z"
        }
    ````

- POST a Todo:
    - Endpoint:
    ```
        http POST :3000/todos title=Supatak created_by=1 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 201 Created
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"6bd8976994278356bd719528f0e015db"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.30, sql.active_record;dur=16.21, instantiation.active_record;dur=0.09, unpermitted_parameters.action_controller;dur=0.24, render.active_model_serializers;dur=2.40, process_action.action_controller;dur=22.09
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: eafc46d2-d3fe-4866-9c9a-d2f1f236e07a
        X-Runtime: 0.026325
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T10:53:41.175Z",
            "created_by": "1",
            "id": 105,
            "items": [],
            "title": "Supatak",
            "updated_at": "2023-05-16T10:53:41.175Z"
        }
    ```

- PUT a Todo:
    - Endpoint:
    ```
        http PUT :3000/todos/2 title='Guntur Aji' Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.52, sql.active_record;dur=22.31, instantiation.active_record;dur=0.65, unpermitted_parameters.action_controller;dur=1.58, process_action.action_controller;dur=32.45
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: f8345491-a4c6-4d32-917f-174bbe2fc5fa
        X-Runtime: 0.041398
        X-XSS-Protection: 0
    ```

- DELETE a Todo:
    - Endpoint:
    ```
        http DELETE :3000/todos/10 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.35, sql.active_record;dur=32.39, instantiation.active_record;dur=0.38, process_action.action_controller;dur=37.05
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: 10f84582-9531-4d66-8561-66c175548194
        X-Runtime: 0.042849
        X-XSS-Protection: 0
    ```

- GET All Items of a Todo:
    - Endpoint:
    ```
        http :3000/todos/2/items Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"e429a1b9e5d1b085f9c762f539dcfdb0"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.60, sql.active_record;dur=6.19, instantiation.active_record;dur=0.54, render.active_model_serializers;dur=1.43, process_action.action_controller;dur=14.53
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: c55fe07e-8f77-47ee-83d1-60c5212f83a3
        X-Runtime: 0.025437
        X-XSS-Protection: 0

        [
            {
                "created_at": "2023-05-16T06:24:50.636Z",
                "done": null,
                "id": 1,
                "name": "Listen to Supatak",
                "todo_id": 2,
                "updated_at": "2023-05-16T06:24:50.636Z"
            },
            {
                "created_at": "2023-05-16T11:02:33.378Z",
                "done": null,
                "id": 102,
                "name": "Listen to Sukucing",
                "todo_id": 2,
                "updated_at": "2023-05-16T11:02:33.378Z"
            }
        ]
    ```

- GET an Item of a Todo:
    - Endpoint:
    ```
        http :3000/todos/2/items/1 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 200 OK
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"646499e988b651d9380150b1b6804e82"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.27, sql.active_record;dur=4.17, instantiation.active_record;dur=0.30, render.active_model_serializers;dur=0.52, process_action.action_controller;dur=8.35
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: f4074847-12b7-4361-ad5d-2c185529fdb0
        X-Runtime: 0.013057
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T06:24:50.636Z",
            "done": null,
            "id": 1,
            "name": "Listen to Supatak",
            "todo_id": 2,
            "updated_at": "2023-05-16T06:24:50.636Z"
        }
    ```

- POST an Item of a Todo:
    - Endpoint:
    ```
        http POST :3000/todos/2/items name='Listen to Sukucing' Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 201 Created
        Cache-Control: max-age=0, private, must-revalidate
        Content-Type: application/json; charset=utf-8
        ETag: W/"e30e0a4040b2fa27a3c8de89bc85944f"
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.32, sql.active_record;dur=15.64, instantiation.active_record;dur=0.33, unpermitted_parameters.action_controller;dur=0.37, render.active_model_serializers;dur=3.94, process_action.action_controller;dur=23.65
        Transfer-Encoding: chunked
        Vary: Accept
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: d91c7305-371b-4af2-9788-38b7fdb5c96d
        X-Runtime: 0.036999
        X-XSS-Protection: 0

        {
            "created_at": "2023-05-16T00:33:19.614Z",
            "created_by": "1",
            "id": 2,
            "items": [
                {
                    "created_at": "2023-05-16T06:24:50.636Z",
                    "done": null,
                    "id": 1,
                    "name": "Listen to Supatak",
                    "todo_id": 2,
                    "updated_at": "2023-05-16T06:24:50.636Z"
                },
                {
                    "created_at": "2023-05-16T11:02:33.378Z",
                    "done": null,
                    "id": 102,
                    "name": "Listen to Sukucing",
                    "todo_id": 2,
                    "updated_at": "2023-05-16T11:02:33.378Z"
                }
            ],
            "title": "Guntur Aji",
            "updated_at": "2023-05-16T10:57:36.849Z"
        }
    ```

- PUT an Item of a Todo:
    - Endpoint:
    ```
        http PUT :3000/todos/2/items/1 name='Listen to Sugandhi' Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.26, sql.active_record;dur=32.53, instantiation.active_record;dur=0.26, unpermitted_parameters.action_controller;dur=0.24, process_action.action_controller;dur=36.75
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: df15cb02-3808-43bd-8f17-1ad616b3d76f
        X-Runtime: 0.040527
        X-XSS-Protection: 0
    ```

- DELETE an Item of a Todo:
    - Endpoint:
    ```
        http DELETE :3000/todos/2/items/1 Accept:'application/vnd.todos.v1+json' Authorization:'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODQzMjAzMjF9.mF6h9VBU22yFm_gADK6P_y6f9Jyz8At7Rd6S_EqaCI0'
    ```
    - Result:
    ```
        HTTP/1.1 204 No Content
        Cache-Control: no-cache
        Referrer-Policy: strict-origin-when-cross-origin
        Server-Timing: start_processing.action_controller;dur=0.24, sql.active_record;dur=13.10, instantiation.active_record;dur=0.29, process_action.action_controller;dur=16.10
        X-Content-Type-Options: nosniff
        X-Download-Options: noopen
        X-Frame-Options: SAMEORIGIN
        X-Permitted-Cross-Domain-Policies: none
        X-Request-Id: 8dc9f66e-6981-4959-b1da-3a035424b502
        X-Runtime: 0.020033
        X-XSS-Protection: 0
    ```