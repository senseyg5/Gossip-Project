
class View
  attr_accessor :author, :content, :index
  def initialize

  end
  def createGossip
  	puts "Creation de gossip"
    print " Nom >  "
  	@author = gets.chomp
    puts "Description de l'action du gossip"
  	print " Action du gossip >  "
  	@content = gets.chomp
    puts "Merci d'avoir joué dans mon jeu de gossip"
  	return params = { content: @content, author: @author, index:@index }
  end

  def listGossip
    Gossip.all
  end

  def delGossips
    Gossip.delete
  end

end