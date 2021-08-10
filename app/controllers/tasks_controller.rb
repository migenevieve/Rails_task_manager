class TasksController < ApplicationController
# get 'tasks/new'
def new
end
# get '/'
def index
  @tasks = Task.all
end

end
