class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  def index
    @posts = Post.includes(:user).page(params[:page]).per(10).order("post_date DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(warehouse_name: post_params[:warehouse_name], post_date: post_params[:post_date], address: post_params[:address], image: post_params[:image], user_id: current_user.id)
    redirect_to action: :new unless @post.save
  end

  def destroy
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.destroy
    end
    redirect_to action: :index
  end

  def edit
    @post = Post.find(params[:id])
    
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user).order("created_at DESC")
    @comment  = @post.comments.build(user_id: current_user.id) if current_user
  end

  def update
    @post = Post.find(params[:id])
    if @post.user_id == current_user.id
      @post.update(post_params)
    end
    redirect_to action: :edit unless @post.save
  end

  def search
    @posts = Post.where('warehouse_name LIKE(?)', "%#{params[:keyword]}%").page(params[:page]).per(10).order("post_date DESC")
  end

  private
  def post_params
    params.require(:post).permit(:warehouse_name, :post_date, :address, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
