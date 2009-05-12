# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  require 'grit'

  include Grit

  # Make objects compatible with url helpers
  class Grit::Tree
    def to_param
      self.id
    end
  end

  class Grit::Blob
    def to_param
      self.id
    end
  end


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  before_filter :find_repository

  private

  def find_repository
   path = [SETTINGS[:git_path], params[:repository]].join('/')
   is_bare = !(File.exists?(path + '/.git'))
   @repository = Repo.new(path, { :is_bare => is_bare })
  end
end
