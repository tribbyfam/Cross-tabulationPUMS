class DcpPumasController < ApplicationController

  def index
    @pumas = DcpPuma.all
    @pums = Pum.all
    @boros = Boro.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
