module Api
  class SessionsController < ApplicationController
    before_action :load_session, only: %i[show update]

    def show
    end

    def create
      @session = Session.new(permitted_params)
      @session.assign_attributes(entered_at: DateTime.now)

      if @session.save
        render status: :created
      else
        render json: { errors: @session.errors }, status: :bad_request
      end
    end

    def update
      @session.assign_attributes(exited_at: DateTime.now) if @session.exited_at.blank?

      if @session.save
        render status: :accepted
      end
    end

    private

    def load_session
      @session = Session.find(params[:id])
    end

    def permitted_params
      params[:session]&.permit(
        %i[
          license_plate
          permanent_parker_id
        ]
      )
    end
  end
end
