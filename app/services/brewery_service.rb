class BreweryService

    attr_reader :response

    def initialize
        response = HTTP.get("https://api.openbrewerydb.org/breweries?")
        @response = response.parse
    end

    def to_breweries
        @response.map do |response|
            Brewery.find_or_create_by(openbrewery_id: response["id"]) do |brewery|
                brewery.name = response["name"]
                brewery.street = response["street"]
                brewery.city = response["city"]
                brewery.state = response["state"]
                brewery.zip = response["postal_code"]
                brewery.url = response["website_url"]
            end
        end
    end

end
