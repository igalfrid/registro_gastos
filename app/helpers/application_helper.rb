module ApplicationHelper

  def show_button_for path
    link_to '<i class="small material-icons prefix">search</i>'.html_safe, path
  end

  def edit_button_for path
    link_to '<i class="small material-icons prefix">mode_edit</i>'.html_safe, path
  end

  def remove_button_for path
    link_to '<i class="small mdi-navigation-cancel"></i>'.html_safe, path, method: :delete
  end
end
