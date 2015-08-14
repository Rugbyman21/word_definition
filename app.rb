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

get('/definitions/:id') do
  @definitions = Definitions.find(params.fetch('id').to_i())
  erb(:definitions)
end

get('/words/:id') do
  @words = Words.find(params.fetch('id').to_i())
  erb(:word)
end

get('words/:id/definitions/new') do
  @words = Words.find(params.fetch('id').to_i())
  erb(:words_definition_form)
end

post('/definitions') do
  meaning = params.fetch('meaning')
  type = params.fetch('type')

  definition = Definitions.new(:meaning => meaning, :type => type)
  definition.save()
  @word = Word.find(params.fetch('words_id').to_i())
  @word.add_definitions(@vocab)
  erb(:success)
end
