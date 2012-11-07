class Post < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title
  #nao permite valores nil nos objetos na hora de criar ou alterar um post
  validates_presence_of :title, :body

  has_many :comments, :dependent => :destroy
end
