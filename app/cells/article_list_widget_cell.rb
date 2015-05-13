class ArticleListWidgetCell < Cell::Rails
  def show(args)
    @collection = args[:collection]
    render
  end
end
