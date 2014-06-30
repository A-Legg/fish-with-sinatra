require 'spec_helper'

feature "Homepage" do

  scenario  "should have Fish Homepage" do
    visit "/"
    expect(page).to have_content("Fish Homepage")
  end

  scenario "should have list of three fish" do
    visit "/"
    expect(page).to have_content("Mola Mola Lion Fish Tiger Fish")
  end

  scenario "click on fish to get details" do
    visit "/"
    click_link "Mola Mola"
    expect(page).to have_content("heaviest known bony fish")
    visit "/"
    click_link "Lion Fish"
    expect(page).to have_content("venomous marine fish")
    visit "/"
    click_link "Tiger Fish"
    expect(page).to have_content("sharp teeth")
  end

  scenario "wikipedia link" do
    visit "/"
    click_link "Mola Mola"
    expect(page).to have_content("Wikipedia Link")
    click_link "Wikipedia Link"
    expect(page).not_to have_content("Wikipedia Link")

    visit "/"
    click_link "Lion Fish"
    expect(page).to have_content("Wikipedia Link")
    visit "/"
    click_link "Tiger Fish"
    expect(page).to have_content("Wikipedia Link")

  end

  scenario "Home Page Link" do
    visit "/"
    click_link "Mola Mola"
    expect(page).to have_content("Home Page")
  end

  scenario "home page link goes to homepage" do
    visit "/"
    click_link "Mola Mola"
    click_link "Home Page"
    expect(page).to have_content("Fish Homepage")
  end
end
