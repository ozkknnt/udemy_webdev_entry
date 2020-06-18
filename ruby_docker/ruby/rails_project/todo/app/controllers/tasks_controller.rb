class TasksController < ApplicationController
  def index
    @tasks = Task.all # @マークはテンプレート変数　Task.allはTaskテーブルのすべての行を取得するSQLを書かなくてもよい
  end
end
