class SeatsController < ApplicationController
  before_action :set_seat, only: %i[ show edit update destroy ]

  def index
    @seats = Seat.all
  end

  def show
  end

  def new
    @seat = Seat.new
  end

  def edit
  end

  def create
    @seat = Seat.new(seat_params)

    respond_to do |format|
      if @seat.save
        format.html { redirect_to seat_url(@seat), notice: "Seat was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @seat.update(seat_params)
        format.html { redirect_to seat_url(@seat), notice: "Seat was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @seat.destroy

    respond_to do |format|
      format.html { redirect_to seats_url, notice: "Seat was successfully destroyed." }
    end
  end

  private
    def set_seat
      @seat = Seat.find(params[:id])
    end

    def seat_params
      params.require(:seat).permit(:name, :reserved)
    end
end
