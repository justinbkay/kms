class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def student_search
    render json: Student.where("lower(first_name) like ? AND active='t'", "%#{params[:term].downcase}%").map { |s| [id: s.id, grade: s.grade, label: "#{s.first_name} #{s.last_name}  (#{s.student_number})"]}.flatten
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def security
    if current_user.nil?
      redirect_to login_url, alert: "Please log in"
      return false
    end

    # check rolls for rights on action and controller
    unless RIGHTS[@current_user.role.to_sym].detect do |av|
        av[0] == self.class.controller_path && av[1] == self.action_name
      end
      flash[:alert] = "You are not authorized to view the requested page"
      request.env["HTTP_REFERER"] ? (redirect_to :back) : (redirect_to root_url)

      return false
    end
  end

end
