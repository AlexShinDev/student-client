class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_quote
    quotes = [
                    "Sometimes, I just want to gently caress Josh's beard... ~ Cyrus",
                    "Deep in my soul, I just wanted to a pirate. Arg ~ Josh",
                    "I want to mix it up and get Tacos today ~ Jacque"
                    ]
    quote = quotes.shuffle.first
  end

  helper_method :random_quote
end
