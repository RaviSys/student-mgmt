class Admin::BlogsController < AdminController
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @blogs = Blog.includes(:student).page(params[:page])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to admin_blogs_path, notice: 'Student has been created successfully'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to admin_blog_path(@blog), notice: 'Student has been updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to admin_blogs_path, notice: 'Student has been deleted successfully'
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content, :student_id)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
