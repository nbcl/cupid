require 'application_system_test_case'

class InvitationsTest < ApplicationSystemTestCase
  setup do
    @invitation = invitations(:one)
  end

  test 'visiting the index' do
    visit invitations_url
    assert_selector 'h1', text: 'Invitations'
  end

  test 'creating a Invitation' do
    visit invitations_url
    click_on 'New Invitation'

    check 'Confirma' if @invitation.confirma
    fill_in 'Fecha', with: @invitation.fecha
    fill_in 'Local', with: @invitation.local_id
    fill_in 'User invita', with: @invitation.user_invita
    fill_in 'User invitado', with: @invitation.user_invitado
    click_on 'Create Invitation'

    assert_text 'Invitation was successfully created'
    click_on 'Back'
  end

  test 'updating a Invitation' do
    visit invitations_url
    click_on 'Edit', match: :first

    check 'Confirma' if @invitation.confirma
    fill_in 'Fecha', with: @invitation.fecha
    fill_in 'Local', with: @invitation.local_id
    fill_in 'User invita', with: @invitation.user_invita
    fill_in 'User invitado', with: @invitation.user_invitado
    click_on 'Update Invitation'

    assert_text 'Invitation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Invitation' do
    visit invitations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Invitation was successfully destroyed'
  end
end
