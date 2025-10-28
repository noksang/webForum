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
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    unless @forum.save
      render inline:
      "
      <% @forum.errors.full_messages.each do |err| %>
        <%= err %>
      <% end %>
      <br>
      @forum.id = <%= @forum.id %><br>
      @forum.thread = <%= @forum.thread %><br>
      @forum.content = <%= @forum.content %><br>
      @forum.user_id = <%= @forum.user_id %><br>
      current_user.id = <%= current_user.id %><br>
      ", status: :unprocessable_entity
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
