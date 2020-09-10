# puts "Hello"

require_relative './roster.rb'

class API
    attr_accessor :roster
    # puts "Why does this show up?"
  

    def self.get_team
        randomizer = "player_ids[]= #{rand(3000)}&player_ids[]= #{rand(3000)}&player_ids[]= #{rand(3000)}&player_ids[]= #{rand(3000)}"
        url = "https://www.balldontlie.io/api/v1/stats?seasons[]=2018#{randomizer}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash

        return json_response["data"] #THIS DIDNT WORK WITHOUT THE RETURN



        # ("players?page=#{page}&seasons[]=2019")

    end


end

# API.new