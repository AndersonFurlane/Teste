class PostsController < ApplicationController

  before_filter :load_resources, :only => %w(new create edit update)

  def index
    @posts = Post.where(:draft => false)
    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  protected

    def categories
      @categories = Category.all
    end

end
