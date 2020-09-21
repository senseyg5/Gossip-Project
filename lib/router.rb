require 'controller'

class Router

  def initialize
    @controller =  Controller.new
  end 

  def perform 
  
    while true

      #Affichage de menu
      
      puts "#########################################"
      puts "\t\t\tMenu Principal\t\t\t"
      puts "1. Creation de gossip"
      puts "2. Affichage des Gossips"
      puts "3. Suppression des Gossips"
      puts "4. Quitter"
      puts "#########################################"
      #on attend le choix de l'utilisateur
      params = gets.chomp.to_i

      #en fonction du choix
      case params 
      when 1
        puts "Creation de gossip" 
        @controller.createGossip
      when 2
        puts "Affichage des gossips"
        @controller.listGossip
      when 3
        puts "Suppression de gossip"
        @controller.delGossips
      when 4
        puts "Bye..."
        break
      else
        puts "Choix impossible! ressayer"
      end
    end
  end
end