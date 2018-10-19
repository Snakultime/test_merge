require 'gossip'
require 'view'

class Controller

  def create_gossip
    @view = View.new
    params = @view.create_gossip
    gossip = Gossip.new(params[:content], params[:author])
    gossip.save
  end

  def index_gossips
    View.new.index_gossips

  end

end
