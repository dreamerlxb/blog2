class TopicsController < ApplicationController
  layout 'blog'


  before_action :set_sidebar_topics

  def set_sidebar_topics
    @sidebar_topics = Topic.all
  end

  def index
    @topics = Topic.all
  end


  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end
end