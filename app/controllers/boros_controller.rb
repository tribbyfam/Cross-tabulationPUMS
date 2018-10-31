class BorosController < ApplicationController
  def index
    # @boros = Boros.all
    @pums = Pum.all
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

  def boros_nativity
    @boros = Boro.all
    @pums = Pum.all
  end

  def boros_age65
    @boros = Boro.all
    @pums = Pum.all
  end
end
