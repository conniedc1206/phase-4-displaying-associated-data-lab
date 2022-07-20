class UsersController < ApplicationController
    # GET /users/:id
    def show
        # find the user
        # return the json of the user object, including the items object nested
        user = User.find_by(params[:id])
        render json: user, include: :items
    end
end
