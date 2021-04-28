class UsersController < ApplicationController

    def index
        users = User.all 
        options = {
            include: [:notes]
        }
        render json: UserSerializer.new(users, options)
    end
    
    def show 
        user = User.find(params[:id])
        render json: user
    end

    def new
    end

    def create
    end

    def destroy
    end


    private

    def user_params
        params.require(user).permit(:name, :img_url)
    end

end
