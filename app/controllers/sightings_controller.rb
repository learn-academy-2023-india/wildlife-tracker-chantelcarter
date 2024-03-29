class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: sightings
    end

    def show
        sighting = Sighting.find(params[:id])
        render json: sighting
    end

    def create
        sighting = Sighting.create(sighting_params)
        # if saved,response with the new chicken as json
        if sighting.valid?
          render json: sighting
        # if not, response with errors
        else
          render json: sighting.errors
        end
    end

    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
    end

    def destroy
        sighting = Sighting.find(params[:id])
        if sighting.destroy
          render json: sighting
        else
          render json: sighting.errors
        end
    end
    
    private
    def sighting_params
        params.require(:sighting).permit(:animal_id, :latitude, :longitude, :date)
    end
end
