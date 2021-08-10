class TasksController < ApplicationController
# get 'tasks/new'
  def new
    @task = Task.new
  end

  #post
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  # get '/'
  def index
    @tasks = Task.all
  end

  # get 'tasks/:id/edit'
  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
