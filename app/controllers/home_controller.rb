class HomeController < ApplicationController
  def index
    render json: {
      status: 'ok',
      message: 'API working hard'
    }
  end
end
