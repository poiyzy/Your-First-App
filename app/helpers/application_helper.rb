module ApplicationHelper

  def display_url_link(post)
    if post.url.starts_with?("http://") || post.url.starts_with("https://")
      post.url
    else
      "http://" + post.url
    end
  end
end
