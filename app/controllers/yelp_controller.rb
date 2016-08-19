class YelpController
  def find_matches(location, search_term, coordinates)
    # client = Yelp::Client.new({ consumer_key: '',
    #                             consumer_secret: '',
    #                             token: '',
    #                             token_secret: ''
    #                           })

    params = { term: search_term,
               # name: "5544 N MILWAUKEE AVE",
               limit: 20
             }

    #  params = { term: "Rosatti's Pizza",
    #             # name: "5544 N MILWAUKEE AVE",
    #             limit: 20
    #           }
    # coordinates = {latitude: 41.9028, longitude: -87.6953}
    # results = client.search_by_coordinates(coordinates, params)
    # puts "\n\n\n\n#{x}"

    puts ENV['MESSAGE_FROM_ELLIE']

    client = Yelp::Client.new({
      consumer_key: 'aF1fD1DFV3TYXyQ9mtdnrw',
      consumer_secret: 'MET1Fc81xxjlJY27vmU9tm8JtY4',
      token: 'DOzEchAqt7bLMMvkQuTtOoehgsM2MGsh',
      token_secret: 'vdM68MuhWC8lcQFNRXK8uF88c50'
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
