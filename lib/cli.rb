require_relative './api.rb'

class CLI


    def self.run
        puts "Welcome to Basketball Matchups 2018"
        puts "This program will generate two teams for the user to select."
    end

   
    
    def self.list_names(team_hash)
        names = []
        team_hash.each do |player|
            names <<  player["first_name"] + " " + player["last_name"] + " " + player["position"]
            # binding.pry
        end

        names.each.with_index(1) do |name, index|
            puts "#{index}. #{name}"
        end

    end

    def self.create_roster
        player_ids = []

        team_roster = API.get_team
        team_roster.each do |player|
            player_ids << player["player_id"]
        end

        roster = []
        player_ids.each do |id|
            roster_member = API.get_player_by_id(id)
            roster << roster_member
        end
        roster.each.with_index(1) do |player, index|
            puts "#{index}. #{player["first_name"]} #{player["last_name"]} #{player["position"]}"
        end
        roster
    end

    def self.list_stats(ids)
        stats_hash = API.get_stats_for_roster_by_ids(ids.collect {|id| id["id"]}.join("&player_ids[]="))
            stats_hash.each do |player|
                profile_hash = ids.select{|id| id["id"] == player["player_id"]}
                puts "#{player["ast"]} ASSITS"
                puts "#{player["pts"]} POINTS\n\n\n"
            end
    end
    
    def self.list_total(ids)
        team_score = 0
        stats_hash = API.get_stats_for_roster_by_ids(ids.collect {|id| id["id"]}.join("&player_ids[]="))
            stats_hash.each do |player|
                team_score += player["pts"]
            end
        puts team_score
    end

   

end
