# # puts "Hello"require
# require 'pry'
# require_relative './api.rb'
require_relative './api.rb'




class Roster
    attr_accessor :team

    def initialize
        @team = API.get_team
    end

    def names
        puts "HELLO HELLO"
        puts @team.first

    end



    
   


end

# # API.new