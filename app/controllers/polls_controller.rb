class PollsController < ApplicationController
  def show
	  @poll = Poll.find(params[:id])
  end

  def feedback
	  @poll = Poll.find(params[:id])
	  @result = @poll.results.create(field_id: params[:field_id]) #store user data as well
  end

  def thankyou
	  @poll = Poll.find(params[:id])
	  @result = Result.find(params[:result][:id])
	  @result.feedback = params[:result][:feedback]
	  @result.save
  end
end
