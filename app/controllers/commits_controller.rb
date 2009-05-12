class CommitsController < ApplicationController
  def show
    @commit = @repository.commits(params[:commit]).first
  end
end
