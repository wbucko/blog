class CreateArticleForm
  include ActiveModel::Model
  include Virtus.model

  attribute :title, String
  attribute :body, String

  validates :title, :body, presence: true

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  private

  def persist!
    CreateArticleService.new(
      {
        title: title,
        body: body,
      }).call!
  end
end

