module ArticlesHelper
  def long_title?(article)
    article.title.length > 5
  end
end
