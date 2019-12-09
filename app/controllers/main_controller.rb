class MainController < ApplicationController

  def index

  end

  def test
    @wishes = Wish.new
  end

end
