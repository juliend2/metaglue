class GraphsController < ApplicationController
  def index
    @graphs = Graph.all
  end

  def new
    @graph = Graph.new
  end

  def create
    @graph = Graph.new(graph_params)
    if @graph.save
      redirect_to @graph
    else
      render 'new'
    end
  end

  def show
    @graph = Graph.find(params[:id])
  end

  def edit
    @graph = Graph.find(params[:id])
  end

  def update
    graph = Graph.find(params[:id])
    graph.update!(graph_params)
    redirect_to graph
  end

  private
  # Using a private method to encapsulate the permissible parameters
  # is just a good pattern since you'll be able to reuse the same
  # permit list between create and update. Also, you can specialize
  # this method with per-user checking of permissible attributes.
  def graph_params
    params.require(:graph).permit(:name, :description, :mermaid_blob)
  end
end
