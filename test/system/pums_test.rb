require "application_system_test_case"

class PumsTest < ApplicationSystemTestCase
  setup do
    @pum = pums(:one)
  end

  test "visiting the index" do
    visit pums_url
    assert_selector "h1", text: "Pums"
  end

  test "creating a Pum" do
    visit pums_url
    click_on "New Pum"

    fill_in "Age18", with: @pum.age18
    fill_in "Age65plus", with: @pum.age65plus
    fill_in "Agegroups", with: @pum.agegroups
    fill_in "Agegroupsd", with: @pum.agegroupsd
    fill_in "Borough", with: @pum.borough
    fill_in "Classwkr Dcp", with: @pum.classwkr_dcp
    fill_in "Disabilityagegroups", with: @pum.disabilityagegroups
    fill_in "Educd College", with: @pum.educd_college
    fill_in "Educd Recode", with: @pum.educd_recode
    fill_in "Engability", with: @pum.engability
    fill_in "Id", with: @pum.id
    fill_in "Lanx", with: @pum.lanx
    fill_in "Mutu", with: @pum.mutu
    fill_in "Mutud", with: @pum.mutud
    fill_in "Nativity", with: @pum.nativity
    fill_in "Povertylevel", with: @pum.povertylevel
    fill_in "State Puma", with: @pum.state_puma
    click_on "Create Pum"

    assert_text "Pum was successfully created"
    click_on "Back"
  end

  test "updating a Pum" do
    visit pums_url
    click_on "Edit", match: :first

    fill_in "Age18", with: @pum.age18
    fill_in "Age65plus", with: @pum.age65plus
    fill_in "Agegroups", with: @pum.agegroups
    fill_in "Agegroupsd", with: @pum.agegroupsd
    fill_in "Borough", with: @pum.borough
    fill_in "Classwkr Dcp", with: @pum.classwkr_dcp
    fill_in "Disabilityagegroups", with: @pum.disabilityagegroups
    fill_in "Educd College", with: @pum.educd_college
    fill_in "Educd Recode", with: @pum.educd_recode
    fill_in "Engability", with: @pum.engability
    fill_in "Id", with: @pum.id
    fill_in "Lanx", with: @pum.lanx
    fill_in "Mutu", with: @pum.mutu
    fill_in "Mutud", with: @pum.mutud
    fill_in "Nativity", with: @pum.nativity
    fill_in "Povertylevel", with: @pum.povertylevel
    fill_in "State Puma", with: @pum.state_puma
    click_on "Update Pum"

    assert_text "Pum was successfully updated"
    click_on "Back"
  end

  test "destroying a Pum" do
    visit pums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pum was successfully destroyed"
  end
end
