class FutsalTournamentTeamRegistration < ApplicationRecord
  belongs_to :futsal_tournament
  belongs_to :team   

  def to_s
    date.strftime("%d/%m/%Y %H:%M").to_s
  end  
end
