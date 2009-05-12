class BlobsController < ApplicationController

  def show
     @commit = @repository.commits(params[:commit]).first
  @blob = @repository.blob(params[:blob])
  end
end
