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

  def show_game_level(match_goal, average_goal, match_assist, average_assist)

    if match_goal + 1 > average_goal && match_goal - 1 < average_goal
      result = 0
    elsif match_goal < (average_goal * (-1.5))
      result = -2
    elsif match_goal < average_goal
      result = -1
    elsif match_goal < (average_goal * 1.5)
      result = 1
    elsif match_goal < (average_goal * 2.5)
      result = 2
    else
      result = 3
    end

    if match_assist + 1 > average_assist && match_assist - 1 < average_assist
      result = result
    elsif match_assist < average_assist
      result = result - 1
    else
      result = result + 1
    end


    if result == 0
      return icon('arrow-right', class: 'yellow')
    elsif result < 0
      return icon('arrow-down', class: result == -1 ? 'orange' : 'red')
    else
      return icon('arrow-up', class: result == 1 ? 'yellow_green' : 'green')
    end
  end

  def calculate_score(sum_goal_average_by_match, sum_assist_average_by_match)
    if !sum_goal_average_by_match.nil? && !sum_assist_average_by_match.nil?
      return (sum_goal_average_by_match.to_f < (sum_assist_average_by_match.to_f/0.4991).to_f ? sum_goal_average_by_match.to_f : sum_assist_average_by_match.to_f/0.4991).to_f.round(0).to_s
    else
      return ''
    end
    
  end
end
