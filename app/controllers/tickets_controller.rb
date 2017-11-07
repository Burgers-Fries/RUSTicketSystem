class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(find(params[:id]))
  end

  def create
    @ticket = Ticket.new(ticket_params)
  end

  private
  def ticket_params
    params.require(:ticket).permit(:title, :body)
  end
end
