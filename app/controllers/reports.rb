get '/yelp' do
  yp = YelpController.new
  @results = yp.find_matches(params[:name], params[:lat], params[:lon])
  @first_result = #first result =|| "There's no yelp listing womp womp"
  @rating = params[:rating]
  erb :"/reports/show"
end


post '/reports' do
  cfi = ChiFoodInspect.new
  @chi_results = cfi.find_matches(params[:name])
  erb :"/inspections/show"
end

