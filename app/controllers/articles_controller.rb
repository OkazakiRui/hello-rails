class ArticlesController < ApplicationController
  def index
    # @hoge でインスタンス変数が作成される
    @articles = Article.all
  end
end
