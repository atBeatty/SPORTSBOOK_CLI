# puts "Hello"
require 'open-uri'
require 'net/http'


class API


    # puts "Why does this show up?"
  

    # def self.get_team
    #     url = "https://www.balldontlie.io/api/v1/stats?seasons[]=2018&seasons[]=2015&player_ids[]=1&player_ids[]=#{rand(1000)}"
    #     uri = URI.parse(url)
    #     response = Net::HTTP.get_response(uri)
    #     response.body
    #     json_response = JSON.parse(response.body) #data hash

    #     json_response #THIS DIDNT WORK WITHOUT THE RETURN
    # end

    def self.get_player
        url = "https://www.balldontlie.io/api/v1/players/#{rand(3000)}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash

        json_response #THIS DIDNT WORK WITHOUT THE RETURN
    end


end

# API.new