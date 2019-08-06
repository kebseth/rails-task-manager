class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :edit, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    # raise
    @check = checked?
  end
  # UPDATE

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def edit
    # raise
  end
  # CREATE

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  # DELETE
  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def checked?
    if @task.completed
      return 'This task is completed'
    else
      return 'This task is not completed'
    end
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
