class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
  end

  def create
    Topic.create(
      title: params[:topic][:title],
      description: params[:topic][:description]
    )

    redirect_to topics_url
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy

    redirect_to topics_url
  end

  def vote
    Vote.create(topic_id: params[:id])

    redirect_to topics_url
  end

  def downvote
    vote = Vote.find_by(topic_id: params[:id])

    if vote
      vote.destroy
    end

    redirect_to topics_url
  end
end
