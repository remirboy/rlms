module Teachers
  class MaterialsController < ApplicationController
    def new
      @material = Material.new
    end
    
    def edit
      @material = Material.find(params[:id])
    end
    
    def update
      @material = Material.find(params[:id])
      if @material.update(material_params)
        redirect_to teachers_course_topic_material_path(@material)
      else
        render 'edit'
      end
    end

    def create
      @topic = Topic.find_by_topic_slug(params[:topic_topic_slug])
      @material = @topic.materials.new(material_params)
      @material.topic = @topic
      @material.save
      redirect_to teachers_course_topic_material_path(@topic.course, @topic.topic_slug, @material)
    end
    
    def destroy
      @material = Material.find(params[:id])
      @material.destroy
    end
    
    def show
      @material = Material.find(params[:id])
    end

    private

    def material_params
      params.require(:material).permit(:content, :URL, :image, :pdf, :video)
    end
  end
end