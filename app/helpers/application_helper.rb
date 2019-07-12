module ApplicationHelper

def is_active?(link_path)
 current_page?(link_path) ? "active" : ""
end


# Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Vault Tax Service"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
