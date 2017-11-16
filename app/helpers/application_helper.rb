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
                <span class="label-tooltiptext  label-tooltip-bottom">' + user.andand.display_stats.to_s + '</span>
              </span>'
    tooltip.html_safe
  end 


  def calculate_game_level(match_goal = 0, average_goal = 0, match_assist = 0, average_assist = 0, game_duration = 60)
    match_goal = match_goal.to_f / (game_duration.to_f / 60)
    match_assist = match_assist.to_f / (game_duration.to_f / 60)

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

    return result
  end


  def show_game_level(match_goal = 0, average_goal = 0, match_assist = 0, average_assist = 0, game_duration = 60)
    
    result = calculate_game_level(match_goal, average_goal, match_assist, average_assist, game_duration)

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
      return (sum_goal_average_by_match.to_f < (sum_assist_average_by_match.to_f/0.4991).to_f ? sum_goal_average_by_match.to_f : sum_assist_average_by_match.to_f/0.4991)
    else
      return ''
    end
    
  end

  def link_to_open_goal_in_modal(icon, goal)
    return '<a class="link_to_highlight" data-toggle="modal" data-target="#goal_modal" onClick="change_goal(\'../goals/' + goal.id.to_s + '/show_embed\');">' + icon + '</a>'
  end

  def link_to_open_highlight_in_modal(icon, goal)
    return '<a class="link_to_highlight" data-toggle="modal" data-target="#goal_modal" onClick="change_goal(\'../highlights/' + goal.id.to_s + '\');">' + icon + '</a>'
  end

  def player_fut_class(rating, game_level)
    rating = rating.round
    if rating.nil?
      rating = 0;
    end
    if game_level.nil?
      game_level = 0;
    end
    if (rating >= 78)
      if game_level > 1
        return 'gold-fut-tots'
      elsif game_level > 0
        return 'gold-fut-in-form'
      elsif game_level > -1
        return 'gold-fut'
      else
        return 'gold-fut-non-rare'
      end
    elsif (rating < 70) 
      if game_level > 1
        return 'bronze-fut-tots'
      elsif game_level > 0
        return 'bronze-fut-in-form'
      elsif game_level > -1
        return 'bronze-fut'
      else
        return 'bronze-fut-non-rare'
      end
    else 
      if game_level > 1
        return 'silver-fut-tots'
      elsif game_level > 0
        return 'silver-fut-in-form'
      elsif game_level > -1
        return 'silver-fut'
      else
        return 'silver-fut-non-rare'
      end
    end
  end
end
