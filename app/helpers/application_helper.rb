module ApplicationHelper
  def formatted_match_result result
    case result
    when "V"
      '<font color="green">' + result + '</font>'
    when "D"
      '<font color="red">' + result + '</font>'
    else
      result
    end
  end

  def formatted_match_time match_time
    Time.at(match_time).utc.strftime("%H:%M:%S")
  end

  def show_player user 
    tooltip = '<span class="label-tooltip drop-menu">' + (link_to icon('user-circle-o') + " " +  user, user, target: "_blank") +'
                <span class="label-tooltiptext  label-tooltip-bottom">' + user.display_stats + '</span>
              </span>'
    tooltip.html_safe
  end 
end
