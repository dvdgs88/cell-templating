class ArticleListWidget < Widget
  def collection
    articles = Article.limit(options.max[1]).all
  end
end