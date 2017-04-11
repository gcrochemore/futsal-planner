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
end
