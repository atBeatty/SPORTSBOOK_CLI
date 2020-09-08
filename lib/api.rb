puts "Hello"

class API 
puts "New API"
    attr_accessor :json_response

    def initialize
        @json_response = {}
    end


    
        url = URI("https://www.balldontlie.io/api/v1/players")

        http = Net::HTTP.new(url)
        # http.use_ssl = true
        # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        response = http.request(request) #response provided by API documentation
        binding.pry

        # @json_body = JSON.parse(response.body) #returns a large output of nba league info

        # filtered_response = @json_body["response"][0]["seasons"] # returns just the seasons
        # filtered_response.each do |season|
        #     puts "#{season["season"]}"
        # end
end

# API.new