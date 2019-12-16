#CREAM - Cash Rules Everything Around Me

class API
  
  
  
  def self.get_data(language)
   
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{language}")
   binding.pry
  end
  
  
end

