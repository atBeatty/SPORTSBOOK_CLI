# puts "Hello"

class API 
    # puts "Why does this show up?"
   
    def self.get(data_cat=nil)
    # players or games or teams
        url = "https://www.balldontlie.io/api/v1/?seasons[]=2019"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash
        binding.pry
    end

    def self.get_stats
        url = "https://www.balldontlie.io/api/v1/season_averages"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        json_response = JSON.parse(response.body) #data hash
        binding.pry
    end


    



   


    # first_name = json_body.first[1][0]["first_name"]
    # last_name = json_body.first[1][0]["last_name"]
    # team = json_body.first[1][0]["team"]

end

# API.new