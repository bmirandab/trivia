require "application_system_test_case"

class UserGamesTest < ApplicationSystemTestCase
  setup do
    @user_game = user_games(:one)
  end

  test "visiting the index" do
    visit user_games_url
    assert_selector "h1", text: "User Games"
  end

  test "creating a User game" do
    visit user_games_url
    click_on "New User Game"

    fill_in "Color", with: @user_game.color
    fill_in "Games", with: @user_game.games_id
    fill_in "Users", with: @user_game.users_id
    click_on "Create User game"

    assert_text "User game was successfully created"
    click_on "Back"
  end

  test "updating a User game" do
    visit user_games_url
    click_on "Edit", match: :first

    fill_in "Color", with: @user_game.color
    fill_in "Games", with: @user_game.games_id
    fill_in "Users", with: @user_game.users_id
    click_on "Update User game"

    assert_text "User game was successfully updated"
    click_on "Back"
  end

  test "destroying a User game" do
    visit user_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User game was successfully destroyed"
  end
end
