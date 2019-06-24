module ApplicationHelper
    def nav_link(link_text, link_path)
        class_name = current_page?(link_path) ? 'is-active' : ''
        
        content_tag(:li) do
            link_to link_text, link_path, {:class => class_name}
        end
    end

end
