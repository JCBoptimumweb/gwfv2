module FormHelper
  def setup_user(user)
    user.company ||= Company.new
    user
  end
end