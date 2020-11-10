class TasksController < ApplicationController
  before_action(:set_task, only: [:show])

  # READ ALL
  def index
    @tasks = Task.all
  end

  # READ ONE
  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)
    redirect_to task_path(task)
  end

  private

  # Strong Params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
