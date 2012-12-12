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

__END__

@@ layout
%html
  = yield

@@ index
.header Blog
- $blog.posts.each do |post|
  .post
    %h1= post.title
    %p= post.body
