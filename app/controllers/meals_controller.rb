class MealsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_meal, only: %i[ show update destroy ]
  validates :name, :user_id, :vegetarian, :week, :proteins, :hydrates, :vegetables, :protconfection, :hydconfection, :hortconfection, :protperc, :hydperc, :hortperc, :healthyscore, presence: true



  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.where(:user_id => current_user.id)
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      render :show, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    if @meal.update(meal_params)
      render :show, status: :ok, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meal_params
      params.fetch(:meal).permit(:name, :user_id, :vegetarian, :week, :proteins, :hydrates, :vegetables, :protconfection, :hydconfection, :hortconfection, :protperc, :hydperc, :hortperc, :healthyscore)
    end
end
