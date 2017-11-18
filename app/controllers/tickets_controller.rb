class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def update
    @ticket=Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
        render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to tickets_path
  end

  private
  def ticket_params
    params.require(:ticket).permit(:title, :body)
  end
end
