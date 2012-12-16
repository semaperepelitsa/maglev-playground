require 'sinatra'
require "haml"
require "blog"

$blog = Maglev::PERSISTENT_ROOT[:blog]

before do
  Maglev.abort_transaction
end

after do
  Maglev.commit_transaction
end

get "/" do
  haml :index
end

get "/new" do
  haml :new
end

post "/" do
  $blog.add_post params[:title], params[:body]
  redirect to("/")
end
