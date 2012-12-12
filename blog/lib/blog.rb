class Blog
  attr_reader :posts
  Post = Struct.new(:title, :body)

  def initialize
    @posts = []
  end

  def add_post title, body
    @posts << Post.new(title, body)
  end
end
