class CardsController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @cards = Card.all
    render :index
  end

  def new
    @card = Card.new
    render :new
  end

  def create
    card = Card.create(card_params)
    redirect_to card
  end

  def edit
    render :edit
  end

  def show
    @params = params
    @card = Card.find(params[:id])
    render :show
  end

  private
  def card_params
    params.require(:card).permit(:name, :set, :description, :amount_cents)
  end
end