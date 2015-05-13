class ArticleListWidget < Widget
  self.widget_options = ['max']

  store_accessor :options, :max

  def articles
    Article.all.limit(max)
  end
end
