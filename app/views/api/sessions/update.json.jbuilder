json.session do
  json.partial! partial: 'partials/session', locals: { session: @session }
end
