class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find_by(username: params[:username])
    @posts = @contributor.posts
  end
end
