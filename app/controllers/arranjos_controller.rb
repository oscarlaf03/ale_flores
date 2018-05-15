class ArranjosController < ApplicationController
  before_action :set_arranjo, only:[:edit, :update, :show, :destroy]
  def index
    @arranjos = policy_scope(Arranjo).order(created_at: :desc)
  end

  def new
    @arranjo = Arranjo.new
  end

  def create
    @arranjo = Arranjo.new(set_params)
    if @arranjo.save
      redirect_to arranjo_path(@arranjo)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @arranjo.update(set_params)
    if @arranjo.save
      redirect_to arranjo_path(@arranjo)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @arranjo.destroy
    redirect_to arranjos_path
  end

  private

  def set_params
    params.require(:arranjo).permit(:name, :description, :deparment, :dimentions, :hastes, :composition, :avalable_membership, :old_url_photo, :photo, :photo_cahe)
  end

  def set_arranjo
    @arranjo = Arranjo.find(params[:id])
    authorize @arranjo
  end
end
