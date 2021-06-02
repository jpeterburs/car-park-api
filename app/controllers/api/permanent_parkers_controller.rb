module Api
  class PermanentParkersController < ApplicationController
    def index
      @permanent_parkers = PermanentParker.all
    end

    def show
      @permanent_parker = PermanentParker.find(params[:id])
    end
  end
end
