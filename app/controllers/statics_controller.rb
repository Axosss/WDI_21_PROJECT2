class StaticsController < ApplicationController
  def homepage
    @recipes = Recipe.all
  end
end
