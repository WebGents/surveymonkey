module SurveyMonkeyApi
    class Client
        # API endpoints for users resources
        module Users
            def me(options = {})
                response = self.class.get('/v3/users/me', query: options)
                response.parsed_response
            end
        end
    end
end
