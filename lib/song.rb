require 'pry'
class Song
  attr_accessor :name, :artist_name
  
  @@all = []
      
  def self.new_by_name(name)
      song = Song.new        #return song instance by taking in string name 
      song.name = name 
      song
      #binding.pry
   end
   
   def self.all
    @@all
   end

   def save
    self.class.all << self
   end
   
   def self.create
     song = Song.new 
     song.save
     song 
       
   end
   def self.create_by_name(name)  #returns a song instance with that name set as its name property and the song being saved into the class variable.
     song = Song.new
     song.name = name
     song.name
     song.save
     @@all << song
     return song
     #binding.pry
     
   end
   
    def self.find_or_create_by_name(title)
    #either return a matching song instance with that name or create a new song with the name and return the song instance
        result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
    
  end

  