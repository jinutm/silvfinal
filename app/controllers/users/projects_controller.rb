class Users::ProjectsController < ApplicationController
  inherit_resources
  actions :index
  belongs_to :user

  def collection
    @projects ||= end_of_association_chain.page(params[:page]).per(10)
  end
end
