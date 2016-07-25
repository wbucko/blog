class ArticlePolicy
  attr_reader :user, :article

  def initialize(user, article)
    @user = user
    @article = article
  end

  def create?
    admin? || redactor?
  end

  def update?
    admin? || redactor?
  end

  def destroy?
    admin?
  end

  private

  def reader?
    user.user_type == 'reader'
  end

  def redactor?
    user.user_type == 'redactor'
  end

  def admin?
    user.user_type == 'admin'
  end
end
