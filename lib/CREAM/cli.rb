#CREAM - Cash Rules Everything Around Me
class  CLI
  
  def start
    puts" Start A Job Search"
    lang_selection
      
  end
  LANGUAGES = ["ruby", "java", "python", "php", "swift", "javascript"]
  
  def lang_selection
    #puts "select number from list"
    
    LANGUAGES.collect.each_with_index do |language,idx|
      puts "#{idx + 1}:  #{language}"
    end
    
      puts "Type the language you want to view the jobs for"
   
   choice = gets.downcase.chomp
   puts choice
       
    jobs = API.get_data(choice)
    puts Jobs.all
    binding.pry
   #jobs = Jobs.new(choice)
   #puts jobs.type
   
  end
end