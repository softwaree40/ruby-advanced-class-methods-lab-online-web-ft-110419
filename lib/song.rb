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
     def self.find_by_name(name)
       @@all.find {|song| song.name == name }
       
     end
     def self.find_or_create_by_name(name)
       if self.create_by_name(name) == self.find_by_name(name)
          #binding.pry                                                               #invoke method to check if they are equal or not 
         end
       return true 
    end
    blank_space = Song.new 
    blank_space.name = name
    blank_space.name
    return blank_space
    #binding.pry
 end
