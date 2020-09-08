
require_relative './api.rb'


class CLI


    def self.run
        puts "Welcome to Basketball Matchups"
        puts "Who is your team?"
        
        # onboarding...
    end

    def self.list_teams
        binding.pry
        newget = API.get("teams/1")
    end



end

