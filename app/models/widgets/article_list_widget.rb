class ArticleListWidget < Widget
  WIDGET_OPTIONS = ['max']

  store_accessor :options, :max

  validates_numericality_of :max

  def articles
    Article.all.limit(max)
  end
end
