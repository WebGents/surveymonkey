# SurveyMonkeyApi

Actions with surveys in SurveyMonkey system.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'survey_monkey_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install survey_monkey_api

## Usage

### Preparation

Add this line to your application's ENV storage:

```ruby
SURVEY_MONKEY_TOKEN=your-token
```

### Create SurveyMonkeyApi object

```ruby
  require 'surveymonkey'
  client = SurveyMonkeyApi::Client.new
```

### User information

Request for getting user's information is #me.

```ruby
  client.me
```

#### Responces

```ruby
  {
    "username"=>"SomeUsername",
    "scopes"=>{"available"=>["users_read", "surveys_read", "collectors_read", "collectors_write", "contacts_read", "contacts_write", "surveys_write", "responses_read", "responses_read_detail", "responses_write", "groups_read", "webhooks_read", "webhooks_write", "library_read"], "granted"=>["collectors_read", "contacts_write", "contacts_read", "surveys_write", "surveys_read", "collectors_write", "users_read"]},
    "first_name"=>nil,
    "last_name"=>nil,
    "account_type"=>"premier_annual",
    "language"=>"da",
    "email_verified"=>false,
    "email"=>"johndoe@gmail.com",
    "href"=>"https://api.surveymonkey.net/v3/users/me",
    "date_last_login"=>"2017-12-21T13:44:01.470000+00:00",
    "sso_connections"=>[],
    "date_created"=>"2016-05-11T09:48:00+00:00",
    "id"=>"00000001"
  }
```

### Surveys

Request for getting list of surveys is #surveys.

```ruby
  client.surveys
```

#### Responces

```ruby
  {
    "per_page"=>50,
    "total"=>99,
    "data"=>[
      {"href"=>"https://api.surveymonkey.net/v3/surveys/000000001", "nickname"=>"", "id"=>"000000001", "title"=>"First"},
      {"href"=>"https://api.surveymonkey.net/v3/surveys/000000002", "nickname"=>"", "id"=>"000000002", "title"=>"Second"}
    ],
    "page"=>1,
    "links"=>{
      "self"=>"https://api.surveymonkey.net/v3/surveys?page=1&per_page=50",
      "last"=>"https://api.surveymonkey.net/v3/surveys?page=2&per_page=50",
      "next"=>"https://api.surveymonkey.net/v3/surveys?page=2&per_page=50"
    }
  }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kortirso/surveymonkey.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
