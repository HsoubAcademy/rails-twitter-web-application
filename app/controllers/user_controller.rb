class UserController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.where.not(id: current_user.id)
  end

  def profile
    user = User.find(params[:id])
    posts = user.posts
    reposts = user.reposts
    all_activities = posts + reposts
    @feeds = all_activities.sort_by(&:created_at).reverse
    @user = user
  end

  def avatar
    user = User.find(current_user.id)
    user.avatar.attach(params[:avatar])
    redirect_to request.referrer, notice: "تمّ تحديث الصورة الشخصية", allow_other_host: true
  end

  def follow
    Relationship.create(follower_id: current_user.id, followed_id: params[:followed_id])
    redirect_to request.referrer, notice: "تمّت إضافة المتابعة", allow_other_host: true
  end

  def unfollow
    relationship = Relationship.find_by(follower_id: current_user.id, followed_id: params[:followed_id])
    relationship.destroy
    redirect_to request.referrer, notice: "تم إلغاء المتابعة", allow_other_host: true
  end

  def username
    user = User.find(current_user.id)
    user.update(username: params[:username])
    redirect_to request.referrer, notice: "تم تغير اسم المستخدم", allow_other_host: true
  end
end
