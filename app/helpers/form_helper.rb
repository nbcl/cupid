
module FormHelper
  def setup_user(user)
    user.comuna ||= Comuna.new
    user
  end
end