class ArticlesController < ApplicationController
  def index
    # @hoge でインスタンス変数が作成される
    @articles = Article.all
  end

  def show
    # params[:id] でidの値を取得することができる。
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    # 成功したらtrueが返却
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  # リクエストで変更を許可するカラム名を宣言
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
