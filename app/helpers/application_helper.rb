module ApplicationHelper

  def admin?
    Mom.find_by_id(session[:mom_id]).admin
  end

end
