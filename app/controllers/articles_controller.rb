class ArticlesController < ApplicationController
  before_action :set_article
  layout :set_layout

  def index
      @articles = Article.all
  end
  #
  def show
    @article = Article.find(params[:id])
  end

  private

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
      @item.build_pdf if @item.pdf.blank?
    end

    def set_layout
      'frontend'
    end

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title )
    end

end
