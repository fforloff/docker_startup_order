require 'sinatra'
require 'data_mapper'
require 'json'

db_password = ENV['POSTGRES_PASSWORD']

DataMapper.setup(:default, "postgres://postgres:#{db_password}@db/postgres")

class Work
  include DataMapper::Resource
  storage_names[:default] = 'work'
  property :workid, String, :key => true
  property :title, String
  property :longtitle, String
  property :year, Integer
  property :genretype, String
  property :notes, Text
  property :source, String
  property :totalwords, Integer
  property :totalparagraphs, Integer

end

DataMapper.finalize

set :bind, '0.0.0.0'

get '/' do
  redirect '/works'
end

get '/works' do
  @works = Work.all(:order => [:year.asc])
  erb :works
end

get '/works.json' do
  works = Work.all
  works.to_json
end
