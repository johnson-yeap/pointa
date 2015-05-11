class PredictionController < ApplicationController
  def index
  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(500, 100)
  	@result = search.run
  end
end
