class TicketsController < ApplicationController
  before_action :set_client
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = @client.tickets.order(position: :asc)
  end

  def show
  end

  def new
    @ticket = @client.tickets.new
  end

  def edit
  end

  def create
    @ticket = @client.tickets.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @client, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to @client, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_ticket
      @ticket = @client.tickets.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:date_created, :feedback)
    end
end
