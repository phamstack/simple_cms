class CreditCardsController < ApplicationController

  @@status = true
  @@counter = 1

  def open
    @@counter = @@counter + 1
  end

  def close
    @@counter = @@counter + 1
    @method = "close"
    @username = "Mason Mount"

    render json: {
      method: @method,
      username: @username,
      counter: @@counter,
      status: @@status
    }
  end

  def shut
    @@counter = @@counter + 1

    if @@counter % 2 == 1
      render plain: @@counter
    end

    @current_counter = @@counter

  end
end
