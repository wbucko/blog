class NewMessageForm
  include ActiveModel::Model
  include Virtus.model

  attribute :email, String
  attribute :body, String

  validates :body, presence: true
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                    format: { with: VALID_EMAIL_REGEX }

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
    NewMessageService.new(
      {
        email: email,
        body: body,
      }).call!
  end
end

