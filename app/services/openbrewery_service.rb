class OpenBreweryService

    def initialize
        url = "https://api.openbrewerydb.org/breweries/"
        response = RestClient.get(url)
        @response = response
        # @response = response.parse
        json = JSON.parse response 
    end

    def to_breweries
        @response.map do |response|
            Brewery.find_or_create_by(openbrewery_id: response["id"]) do |brewery|
                brewery.name = response["name"]
                brewery.street = response["street"]
                brewery.city = response["city"]
                brewery.state = response["state"]
                brewery.zip = response["postal_code"]
                brewery.website_url = response["website_url"]
            end
        end
    end

end
