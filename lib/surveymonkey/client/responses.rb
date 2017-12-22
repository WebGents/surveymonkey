module SurveyMonkeyApi
    class Client
        # API endpoints for surveys resources
        module SurveyResponses
            # Returns list of survey responses for survey
            # Each survey looks like
            # {"href"=>"https://api.surveymonkey.net/v3/surveys/00000001/responses/1234", "id"=>"1234"}
            def responses(survey_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/responses", query: options)
                response.parsed_response
            end

            # Returns response's information for survey
            def response(survey_id, response_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/responses/#{response_id}", query: options)
                response.parsed_response
            end

            # Returns response's information for survey with details
            def response_with_details(survey_id, response_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/responses/#{response_id}/details", query: options)
                response.parsed_response
            end
        end
    end
end
