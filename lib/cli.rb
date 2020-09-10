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

            puts "#{player["first_name"]} has #{player["pts"]} points for the game"
        end

        

    end


   

end



# def self.get_team
#     #    new_api_call = API.get_player
#        player_hashes = []
#         10.times do 
#             player_hashes << API.get_player
#         end
#         player_hashes
#     end


# def self.players_on_team(team_name)
#     #?seasons[]=2018&team_ids[]=1
#     roster = []
#     page = 0
#     players = API.get("players")
#     # meta_data_pages = players["meta"]["total_pages"] # returns number of pages of info
#     while page < 25 do
#         players = API.get("players?page=#{page}")
        
#         players["data"].each do |player|
#             if player["team"]["abbreviation"] == team_name
#                 roster << "#{player["first_name"]} #{player["last_name"]}"
#             end
#         end
#     page +=1
#     end
# puts roster
# end
