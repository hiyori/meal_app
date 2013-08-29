module UsersHelper
    
  def signed_in?
    !session[:id].nil?
  end    
end
