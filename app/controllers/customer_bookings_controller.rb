class CustomerBookingsController < ApplicationController
  before_action :set_customer_booking, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:index]
  # GET /customer_bookings
  # GET /customer_bookings.json
  def index
    @customer_bookings = CustomerBooking.all
  end

  # GET /customer_bookings/1
  # GET /customer_bookings/1.json
  def show
  end

  # GET /customer_bookings/new
  def new
    @customer_booking = CustomerBooking.new
  end

  # GET /customer_bookings/1/edit
  def edit
  end

  # POST /customer_bookings
  # POST /customer_bookings.json
  def create
    @customer_booking = CustomerBooking.new(customer_booking_params)

    respond_to do |format|
      if @customer_booking.save
        format.html { redirect_to @customer_booking, notice: 'Customer booking was successfully created.' }
        format.json { render :show, status: :created, location: @customer_booking }
      else
        format.html { render :new }
        format.json { render json: @customer_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_bookings/1
  # PATCH/PUT /customer_bookings/1.json
  def update
    respond_to do |format|
      if @customer_booking.update(customer_booking_params)
        format.html { redirect_to @customer_booking, notice: 'Customer booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_booking }
      else
        format.html { render :edit }
        format.json { render json: @customer_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_bookings/1
  # DELETE /customer_bookings/1.json
  def destroy
    @customer_booking.destroy
    respond_to do |format|
      format.html { redirect_to customer_bookings_url, notice: 'Customer booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_booking
      @customer_booking = CustomerBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_booking_params
      params.require(:customer_booking).permit(:name, :email, :children, :phoneNumber)
    end
end
