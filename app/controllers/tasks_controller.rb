class TasksController < ApplicationController

  def list
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    render :new
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
