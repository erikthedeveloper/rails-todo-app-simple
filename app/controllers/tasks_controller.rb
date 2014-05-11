class TasksController < ApplicationController

  respond_to :json

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    render :json => @tasks
    # respond_with(@tasks)   # WTF????
  end

  def show
    render :json => @task
  end

  def create

    if @task = Task.create(task_params)
      render :json => @task, status: :created
      # format.js
    else
      render :json => @task.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    # respond_to do |format|
    #   if @task.update(task_params)
    #     format.html { redirect_to @task, notice: 'Task was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: 'edit' }
    #     format.json { render json: @task.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    render :json => { destroyed: true, task: @task.destroy }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :description, :start_date, :due_date, :tasklist_id)
    end
end
