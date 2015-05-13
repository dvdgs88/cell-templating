class ArticleListWidget < Widget
  self.widget_options = ['max']

  def articles
    Article.all.limit(max)
  end
end
