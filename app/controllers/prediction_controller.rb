class PredictionController < ApplicationController
  def index
  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(1000, 500) # new instance
  	@result = search.run
  	@solutions = search.unique_solutions
  end

  def new
  end
end
