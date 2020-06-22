class TasksController < ApplicationController
  def index
    @tasks = Task.all # @マークはテンプレート変数　Task.allはTaskテーブルのすべての行を取得するSQLを書かなくてもよい
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def task_params
      params[:task].permit(:title)
    end
end
