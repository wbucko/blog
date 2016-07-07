class UpdateArticleForm
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
    UpdateArticleService.new(
      {
        title: title,
        body: body,
      }, params[:id]).call!
  end
end

