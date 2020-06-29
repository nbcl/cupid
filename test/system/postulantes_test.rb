require "application_system_test_case"

class PostulantesTest < ApplicationSystemTestCase
  setup do
    @postulante = postulantes(:one)
  end

  test "visiting the index" do
    visit postulantes_url
    assert_selector "h1", text: "Postulantes"
  end

  test "creating a Postulante" do
    visit postulantes_url
    click_on "New Postulante"

    check "Autorization" if @postulante.autorization
    fill_in "Content", with: @postulante.content
    fill_in "Name", with: @postulante.name
    click_on "Create Postulante"

    assert_text "Postulante was successfully created"
    click_on "Back"
  end

  test "updating a Postulante" do
    visit postulantes_url
    click_on "Edit", match: :first

    check "Autorization" if @postulante.autorization
    fill_in "Content", with: @postulante.content
    fill_in "Name", with: @postulante.name
    click_on "Update Postulante"

    assert_text "Postulante was successfully updated"
    click_on "Back"
  end

  test "destroying a Postulante" do
    visit postulantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postulante was successfully destroyed"
  end
end
