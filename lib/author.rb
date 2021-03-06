class Author 
  attr_accessor :name 
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def add_post(posts)
    posts.author = self 
    @@post_count += 1 
  end
  
  def posts  
    Post.all.select {|posts| posts.author == self} 
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    add_post(posts)
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count
  end
  
end