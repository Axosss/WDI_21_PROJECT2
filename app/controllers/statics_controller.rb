class StaticsController < ApplicationController
  def homepage
    @recipes = Recipe.all
  end
  def show 

  end 

end
