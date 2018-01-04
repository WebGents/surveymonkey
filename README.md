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
    per_page - Count of objects rendered per page, optional
    page - Page ID, optional

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

### Survey

Request for getting survey's information #survey.

```ruby
  client.survey(survey_id)
```
    survey_id - Survey ID, required

### Survey in details

Request for getting survey's information #survey_with_details.

```ruby
  client.survey_with_details(survey_id)
```
    survey_id - Survey ID, required

### SurveyResponses

Request for getting list of survey responses is #responses.

```ruby
  client.responses(survey_id)
```
    per_page - Count of objects rendered per page, optional
    page - Page ID, optional

### SurveyResponse

Request for getting survey response's information is #response.

```ruby
  client.response(survey_id, response_id)
```

#### Responces

```ruby
  {
    "total_time"=>62,
    "href"=>"https://api.surveymonkey.net/v3/surveys/00000002/responses/0000000001",
    "custom_variables"=>{"respondent"=>""},
    "ip_address"=>"2.110.189.144",
    "id"=>"0000000001",
    "logic_path"=>{},
    "date_modified"=>"2017-03-24T09:09:28+00:00",
    "response_status"=>"completed",
    "custom_value"=>"",
    "analyze_url"=>"https://www.surveymonkey.com/analyze/browse/ddsfdsf?respondent_id=0000000001",
    "page_path"=>[],
    "recipient_id"=>"",
    "collector_id"=>"",
    "date_created"=>"2017-03-24T09:08:26+00:00",
    "survey_id"=>"00000002",
    "collection_mode"=>"default",
    "edit_url"=>"https://www.surveymonkey.com/r/?sm=fdsdfsdf",
    "metadata"=>{}
  }
```

### SurveyResponse in details

Request for getting survey response's information in details is #response_with_details.

```ruby
  client.response_with_details(survey_id, response_id)
```

#### Responces

```ruby
  {
    "total_time"=>62,
    "href"=>"https://api.surveymonkey.net/v3/surveys/00000002/responses/0000000001",
    "custom_variables"=>{"respondent"=>""},
    "ip_address"=>"2.110.189.144",
    "id"=>"0000000001",
    "logic_path"=>{},
    "date_modified"=>"2017-03-24T09:09:28+00:00",
    "response_status"=>"completed",
    "custom_value"=>"",
    "analyze_url"=>"https://www.surveymonkey.com/analyze/browse/ddsfdsf?respondent_id=0000000001",
    "pages"=>[
      {
        "id"=>"33518820",
        "questions"=>[
          {
            "id"=>"96240864",
            "answers"=>[
              {
                "choice_id"=>"725852898"
              }
            ]
          }
        ]
      }
    ],
    "page_path"=>[],
    "recipient_id"=>"",
    "collector_id"=>"",
    "date_created"=>"2017-03-24T09:08:26+00:00",
    "survey_id"=>"00000002",
    "collection_mode"=>"default",
    "edit_url"=>"https://www.surveymonkey.com/r/?sm=fdsdfsdf",
    "metadata"=>{}
  }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/WebGents/surveymonkey.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
