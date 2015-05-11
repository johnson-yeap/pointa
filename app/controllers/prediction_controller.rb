class PredictionController < ApplicationController
  def index
  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(500, 500)
  	@result = search.run
  end
end
