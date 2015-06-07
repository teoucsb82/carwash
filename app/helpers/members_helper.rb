module MembersHelper
  def li_tab(text, path, icon)
    active = path == url_for
    content_tag(:li, link(text, path, icon), class: "#{active ? 'active' : nil }")
  end

  def link(text, path, icon)
    method = path == destroy_user_session_path ? "delete" : "get"
    link_to path, method: method do 
      content_tag(:i, "", class: "fa fa-#{icon}") + content_tag(:span, text, class: "title")
    end
  end
end
