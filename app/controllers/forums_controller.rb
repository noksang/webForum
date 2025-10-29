class ForumsController < ApplicationController
before_action :forum_finding, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:new]

  def index
    @forums = Forum.all.order("created_at DESC")
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = current_user.forums.build
  end

  def create
    begin
      @forum = current_user.forums.build(forum_params)
      # https://stackoverflow.com/a/6773038
      # rescue_from ActiveRecord::RecordInvalid, :with => :handler_method
      # https://guides.rubyonrails.org/error_reporting.html#manually-reporting-errors
    rescue ActiveRecord::RecordInvalid => e
      puts params.inspect
      Rails.error.unexpected(e)
    rescue Devise::UnpermittedParameters => e
      puts params.inspect
      Rails.error.unexpected(e)
    rescue Error => e
      puts 'Unknown Error'
      Rails.error.unexpected(e)
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path
    else
      render 'edit'
    end
  end

  def destroy
    @forum.destroy
    redirect_to root_path
  end

  private
  def forum_params
    params.require(:forum).permit(:thread, :content)
  end

  def forum_finding
    @forum = Forum.find(params[:id])
  end
end
