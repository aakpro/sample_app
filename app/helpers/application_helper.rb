module ApplicationHelper
  def title
    base_title = "Ruby On Rails tutorial application"
    if @title.nil?
    base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  def logo
    image_tag("logo.png", :alt => "Sample app logo", :class => "round")
  end
end
