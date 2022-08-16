class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to task_path(@task)
  end

  private

  def tasks_params
    # params.require(:restaurant).permit(:name, :address, :rating)
    params.require(:task).permit(:title, :details)
  end
end
