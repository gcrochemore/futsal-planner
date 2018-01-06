module ApplicationHelper
  def formatted_match_result result
    case result
    when 1
      '<font color="green">' + result + '</font>'
    when -1
      '<font color="red">' + result + '</font>'
    else
      result
    end
  end

  def css_class_match_result result
    case result
    when 1
      'win_match'
    when -1
      'lose_match'
    else
      'draw_match'
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


  def calculate_game_level(rating = 1, game_rating = 1)
    level = (game_rating.nil? ? 1 : game_rating) / (rating.nil? ? 1 : rating)

    if level < 0.93
      result = -2 
    elsif level < 0.98
      result = -1 
    elsif level < 0.98
      result = 0 
    elsif level < 1.025
      result = 1 
    else
      result = 2 
    end

    return result
  end


  def show_game_level(rating = 1, game_rating = 1)
    
    result = calculate_game_level(rating, game_rating)

    if result == 0
      return icon('arrow-right', class: 'yellow')
    elsif result < 0
      return icon('arrow-down', class: result == -1 ? 'orange' : 'red')
    else
      return icon('arrow-up', class: result == 1 ? 'yellow_green' : 'green')
    end
  end

  def calculate_score(sum_goal_average_by_match, sum_assist_average_by_match, sum_goal_against_average_by_match)
    if !sum_goal_average_by_match.nil? && !sum_assist_average_by_match.nil?
      return (sum_goal_average_by_match.to_f < (sum_assist_average_by_match.to_f/0.4991).to_f ? sum_goal_average_by_match.to_f : sum_assist_average_by_match.to_f/0.4991)
    else
      return ''
    end
    
  end

  def link_to_open_goal_in_modal(icon, goal, css_class: nil)
    return '<a class="link_to_highlight' + (css_class.nil? ? '' : ' ' + css_class).to_s + '" data-toggle="modal" data-target="#goal_modal" onClick="change_goal(\'../goals/' + goal.id.to_s + '/show_embed\');">' + icon + '</a>'
  end

  def link_to_open_highlight_in_modal(icon, goal)
    return '<a class="link_to_highlight" data-toggle="modal" data-target="#goal_modal" onClick="change_goal(\'../highlights/' + goal.id.to_s + '\');">' + icon + '</a>'
  end

  def player_fut_class(rating, game_level)
    if rating.nil? || rating.to_f.nan?
      rating = 0;
    else
      rating = rating.andand.round
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
