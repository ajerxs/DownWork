DOWN WORK:

User

    - first_name:string
    - last_name:string
    - email:string
    - password_digest:string
    - type:string (client or worker)
    - bio:text

    1) Client
        - has_many :jobs

    2) Worker
        - has_many :contracts
        - has_many :jobs, through: :contracts


Job
    - belongs_to :client
    - has_many :contracts
    - has_many :workers, through: :contracts

    - title:string
    - description:text
    - salary:decimal
    - needed_workers:integer


Contract (Join table for jobs and workers)
    - belongs_to :job
    - belongs_to :worker

    - start_date:date
    - end_date:date


REQUIREMENTS:
    [x] Ruby on Rails Framework
    [x] One has_many
    [x] One belongs_to 
    [x] Two has_many through
    [x] Includes validations for models
    [] At least one class level scope method
    [x] Standard user authentication (signup, login, logout, passwords)
    [] Must also allow login from some other service (Facebook, Twitter, Foursquare, Github, etc)
    [x] Nested resource with the appropriate RESTful URLs
    [] Forms should correctly display validation errors
    [] DRY
    [] Do not use scaffolding to build your project

PROCESS FOR BLOG
    1) Started with notes page to outline relationships between models and attributes of models.