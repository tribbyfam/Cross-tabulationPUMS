class DcpPumasController < ApplicationController

  def index
    @pums = Pum.all 
    @pumas = DcpPuma.all
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

  def dcp_pumas_nativity
    @pumas = DcpPuma.all
    @pums = Pum.all
    @boros = Boro.all
  end

  def dcp_pumas_age65
    @pumas = DcpPuma.all
    @pums = Pum.all
    @boros = Boro.all
  end

  def dcp_pumas_mutu
    @pumas = DcpPuma.all
    @pums = Pum.all
    @boros = Boro.all
  end
end
