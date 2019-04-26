# Write your code here!

#def/end -- dont need it bc this isnt method, its var.
#correct way to write hash is either :example => {} OR example:{}

game_hash = {

:home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"], #anything that isn't specific type of data -- by itself-- ruby will try to interpret that, so added string to color bc its not a ruby key word or anything to be interpreted.
    :players => {
      "Alan Anderson" => {number:"0", shoe:"16", points:"22",rebounds:"12", assists:"12", steals:"3", blocks:"1", slam_dunks:"1"},
      "Reggie Evans" => {number:"30", shoe:"14", points:"12",rebounds:"12", assists:"12", steals:"12", blocks:"12", slam_dunks:"7"},
      "Brook Lopez" => {number:"11", shoe:"17", points:"17",rebounds:"19", assists:"10", steals:"3", blocks:"1", slam_dunks:"15"},
      "Mason Plumlee" => {number: "1", shoe:"19", points:"26",rebounds:"12", assists:"6", steals:"3", blocks:"8", slam_dunks:"5"},
      "Jason Terry" => {number: "31", shoe:"15", points:"19",rebounds:"2", assists:"2", steals:"4", blocks:"11", slam_dunks:"1"}
    }
  }, #needed to add , after the } bc there is a second part

:away => {

  :team_name => "Charlotte Hornets",
  :colors => ["Turquoise", "Purple"],
  :players => { # [ for arrays ] {for hashes} -- key value pairs which we have here
      "Jeff Adrien" => {number:"4", shoe:"18", points:"10",rebounds:"1", assists:"1", steals:"2", blocks:"7", slam_dunks:"2"},
      "Bismak Biyombo" => {number:"0", shoe:"16", points:"12",rebounds:"4", assists:"7", steals:"7", blocks:"15", slam_dunks:"10"},
      "DeSagna Diop" => {number:"2", shoe:"14", points:"24",rebounds:"12", assists:"12", steals:"4", blocks:"5", slam_dunks:"5"},
      "Ben Gordon" => {number:"8", shoe:"15", points:"33",rebounds:"3", assists:"2", steals:"1", blocks:"1", slam_dunks:"0"},
      "Brendan Haywood" => {number:"33", shoe:"15", points:"6",rebounds:"12", assists:"12", steals:"22", blocks:"5", slam_dunks:"12"}
      } #since its a hash and not an array
    }
}


def num_points_scored(player_name)
  hash = game_hash
  hash.each do |home_away, data|
    data.each do |attribute, info|
      if info.include? (player_name)
        return hash[home_away][attribute][player_name][:points]

    #[:team_name][:colors][:players][:points]
    #puts "#{player}: #{points}"
      end
    end
  end
end


def shoe_size(player_name)
  hash = game_hash
hash.each do |home_away, data|
  data.each do |attribute, info|
    if info.include?(player_name)
      return hash[home_away][attribute][player_name][:shoe]
      end
    end
  end
end


def team_colors(team_name)
  hash = game_hash
  hash.each do |home_away, data|
    data.each do |t_name, attribute|
      if attribute.include?(team_name)
        return hash[home_away][t_name][team_name][:colors]
      end
    end
  end
end


def team_names(name_of_team)
  hash = game_hash
  hash.each do |home_away, data|
    data.each do |attribute, info|
      if info.include?(name_of_team)
        return [home_away][attribute][name_of_team][:team_name]
      end
    end
  end
end
