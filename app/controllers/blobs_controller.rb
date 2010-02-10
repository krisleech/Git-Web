class BlobsController < ApplicationController

  def show
     @commit = @repository.commits(params[:commit]).first
     @blob = @repository.blob(params[:blob]) # @blob.name returns nil, bug reported: http://github.com/mojombo/grit/issues#issue/12
   #  @blob = @commit.tree.contents.select { |b| b.id == params[:blob ]}.first
  end
end
