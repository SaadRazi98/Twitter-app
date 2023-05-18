class RelationshipsController < ApplicationController

  def index
    @relationships = Relationship.all
    render :index
  end 

  def create 
    @relationship = relationship.create(
      follower_id: params[:follower_id],
      leader_id: params[:leader_id],
    )
  end 
  render :show
  
end
