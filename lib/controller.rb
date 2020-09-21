require 'gossip'
require 'view'
require 'pry'
require 'rb-readline'

class Controller
  attr_accessor :author, :content, :view

  def initialize
    @view = View.new
  end
  
  def createGossip
    params = @view.createGossip
    my_gossip = Gossip.new(params[:author], params[:content])
    my_gossip.save
  end

  def listGossip
    @view.listGossip
  end

  def delGossips(index)
    @view.delGossips(index)
  end

end