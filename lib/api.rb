# puts "Hello"

class API 
    # puts "Why does this show up?"

    # url = "https://www.balldontlie.io/api/v1/players"
    # uri = URI.parse(url) - ??
    # response = Net::HTTP.get_response(uri)
    # response.body
   
    def self.get(data_cat)
        url = "https://www.balldontlie.io/api/v1/#{data_cat}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        binding.pry
        json_response = JSON.parse(response.body) #data hash
    end

   


    # first_name = json_body.first[1][0]["first_name"]
    # last_name = json_body.first[1][0]["last_name"]
    # team = json_body.first[1][0]["team"]

end

# API.new