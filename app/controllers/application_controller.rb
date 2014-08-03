class ApplicationController < ActionController::Base

  before_filter :load_projects

  protect_from_forgery with: :exception

  def load_projects
    @projects = Project.published
  end

end
