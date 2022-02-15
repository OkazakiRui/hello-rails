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
