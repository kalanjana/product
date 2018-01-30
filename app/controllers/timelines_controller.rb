class TimelinesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @timeline = @project.timelines.create(timeline_params)
    redirect_to project_path(@project)
  end
 
  private
    def timeline_params
      params.require(:timeline).permit(:note, :body,:image, :project, :image)
    end
end
