class CommunityController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @communities = Community.all()
  end

  def community
    @user = User.find(current_user.id)
    @community = Community.find(params[:id])
  end

  def create
    community = Community.create(name: params[:name])
    if community.save
      community.image.attach(params[:image])
      redirect_to request.referrer, notice: "تمّت عملية إنشاء المجتمع", allow_other_host: true
    end
  end

  def join
    CommunityUser.create(user_id: current_user.id, community_id: params[:community_id])
    redirect_to request.referrer, notice: "تمّت عملية الإنضمام إلى المجتمع", allow_other_host: true
  end

  def exit
    CommunityUser.where(user_id: current_user.id, community_id: params[:community_id]).destroy_all
    redirect_to request.referrer, notice: "تمّت عملية الخرج من المجتمع", allow_other_host: true
  end
end
