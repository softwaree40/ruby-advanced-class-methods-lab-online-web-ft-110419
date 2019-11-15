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
     def find_by_name
       @@all.find {|song| song.name = name }
     end
    
   
end
