class PredictionController < ApplicationController
  def index
  	available_courses = [["a",2],["b",3],["c",3],["d",3],["e",5],["f",2],["g",4],["h",4],["i",4],["j",4],["k",3]]
  	SimpleGa::GeneticAlgorithm::Chromosome.set_params(available_courses, 58, 16)

  	search = SimpleGa::GeneticAlgorithm::GeneticSearch.new(100, 200) # new instance
  	@results = search.run
  	@best_result = search.best_chromosome
  end
end
