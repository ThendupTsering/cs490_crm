class ReturnsController < ApplicationController
  before_action :set_client
  before_action :set_return, only: [:show, :edit, :update, :destroy]

  def index
    @returns = @client.returns.order(position: :asc)
  end

  def show
  end

  def new
    @return = @client.returns.new
  end

  def edit
  end

  def create
    @return = @client.returns.new(return_params)

    respond_to do |format|
      if @return.save
        format.html { redirect_to @client, notice: 'Return was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @return.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @return.destroy
    respond_to do |format|
      format.html { redirect_to @client, notice: 'Return was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_return
      @return = @client.returns.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def return_params
      params.require(:return).permit(:reason, :return_date, :product_id)
    end
end
