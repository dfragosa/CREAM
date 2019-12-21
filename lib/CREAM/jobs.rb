class Jobs
attr_accessor   :id, :type, :url, :created_at, :company, :company_url, :location, :title, :description, :how_to_apply, :company_logo
@@all = []


  def initialize
  
    @id = id
    @type = type
    @url = url
    @created_at = created_at
    @company = company
    @company_url = company_url
    @location = location
    @title = title 
    @description = description
    @how_to_apply = how_to_apply
    @company_logo = company_logo
      @@all << self
      
    #hash.each { |k,v| self.send("#{k}=", v) }
    
  end
  
    def self.all
      @@all
    end
    
end
