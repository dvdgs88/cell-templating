class ArticleListWidget < Widget
  self.widget_options = ['max']

  store_accessor :options, *widget_options

  def articles
    Article.all.limit(max)
  end
end
