get '/reports/:location/:name' do
  yp = YelpController.new
  @results = yp.find_matches(params[:location], params[:name])
  erb :"/reports/show"
end
