module ApplicationHelper
  def render_time(time)
    time.strftime("%-d %b %Y")
  end
end
