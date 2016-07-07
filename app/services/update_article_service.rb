class UpdateArticleService

  def initialize(params, id)
    @params = params
    @id = id
  end

  def call!
    update_article
  end

  def update_article
    @article = Article.find(@id)
    @article.update(params.merge)
  end
end
