class GossipsController < ApplicationController
 

	

	def index
		if 
		@gossips = Gossip.all
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def edit
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.find(params[:id])
		post_params = params.require(:gossip).permit(:title, :content)
		@gossip.update(post_params)
		redirect_to gossip_path
	end

	def new
    	if logged_in? == false
      		redirect_to new_session_path
    	else
      		@user = current_user
      		@gossip = Gossip.new
      		@all_tags = Tag.all
    	end
  	end

	def create
		post_params= params.require(:gossip).permit(title:params[:title], content:params[:content])
		@gossip = Gossip.create(post_params)
		
		
	end

	def destroy
	    @gossip = Gossip.find(params[:id])
	    @gossip.destroy
	    flash[:notice] = "Potin supprimé !"
	    redirect_to root_path
	end


	
end
end
