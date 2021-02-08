class StaticPagesController < ApplicationController
  def home
  	@gossips = Gossip.all
  end

  def eachGossips
  	@gossip = Gossip.find(params[:id])
  end

  def contact
  end

  def team
  end
  
end
