class PredictionController < ApplicationController
  def index
  	search = Ai4r::GeneticAlgorithm::GeneticSearch.new(500,100)
  	@result = search.run
  end
end
