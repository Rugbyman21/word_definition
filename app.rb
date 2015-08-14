require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
# require('./lib/defination')

get('/') do
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end
