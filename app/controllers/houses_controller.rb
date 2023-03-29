class HousesController < ApplicationController
    wrap_parameters format: []
    # get all houses
    def index
        houses= House.all
        render json: houses
    end
    #  get a single house together with the reviews
    def show 
        house= House.find(params[:id])
        if house
            render json: house, serializer: HouseAndReviewSerializer , status: :ok
        else
            render json: {error: "house not found"}, status: :not_found
        end
    end
    # create a house
    def create
        house = House.create(house_params)
        render json: house, status: :created
    end
    #  changing details of the house
    def update
        house= House.find(params[:id])
        if house
            house.update!(house_params)
            render json: house, status: :ok
            else
                render json: {error: "house not found"}, status: :not_found
            end

    end
    #  delete a house
    def destroy
        house = House.find(params[:id])
       if house
        house.destroy
        head :no_content
       else
        render json: {error:"house not found"}, status: :not_found
       end
    end

    private

    def house_params
        params.permit(:title, :location, :desc, :price, :image, :category)
    end

end
