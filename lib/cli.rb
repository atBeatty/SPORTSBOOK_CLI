
require_relative './api.rb'


class CLI


    def self.run
        puts "Welcome to Basketball Matchups"
        puts "Who is your team?"
        # input = gets.chomp

        
        # onboarding...
    end

    def self.list_players
        teams = API.get("players")
        teams["data"].collect do |id|
            puts id["first_name"]
        end
        binding.pry
    end

    def self.list_teams
        teams = API.get("teams")
        teams["data"].collect do |id|
            puts id["abbreviation"]
        end
    end

    
    def self.players_on_team(team_name)
        #?seasons[]=2018&team_ids[]=1
        roster = []
        page = 0
        players = API.get("players")
        # meta_data_pages = players["meta"]["total_pages"] # returns number of pages of info
        while page < 25 do
            players = API.get("players?page=#{page}")
            
            players["data"].each do |player|
                if player["team"]["abbreviation"] == team_name
                    roster << "#{player["first_name"]} #{player["last_name"]}"
                end
            end
        page +=1
        end
    puts roster
    end











end

