#require 'csv'

class Gossip

  attr_accessor :author, :content, :hash

  def initialize(author, content)
    @content = content
    @author = author
  end
# Sauvegarde des gissip et des utilisateur dans le fichier gossip.csv
  def save
		@hash = Hash.new
		@hash[@author] = @content
		File.open("db/gossip.csv", "a") do |csv| 
			@hash.to_a.each {|elem| csv << elem}
		end
  end
  
  def self.all
    @csv = File.read("db/gossip.csv")
    print "#{@csv}\n"
  end
  
  def self.delete
    file = File.read('db/gossip.csv', 'w') 
    #supprime une ligne du tabeau par son index
    file.delete
		File.open('db/gossip.csv', 'w') do |csv|
      csv << ["Authors", "Contents"]
			file.each do |row|
				csv.puts row
			end
		end
  end

end