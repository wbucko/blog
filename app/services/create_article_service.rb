class CreateArticleService

  def initialize(params)
    @params = params
  end

  def call!
    create_article
  end

  def create_article
    binding.pry
    @article = Article.new(@params)
    @article.save
  end
end
