class TransactionsController < ApplicationController
  before_action :set_client
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = @client.transactions.order(position: :asc)
  end

  def show
  end

  def new
    @transaction = @client.transactions.new
  end

  def edit
  end

  def create
    @transaction = @client.transactions.new(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @client, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to @client, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_transaction
      @transaction = @client.transactions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:status, :total, :count, :open_date, :close_date, :client_id, :salesperson_id, :product_id)
    end
end
