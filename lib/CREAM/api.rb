#CREAM - Cash Rules Everything Around Me

class API
  
  def self.get_data(choice)
   
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}&page=1")
   response[0...10].each do |hash| 
    Jobs.new
   end
  # binding.pry
  end

  
end

