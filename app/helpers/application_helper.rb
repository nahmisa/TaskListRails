module ApplicationHelper
  def create_log_in_out_link(user_status)
    if user_status.nil?
      link_to "Log In", '/auth/github', method: :get
    else
      link_to "Log Out", log_out_path, method: :delete
    end
  end

end
