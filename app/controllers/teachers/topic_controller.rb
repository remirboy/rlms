class TopicController < ApplicationController

    def new
        @topic = Topic.new
    end

    def create
        @course = Course.find(params[:course_id])
        @topic = current_user.topics.new(topic_params)
        @topic.course = @course
        @topic.save
        redirect_to post_path(@course) 
    end

    private def topic_params
        params.require(:topic).permit(:content)
        
    end

end
