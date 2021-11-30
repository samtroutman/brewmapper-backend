class BreweriesController < ApplicationController

    def index
        breweries = Brewery.ApplicationController
        render json: breweries
    end
end
