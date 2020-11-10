class TasksController < ApplicationController
  before_action(:set_task, only: [:show])

  # READ ALL
  def index
    @tasks = Task.all
  end

  # READ ONE
  def show
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
