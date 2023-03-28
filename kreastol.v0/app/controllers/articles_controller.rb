class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "dhh", password: "secret", only: [:destroy, :remove_all]

  def index
    @articles = Article.all
  end

  def show
    # @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  def remove_all
    Article.destroy_all
    flash[:notice] = "You have removed all results!"
    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status)
  end

  def set_article
    (@article = Article.find_by(title: params[:id]))
    if @article.nil?
      (@article = Article.friendly.find(params[:id]))
    end

  rescue => e
    redirect_to root_path, status: :see_other
  end

end
