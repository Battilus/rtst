class Web::Common::ArticlesController < Web::Common::ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def blog
    @articles = Article.all
  end

  def show_article
    @article = Article.find(params[:id])
  end

end
