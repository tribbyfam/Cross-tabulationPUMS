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
    @total_native = (@pums.mn.native.count + @pums.bx.native.count + @pums.bk.native.count + @pums.qn.native.count + @pums.si.native.count) * 100 / @pums.count(:nativity).to_f
    @total_foreign = (@pums.mn.foreign.count + @pums.bx.foreign.count + @pums.bk.foreign.count + @pums.qn.foreign.count + @pums.si.foreign.count) * 100 / @pums.count(:nativity).to_f
  end

  def boros_age65
    @boros = Boro.all
    @pums = Pum.all
    @total_over65 = (@pums.mn.over_65.count + @pums.bx.over_65.count + @pums.bk.over_65.count + @pums.qn.over_65.count + @pums.si.over_65.count) * 100 / @pums.count(:age65plus).to_f
    @total_under65 = (@pums.mn.under_65.count + @pums.bx.under_65.count + @pums.bk.under_65.count + @pums.qn.under_65.count + @pums.si.under_65.count) * 100 / @pums.count(:age65plus).to_f
  end

  def boros_mutu
    @boros = Boro.all
    @pums = Pum.all
    @total_wnh = (@pums.mn.wnh.count + @pums.bx.wnh.count + @pums.bk.wnh.count + @pums.qn.wnh.count + @pums.si.wnh.count) * 100 / @pums.count(:mutu).to_f
    @total_bnh = (@pums.mn.bnh.count + @pums.bx.bnh.count + @pums.bk.bnh.count + @pums.qn.bnh.count + @pums.si.bnh.count) * 100 / @pums.count(:mutu).to_f
    @total_his = (@pums.mn.his.count + @pums.bx.his.count + @pums.bk.his.count + @pums.qn.his.count + @pums.si.his.count) * 100 / @pums.count(:mutu).to_f
    @total_onh = (@pums.mn.onh.count + @pums.bx.onh.count + @pums.bk.onh.count + @pums.qn.onh.count + @pums.si.onh.count) * 100 / @pums.count(:mutu).to_f
    @total_anh = (@pums.mn.anh.count + @pums.bx.anh.count + @pums.bk.anh.count + @pums.qn.anh.count + @pums.si.anh.count) * 100 / @pums.count(:mutu).to_f
    @total_twonh = (@pums.mn.twonh.count + @pums.bx.twonh.count + @pums.bk.twonh.count + @pums.qn.twonh.count + @pums.si.twonh.count) * 100 / @pums.count(:mutu).to_f
  end
end
