module ApplicationHelper
  # Returns the full title on a per-page basis.
    def full_title(page_title)
      base_title = "Myunite - Community"
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end
    
    # Flash messaging alert etc.
    def bootstrap_class_for flash_type
        case flash_type
          when :success
            "alert-success"
          when :error
            "error"
          when :alert
            "alert-block"
          when :notice
            "alert-info"
          else
            flash_type.to_s
        end
    end
end
