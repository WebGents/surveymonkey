require 'httparty'
require_relative 'client/users'
require_relative 'client/surveys'

module SurveyMonkeyApi
    # Client class for api requests
    class Client
        include HTTParty
        include SurveyMonkeyApi::Client::Users
        include SurveyMonkeyApi::Client::Surveys

        base_uri 'https://api.surveymonkey.net'
        format :json

        def initialize(_args = {})
            access_token = ENV['SURVEY_MONKEY_TOKEN']
            self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}", 'Content-Type' => 'application/json' })
        end
    end
end
