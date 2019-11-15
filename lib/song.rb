require 'pry'
class Song
  attr_accessor :name, :artist_name
  attr_reader :name 
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
   def self.create_by_name(name)
     song = Song.new
     song.name = name
      @@all << song.name
      
     #binding.pry
   end
   

end
