require 'test_helper'

class PumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pum = pums(:one)
  end

  test "should get index" do
    get pums_url
    assert_response :success
  end

  test "should get new" do
    get new_pum_url
    assert_response :success
  end

  test "should create pum" do
    assert_difference('Pum.count') do
      post pums_url, params: { pum: { age18: @pum.age18, age65plus: @pum.age65plus, agegroups: @pum.agegroups, agegroupsd: @pum.agegroupsd, borough: @pum.borough, classwkr_dcp: @pum.classwkr_dcp, disabilityagegroups: @pum.disabilityagegroups, educd_college: @pum.educd_college, educd_recode: @pum.educd_recode, engability: @pum.engability, id: @pum.id, lanx: @pum.lanx, mutu: @pum.mutu, mutud: @pum.mutud, nativity: @pum.nativity, povertylevel: @pum.povertylevel, state_puma: @pum.state_puma } }
    end

    assert_redirected_to pum_url(Pum.last)
  end

  test "should show pum" do
    get pum_url(@pum)
    assert_response :success
  end

  test "should get edit" do
    get edit_pum_url(@pum)
    assert_response :success
  end

  test "should update pum" do
    patch pum_url(@pum), params: { pum: { age18: @pum.age18, age65plus: @pum.age65plus, agegroups: @pum.agegroups, agegroupsd: @pum.agegroupsd, borough: @pum.borough, classwkr_dcp: @pum.classwkr_dcp, disabilityagegroups: @pum.disabilityagegroups, educd_college: @pum.educd_college, educd_recode: @pum.educd_recode, engability: @pum.engability, id: @pum.id, lanx: @pum.lanx, mutu: @pum.mutu, mutud: @pum.mutud, nativity: @pum.nativity, povertylevel: @pum.povertylevel, state_puma: @pum.state_puma } }
    assert_redirected_to pum_url(@pum)
  end

  test "should destroy pum" do
    assert_difference('Pum.count', -1) do
      delete pum_url(@pum)
    end

    assert_redirected_to pums_url
  end
end
