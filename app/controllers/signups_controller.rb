class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update, :destroy]

  def index
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end

  def show
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to signups_path
    else
      render :new
    end
  end

  def edit
    @signup = Signup.find(params[:id])
  end

  def update
    @signup = Signup.find(params[:id])
    if @signup.update(signup_params)
      redirect_to signups_path
    else
      render :edit
    end
  end

  def destroy
    @signup = Signup.find(params[:id])
    @signup.destroy
    redirect_to signups_path
  end

  private

    def set_signup
      @signup = Signup.find(params[:id])
    end
    def signup_params
      params.require(:signup).permit(:name, :surname, :age)
  end
end
