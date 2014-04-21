module UsersHelper
  def active_icon(bool)
    if bool == true
      '<span class="glyphicon glyphicon-ok green"></span>'.html_safe
    else
      '<span class="glyphicon glyphicon-remove red"></span>'.html_safe
    end
  end
end
