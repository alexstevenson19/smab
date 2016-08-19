require 'oauth'
require 'json'
require 'yelp'
require 'httparty'

# consumer_key =
# consumer_secret =
# access_token =
# access_token_secret =

# @consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site=>'http://gardoroman.github.io'})
# accesstoken = OAuth::AccessToken.new(@consumer, access_token, access_token_secret)
client = Yelp::Client.new({
      consumer_key: 'aF1fD1DFV3TYXyQ9mtdnrw',
      consumer_secret: 'MET1Fc81xxjlJY27vmU9tm8JtY4',
      token: 'DOzEchAqt7bLMMvkQuTtOoehgsM2MGsh',
      token_secret: 'vdM68MuhWC8lcQFNRXK8uF88c50'
      })


# puts ENV['MESSAGE_FROM_ELLIE']
params = { term: "ROSATTI'S PIZZA",
           # name: "5544 N MILWAUKEE AVE",
           limit: 10
         }
coordinates = {latitude: 41.9825, longitude: -87.7742}
results = client.search_by_coordinates(coordinates, params)
# puts "\n\n\n\n#{x}"
# results = client.search("Chicago", params)
puts results

results.businesses.each do |business|
  puts business.name
  puts business.location.address
  puts business.rating
end


