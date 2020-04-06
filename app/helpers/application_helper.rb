module ApplicationHelper
  def github_link(author, repo)
    "<a href=\"https://github.com/#{author}/#{repo}\">#{repo} on Github</a>".html_safe
  end

  def current_year
    Time.now.year
  end

  def thinknetica
    "<a href=\"https://thinknetica.com/\">Учебный проект в онлайн-школе Thinknetica</a>".html_safe
  end
end
