class MatchMaking
  attr_accessor :game_registrations
  attr_accessor :players_count
  attr_accessor :players_teams
  attr_accessor :players_teams_valids
  attr_accessor :players_teams_valids_sort

  def initialize(attributes = {})
    self.attributes = attributes
    self.players_count = self.game_registrations.andand.count
    self.players_teams = []
    for i in 0..((2 ** 10) - 1)
      team_value = i.to_s(2)
      if is_valid_team(team_value)
        self.players_teams.push(MatchMakingTeam.new(team: team_value, players: self.game_registrations))
      end      
    end
    self.players_teams_valids = self.players_teams.select { |players_team| players_team.is_valid_team == true }
    self.players_teams_valids_sort = self.players_teams_valids.sort { |a, z| z.team_difference <=> a.team_difference }.reverse
  end

  def attributes=(attributes)
    @game_registrations = attributes[:game_registrations]
  end

  def is_valid_team(team_value)
    (team_value.count("1") == (self.players_count / 2)) && (team_value.length == self.players_count)
  end
end