require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |which_season, contestant|
   if which_season == season
     contestant.each do |stat, stat_value|
       binding.pry
       if "status"[stat_value] == "Winner"
         return "name"
       end
     end
   end
 end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
