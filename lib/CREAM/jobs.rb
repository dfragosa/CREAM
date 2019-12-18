class Jobs
attr_accessor   :id, :type, :url, :created_at, :company, :company_url, :location, :title, :description, :how_to_apply, :company_logo
@@all = []


  def initialize(hash)
   
    hash.each { |k,v| self.send("#{k}=", v) }
    @@all << self
   end
  
    def self.all
      @@all
    end
    
end
