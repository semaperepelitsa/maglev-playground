require 'sinatra'
require "haml"
require "blog"

$blog = Maglev::PERSISTENT_ROOT[:blog]

before do
  Maglev.abort_transaction
end

get "/" do
  haml :index
end
