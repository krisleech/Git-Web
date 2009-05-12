class RepositoriesController < ApplicationController
  skip_before_filter  :find_repository, :except => [:show]
  
  def index
    ignore = %w(. ..)
    @repositories = Dir.entries(SETTINGS[:git_path]).reject { |r| ignore.include? r  }
  end

  def show
    
  end

end
