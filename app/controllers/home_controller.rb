class HomeController < ApplicationController
  def index
    render json: {
      max_capacity: Session::MAX_CAPACITY,
      reserved: Session::RESERVED,
      active_sessions: active_sessions.count,
      normal_sessions: active_sessions.without_permanent_parker.count,
      permanent_parker_sessions: active_sessions.with_permanent_parker.count
    }
  end

  private

  def active_sessions
    Session.active
  end
end
