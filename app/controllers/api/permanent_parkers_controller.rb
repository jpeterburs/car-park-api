module Api
  class PermanentParkersController < ApplicationController
    def show
      @permanent_parker = PermanentParker.find(params[:id])
    end
  end
end
