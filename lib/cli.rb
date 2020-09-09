
require_relative './api.rb'


class CLI


    def self.run
        puts "Welcome to Basketball Matchups"
        puts "Who is your team?"
        # input = gets.chomp
        # onboarding...
    end
    def self.list_players
        guards = []
        # total_pages = players["meta"]["total_pages"]
        page = 2
        while page < 5 do
            
            players = API.get("players?seasons[]=2019&page=#{page}") 
            players["data"].each do |player|
                if player["position"] == "G"
                    guards << player["last_name"]
                end
            end
            page = page.to_i
            page +=1
            players["meta"]["current_page"] = page
        end

        puts guards
    end

    def self.generate_random_team
        # binding.pry
        team = []
        loop do 
            id = rand(3000)
            rp = API.get("players/#{id}")
            team << rp
            break if team.size > 10
        end

        team.each do |player|
            puts "#{player["first_name"]} #{player["last_name"]}"
            # binding.pry
        end

    end


    # def self.list_players
    #     teams = API.get("players")
    #     teams["data"].collect do |id|
    #         puts id["first_name"]
    #     end
    # end

end



# def self.list_teams
#     teams = API.get("teams")
#     teams["data"].collect do |id|
#         puts id["abbreviation"]
#     end
# end


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
