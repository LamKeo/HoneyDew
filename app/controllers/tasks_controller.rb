class TasksController < ApplicationController

  def index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :description))
    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

private

  def tasks_params
    params.require(:task).permit(:title, :description)
  end

end
