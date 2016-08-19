get '/reports/:location/:name' do
  yp = YelpController.new
  @results = yp.find_matches(params[:location], params[:name])
  erb :"/reports/show"
end

get '/inspections/:name' do
  cfi = ChiFoodInspect.new
  @chi_results = cfi.find_matches(params[:name])
  erb :"/inspections/show"
end
