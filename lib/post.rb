class Post 
  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self 
  end
  
  def author_name
    if self.author 
      self.author.name
    else
      nil 
    end
  end
  
  def self.all
    @@all
  end
  
end