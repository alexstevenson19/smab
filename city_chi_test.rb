
require 'soda/client'
require 'oauth'

client = SODA::Client.new({:domain => "data.cityofchicago.org", :app_token => "XXXXXXXXX"})

results = client.get("4ijn-s7e5", {:aka_name => "POKIOLOGY", :$limit => 5})
# results = client.get("4ijn-s7e5", {"$where" => " results = 'pass'", :$limit => 20})
# , :$limit => 20
p results.count
p results[0].class
puts "Got #{results.count} results. Dumping first results:"
results.each do |k, v|
    puts "#{k}: #{v}"

# puts results[3].inspection_date
end


#parms that work
# - zip
# - results
# - aka_name
# - risk


#

# response = client.get("644b-gaut", {"$limit" => 1, :namelast => "WINFREY", :namefirst => "OPRAH"})
