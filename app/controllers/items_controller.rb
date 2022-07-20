class ItemsController < ApplicationController
    # GET /items
    def index
        # define the items
        # render json to include user
        items = Item.all
        render json: items, include: :user
    end
end
