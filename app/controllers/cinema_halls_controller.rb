# frozen_string_literal: true

class CinemaHallsController < ApplicationController
  before_action :set_cinema_hall, only: %i[show edit update destroy]

  def index
    @cinema_halls = CinemaHall.all
  end

  def show; end

  def new
    @cinema_hall = CinemaHall.new
  end

  def edit; end

  def create
    @cinema_hall = CinemaHall.new(cinema_hall_params)

    respond_to do |format|
      if @cinema_hall.save
        format.html { redirect_to cinema_hall_url(@cinema_hall), notice: 'Cinema hall was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cinema_hall.update(cinema_hall_params)
        format.html { redirect_to cinema_hall_url(@cinema_hall), notice: 'Cinema hall was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cinema_hall.destroy

    respond_to do |format|
      format.html { redirect_to cinema_halls_url, notice: 'Cinema hall was successfully destroyed.' }
    end
  end

  private

  def set_cinema_hall
    @cinema_hall = CinemaHall.find(params[:id])
  end

  def cinema_hall_params
    params.require(:cinema_hall).permit(:name, :number_of_rows, :number_of_columns)
  end
end
