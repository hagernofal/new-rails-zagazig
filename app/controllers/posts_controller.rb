class PostsController < ApplicationController
  # your code goes here
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts/create
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /posts/:id/edit
  def edit
  end

  # PATCH /posts/:id
  def update
    if(@post.update(post_params))
      redirect_to post_path(@post)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.expect(post: [:title, :content])
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
