class PredictionController < ApplicationController
  def index
  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(1000, 1000)
  	@result = search.run
  end
end
