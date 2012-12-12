Maglev.persistent do
  load "lib/blog.rb"
end

blog = Blog.new
blog.add_post "Hello world!", <<-END
This is my first blog post
END

Maglev::PERSISTENT_ROOT[:blog] = blog
Maglev.commit_transaction
