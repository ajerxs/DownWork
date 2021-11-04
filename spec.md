REQUIREMENTS:
    [x] Ruby on Rails Framework
    [x] One has_many
        User, Worker, Job, Client models
    [x] One belongs_to
        Job, Contract models
    [x] Two has_many through
        Worker, Job models
    [x] Includes validations for models
    [x] At least one class level scope method
        :high_paying in Job model
    [x] Standard user authentication (signup, login, logout, passwords)
    [x] Must also allow login from some other service (Facebook, Twitter, Foursquare, Github, etc)
        Facebook
    [x] Nested resource with the appropriate RESTful URLs
        Contracts in with Jobs and Workers routes
    [x] Forms should correctly display validation errors
    [x] DRY
    [x] Do not use scaffolding to build your project