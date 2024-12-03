require 'sinatra'
require 'json'

# Webhook route (using POST)
post '/webhook' do
  # Read the data from the request body (JSON)
  data = JSON.parse(request.body.read)

  # Extract the name and phone number from the JSON or use default values
  name = data["name"] || "World"
  phone_number = data["phone_number"]

  # In case you do not provide the phone number, you will be asked to do so
  if phone_number.nil? || phone_number.empty?
    content_type :json
    return { message: "Hello #{name}, please provide your phone number." }.to_json
  end

  # If the phone number is provided, respond with the message:
  content_type :json
  { message: "Hello #{name} from the Webhook!, your phone number is: #{phone_number}" }.to_json
end
