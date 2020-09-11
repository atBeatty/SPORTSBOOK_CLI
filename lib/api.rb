# puts "Hello"
require 'open-uri'
require 'net/http'


class API

    def self.get_player_by_id(id)
        url = "https://www.balldontlie.io/api/v1/players/#{id}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash

        json_response #THIS DIDNT WORK WITHOUT THE RETURN
    end
   
    def self.get_team

        # url = "https://www.balldontlie.io/api/v1/season_averages?season=2018&player_ids[]=1&player_ids[]=2"
        url = "https://www.balldontlie.io/api/v1/season_averages?season=2018&player_ids[]=#{rand(1000)}&player_ids[]=#{rand(500)}&player_ids[]=#{rand(500)}&player_ids[]=#{rand(500)}&player_ids[]=#{rand(500)}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash
        
        return json_response["data"] #THIS DIDNT WORK WITHOUT THE RETURN
    end

    def self.get_stats_for_roster_by_ids(ids)
        # binding.pry
        url = "https://www.balldontlie.io/api/v1/season_averages?season=2018&player_ids[]=#{ids}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash

        return json_response["data"] #THIS DIDNT WORK WITHOUT THE RETURN

    end

    

end


    # puts "Why does this show up?"
  

    # def self.get_team
    #     url = "https://www.balldontlie.io/api/v1/stats?seasons[]=2018&seasons[]=2015&player_ids[]=1&player_ids[]=#{rand(1000)}"
    #     uri = URI.parse(url)
    #     response = Net::HTTP.get_response(uri)
    #     response.body
    #     json_response = JSON.parse(response.body) #data hash

    #     json_response #THIS DIDNT WORK WITHOUT THE RETURN
    # end

    # def self.get_player
    #     url = "https://www.balldontlie.io/api/v1/players/#{rand(3000)}"
    #     uri = URI.parse(url)
    #     response = Net::HTTP.get_response(uri)
    #     response.body
    #     json_response = JSON.parse(response.body) #data hash

    #     json_response #THIS DIDNT WORK WITHOUT THE RETURN
    # end

    




# API.new