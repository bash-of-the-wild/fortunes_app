class Api::MyExamplesController < ApplicationController
  def fortune_action
    fortune_messages = [
                        "you will be rich and successful.",
                        "you will die a horribly ironic death",
                        "check back later..."
                        ]

    @message = "I look into the mystic sand of time and see... #{fortune_messages.sample}"
    render 'fortune_view.json.jbuilder'
  end

  def lotto_action
    possible_numbers = (1..60).to_a
    @lucky_numbers = possible_numbers.sample(6).join(", ")

    render 'lotto_view.json.jbuilder'
  end

  def count_action
    @count = 0 #doesn't work
    @count += 1

    render 'count_view.json.jbuilder'
  end
end
