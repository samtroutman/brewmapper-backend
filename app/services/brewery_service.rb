class BreweryService

    attr_reader :response

    def initialize
        # response = HTTP.get("http://beermapping.com/webservice/locstate/#{ENV["API_KEY"]}/mi
        # ")
        # @response = response.parse
        api_key = ENV["API_KEY"]
        url = "http://beermapping.com/webservice/locstate/#{api_key}/mi&s=json"
        response = HTTP.get(url)
        # response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url)
        @response = response.parse
    end

    def to_breweries
        @response.map do |response|
            Brewery.find_or_create_by(beermapping_id: response["id"]) do |brewery|
                brewery.name = response["name"]
                brewery.status = response["status"]
                brewery.reviewlink = response["reviewlink"]
                brewery.blogmap = response["blogmap"]
                brewery.street = response["street"]
                brewery.city = response["city"]
                brewery.state = response["state"]
                brewery.zip = response["zip"]
            end
        end
    end

end
