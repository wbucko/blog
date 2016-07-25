module PagesHelper
  def reader?(user)
    user && user.user_type == 'reader'
  end

  def redactor?(user)
    user && user.user_type == 'redactor'
  end

  def admin?(user)
    user && user.user_type == 'admin'
  end
end
