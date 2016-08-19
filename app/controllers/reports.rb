get '/reports/:location/:name/?lat=c_lat&lon=c_lon&name=name&rating=rating' do
  yp = YelpController.new
  @results = yp.find_matches(params[:location], params[:name])
  @first_result = #first result =|| "There's no yelp listing womp womp"
  @rating = params[:rating]
  erb :"/reports/show"
end

post '/reports' do

end
