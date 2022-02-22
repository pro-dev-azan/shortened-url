require "application_system_test_case"

class UrlShortenersTest < ApplicationSystemTestCase
  setup do
    @url_shortener = url_shorteners(:one)
  end

  test "visiting the index" do
    visit url_shorteners_url
    assert_selector "h1", text: "Url Shorteners"
  end

  test "creating a Url shortener" do
    visit url_shorteners_url
    click_on "New Url Shortener"

    fill_in "Clicked", with: @url_shortener.clicked
    fill_in "Shortened url", with: @url_shortener.shortened_url
    fill_in "Url", with: @url_shortener.url
    click_on "Create Url shortener"

    assert_text "Url shortener was successfully created"
    click_on "Back"
  end

  test "updating a Url shortener" do
    visit url_shorteners_url
    click_on "Edit", match: :first

    fill_in "Clicked", with: @url_shortener.clicked
    fill_in "Shortened url", with: @url_shortener.shortened_url
    fill_in "Url", with: @url_shortener.url
    click_on "Update Url shortener"

    assert_text "Url shortener was successfully updated"
    click_on "Back"
  end

  test "destroying a Url shortener" do
    visit url_shorteners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Url shortener was successfully destroyed"
  end
end
