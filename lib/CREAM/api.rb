#CREAM - Cash Rules Everything Around Me

class API
  
  def self.get_data(choice)
   
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}")
   response[0..5].each do |hash|
     Jobs.new(hash)
   end
   
  
  end
end

