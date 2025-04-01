class TasksController < ApplicationController
  before_action :set_task, only: %i[ show update destroy ]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks.map { |task| task_with_links(task) }
  end

  # GET /tasks/1
  def show
    render json: task_with_links(@task)
  end

  # GET /tasks/search
  def search_by_title
    if params[:title].present?
      @tasks = Task.where("titulo LIKE ?", "%#{params[:title]}%")
      render json: @tasks.map { |task| task_with_links(task) }
    else
      render json: { error: "Title parameter is required" }, status: :bad_request
    end
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: task_with_links(@task), status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: task_with_links(@task)
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.expect(task: [ :titulo, :descricao, :status, :prazo ])
    end

    def task_with_links(task)
      {
        id: task.id,
        titulo: task.titulo,
        descricao: task.descricao,
        status: task.status,
        prazo: task.prazo,
        links: [
          { rel: "self", method: "GET", href: task_url(task) },
          { rel: "update", method: "PATCH", href: task_url(task) },
          { rel: "delete", method: "DELETE", href: task_url(task) },
          { rel: "all_tasks", method: "GET", href: tasks_url }
        ]
      }
    end
end
