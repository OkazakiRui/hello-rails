class ArticlesController < ApplicationController
  def index
    # @hoge でインスタンス変数が作成される
    @articles = Article.all
  end

  def show
    # params[:id] でidの値を取得することができる。
    @article = Article.find(params[:id])
  end

end
