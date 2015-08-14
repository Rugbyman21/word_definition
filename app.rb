require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
# require('./lib/definitions')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Words.all()
  erb(:words)
end

post('/words') do
  name = params.fetch('name')

newWords = Words.new({:name => name})
newWords.save()
@words = Words.all()
  erb(:success)
end
