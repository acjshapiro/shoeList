class ShoesController < ApplicationController

  def index
    @shoes =  Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def new
    @shoe = Shoe.new
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def create
  @shoe = Shoe.new(shoe_params)

  if @shoe.save
    redirect_to shoes_path
  else
    render :new
  end
end
def update
  @shoe = Shoe.find(params[:id])

  if @shoe.update(shoe_params)
    redirect_to shoe_path
  else
    render :edit
  end
end
def destroy
  Shoe.find(params[:id]).destroy
  redirect_to shoes_path
end

private

  def shoe_params
    params.require(:shoe).permit(:make, :model, :color, :price)
  end
end
