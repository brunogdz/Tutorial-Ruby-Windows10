class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html {redirect_to @task, notice: "Task was created nice job!"}
        format.json {render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
  
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html {redirect_to @task, notice: "Task was updated! nice job!"}
        format.json {render :show, status: :created, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
  
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html {redirect_to project_url(@task.project_id), notice: "Task was deleted! nice job!"}
      format.json {head :no_content}
    end
  end

  private
    def set_task
      # Para mostrar pelo id passamos o find pelo id
      @task = Task.find(params[:id])
    end

    def task_params
      # dentro do permit é o whitelist
    params.require(:task).permit(:title, :description, :project_id, :completed, :task_file)
      
      # t.string "title"
    # t.text "description"
    # t.integer "project_id", null: false
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    # t.boolean "completed"
    # t.text "task_file"
  end
end
