class PostController < ApplicationController
  before_action :authenticate_user!
  def create
    post = Post.create(user_id: current_user.id, post_text: params[:post_text], has_image: false, community_id: params[:community_id])
    if post.save
      post.image.attach(params[:image])
      redirect_to request.referrer, notice: "تمّت إضافة المنشور", allow_other_host: true
    end
  end

  def like
    Like.create(user_id: current_user.id, post_id: params[:post_id])
    redirect_to request.referrer, notice: "تمّت إضافة الإعجاب", allow_other_host: true
  end

  def comment
    Comment.create(user_id: current_user.id, post_id: params[:post_id], comment_text: params[:comment_text])
    redirect_to request.referrer, notice: "تمّت إضافة التعليق", allow_other_host: true
  end

  def repost
    Repost.create(user_id: current_user.id, post_id: params[:post_id])
    redirect_to request.referrer, notice: "تمّت عملية إعادة النشر", allow_other_host: true
  end
end
