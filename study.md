# rails

## rails command

### make Controller

```
rails generate controller {Hoge} index --skip-routes
```

### make Model

```
rails generate model {Hoge} カラム名:データ型 カラム名:データ型
```

### migrate

```
rails db:migrate
```

### open console

```
rails console
```

## rails console

### insert するまでの流れ

```
article = Article.new(title: "Hello Rails", body: "I am on Rails!")
article.save
```

### 1 件取得

```
Article.find(1)
```

### 全件取得

```
Article.all
```

## controller

### インスタンス変数を作成

```
@articles = Article.all
```

### パラメーターの値を取得

`params[:id]`で取得できる

```
@article = Article.find(params[:id])
```

## view

`<% %>`の中で処理を書くことができる。

### print

`<%= %>` は中で return があったものを print してくれる

### foreach

```
<% @hoges.each do |hoge| %>
  <li>
    <%= hoge.title %>
  </li>
<% end %>
```

### link の作成方法 3 種

通常のルーティング方法

```
<li>
  <a href="/articles/<%= article.id %>">
    <%= article.title %>
  </a>
</li>
```

apiResouce でルーティングすると、model のデータを遡れる

```
<li>
  <a href="<%= article_path(article) %>">
    <%= article.title %>
  </a>
</li>
```

link_to テキスト群, model 単一データ で a タグが返される

```
<li>
  <%= link_to article.title, article %>
</li>
```

## routes

### ルーティングの方法

```
get "/articles", to: "articles#index"
get "/articles/:id", to: "articles#show"
```

### apiRresource

```
root "articles#index"
resources :articles
```
