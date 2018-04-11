require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return (contestant["name"]).split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |stat, stat_value|
      if stat["occupation"] == occupation
        return stat["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
counts = Hash.new(0)

  data.each do |season, contestant|
    contestant.each do |stat, stat_value|
      if stat == "hometown"
        stat.each do |word|
          counts[word] += 1
        end
      end
    end
  end
  
  

  data.each do |word|
    counts[word] += 1
  end

  return counts
  
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
