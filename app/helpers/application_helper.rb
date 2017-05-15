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

  def show_game_level(match_goal, average)
    if match_goal + 1 > average && match_goal - 1 < average
      return icon('arrow-right')
    elsif match_goal < average
      return icon('arrow-down', class: 'red')
    else
      return icon('arrow-up', class: 'green')
    end
  end
end
