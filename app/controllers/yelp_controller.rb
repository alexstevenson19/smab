class YelpController
  def find_matches(search_term, lat, lon)
    # client = Yelp::Client.new({ consumer_key: '',
    #                             consumer_secret: '',
    #                             token: '',
    #                             token_secret: ''
    #                           })

    params = { term: search_term,
               # name: "5544 N MILWAUKEE AVE",
               limit: 5
             }

    #  params = { term: "Rosatti's Pizza",
    #             # name: "5544 N MILWAUKEE AVE",
    #             limit: 20
    #           }
    coordinates = {latitude: lat, longitude: lon}
    # results = client.search_by_coordinates(coordinates, params)
    # puts "\n\n\n\n#{x}"

    puts ENV['MESSAGE_FROM_ELLIE']

    client = Yelp::Client.new({
      consumer_key: '',
      consumer_secret: '',
      token: '',
      token_secret: ''
      })


    # results = client.search(location.capitalize, params)
    results = client.search_by_coordinates(coordinates, params)
    puts results

    results.businesses.each do |business|
      puts business.name
      puts business.rating
      puts business.location.address
    end

    return results
  end
end
