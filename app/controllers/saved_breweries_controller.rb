class SavedBreweriesController < ApplicationController

    def create
        saved_brewery = logged_in_user.saved_breweries.create!(saved_breweries_params)
        render json: saved_brewery
    end

    private

    def saved_breweries_params
        params.permit(:user_id)
    end
end
