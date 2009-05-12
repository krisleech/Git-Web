class TreesController < ApplicationController
  def show
    @commit = @repository.commits(params[:commit]).first
    @tree = @repository.tree(params[:tree])
  end
end
