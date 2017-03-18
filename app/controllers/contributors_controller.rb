class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find_by(username: params[:username])
  end
end
