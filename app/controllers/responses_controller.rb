class ResponsesController < ApplicationController
  def new
    @poll = Poll.find(params[:poll])
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to polls_path, notice: 'Thanks for voting'
    else
      render :new
    end
  end

  private

  def response_params
    params.require(:response).permit!
  end

end