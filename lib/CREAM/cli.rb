#CREAM - Cash Rules Everything Around Me
class  CLI
  
  def start
    puts" Start A Job Search"
    lang_selection
    #request
  end
  LANGUAGES = ["ruby", "java", "python", "php", "swift", "javascript"]
  
  def lang_selection
    #puts "select number from list"
    
    LANGUAGES.collect.each_with_index do |language,idx|
      puts "#{idx + 1}:  #{language}"
    end
    
      puts "Type the language you want to view the jobs for"
   
   choice = gets.downcase.strip.chomp
   puts choice
   if choice == "exit"
     puts "Good Bye"
   else 
    jobs = API.get_data(choice)
    
    puts jobs.reject {|key| key == "description"}
    puts jobs.inspect
    
   end
  end
  
end