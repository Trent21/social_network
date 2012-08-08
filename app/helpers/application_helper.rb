module ApplicationHelper

  def photos(user)
    content_tag :div, :class => "photos" do
      content_tag :ul do
        user.photos.collect do |photo|
          concat(content_tag(:li, image_tag(photo.photo.url(:thumb).to_s, :class => "images", :size => "120x120", :data => photo.photo.url.to_s)))
        end
      end
    end
  end

  def full_title(page_title)
    base_title = "Matts cool website"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def logo
    image_tag("logo.png", alt: "Sample App", class: "round")
  end
end
