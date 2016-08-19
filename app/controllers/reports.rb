get '/reports/:location/:name/?lat=c_lat&lon=c_lon&name=name&rating=rating' do
  yp = YelpController.new
  @results = yp.find_matches(params[:location], params[:name])
  @first_result = #first result =|| "There's no yelp listing womp womp"
  @rating = params[:rating]
  erb :"/reports/show"
end


get '/inspections/:name' do
  cfi = ChiFoodInspect.new
  @chi_results = cfi.find_matches(params[:name])
  erb :"/inspections/show"
end
