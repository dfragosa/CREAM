#CREAM - Cash Rules Everything Around Me
class  CLI
  
  def start
    puts" HI type something"
    lang_selection
    
    
  end
  LANGUAGES = ["ruby", "java", "python", "php", "swift", "javascript"]
  
  def lang_selection
    puts "select number from list"
    
    LANGUAGES.each_with_index do |language,idx|
      puts "#{idx +1}:  #{language}"
     end
    
   puts " please choose a number for the language you want to view the jobs for"
   
   choice = gets.chomp
   puts choice
    
    API.get_data()
  end
  
  
  
  
end

