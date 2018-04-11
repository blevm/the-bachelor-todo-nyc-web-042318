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
    contestant.each do |stats, stat_key|
      stats.each do |stat_key, stat_value|
        if stat_key == "hometown"
          counts[stat_value] += 1
        end
      end
    end
  end

  return counts[hometown]

end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |stats, stat_key|
      stats.each do |stat_key, stat_value|
        if stat_key == "hometown" && stat_value == hometown
          return stats["occupation"]
        end
      end
    end
  end

def get_average_age_for_season(data, season)
  ages = []

  data[season].each do |contestant|
    contestant.each do |stats, stat_key|
      stats.each do |stat_key, stat_value|
        if stat_key == "age"
          ages << age.to_i
        end
        binding.pry
      end
    end
  end
end
