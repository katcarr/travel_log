require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/travelog.rb')


get('/') do
  @places = Travelog.all()
  erb(:index)
end

post('/place_added') do
  place = params.fetch("place")
  locale = Travelog.new(place)
  locale.store_place()
  erb(:success)
end
