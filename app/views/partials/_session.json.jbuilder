json.(session, :id, :license_plate)

json.permanent_parker do
  if session.permanent_parker.present?
    json.partial! partial: 'partials/permanent_parker', locals: { permanent_parker: session.permanent_parker }
  end
end

json.(session, :entered_at, :exited_at)
