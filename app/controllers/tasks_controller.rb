class TasksController < ApplicationController
  
def main
  @tasks = Task.all
  @taskcount = Task.count
end

def new
  @task = Task.new
end

def create
  @task = Task.new(params.require(:task).permit(:title,:start,:end,:checkbox,:memo))
  if @task.save
    flash[:notice]="スケジュールを登録しました"
    redirect_to :tasks
  else
    render"new"
  end
end


def show
  @task = Task.find(params[:id])
end

def edit
  @task = Task.find(params[:id])
end

def update
  @task = Task.find(params[:id])
  if @task.update(params.require(:task).permit(:title,:start,:end,:checkbox,:memo))
    flash[:notice]="スケジュールを登録しました"
    redirect_to :tasks
  else
    render"edit"
  end
end

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to :tasks
end

end