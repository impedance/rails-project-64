class PostsController < ApplicationController
  def new
    @post = Post.new
    @user = current_user
  end

  def index
    @posts = Post.all
  end
  #
  def show
    @post = Post.find params[:id]
  end
  #

  # def edit
  #   @task = Task.find params[:id]
  # end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def update
  #   @task = Task.find params[:id]
  #
  #   if @task.update(task_params)
  #     redirect_to @task, notice: 'Task was successfully updated.'
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @task = Task.find params[:id]
  #
  #   @task.destroy
  #
  #   redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  # end

  private

  def post_params
    user_id = params[:post][:creator]
    user = User.find_by(id: user_id)
    category = Category.first
    params.require(:post).permit(:title, :body, :creator).merge(creator: user, category: category)
  end
end
