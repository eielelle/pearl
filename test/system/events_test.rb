require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Attendees", with: @event.attendees
    fill_in "Attending", with: @event.attending
    fill_in "Description", with: @event.description
    fill_in "Expiry", with: @event.expiry
    check "Ispublic" if @event.isPublic
    check "Ispublished" if @event.isPublished
    fill_in "Limit", with: @event.limit
    fill_in "Location", with: @event.location
    fill_in "Not attending", with: @event.not_attending
    fill_in "Price", with: @event.price
    fill_in "Title", with: @event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Attendees", with: @event.attendees
    fill_in "Attending", with: @event.attending
    fill_in "Description", with: @event.description
    fill_in "Expiry", with: @event.expiry.to_s
    check "Ispublic" if @event.isPublic
    check "Ispublished" if @event.isPublished
    fill_in "Limit", with: @event.limit
    fill_in "Location", with: @event.location
    fill_in "Not attending", with: @event.not_attending
    fill_in "Price", with: @event.price
    fill_in "Title", with: @event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    accept_confirm { click_on "Destroy this event", match: :first }

    assert_text "Event was successfully destroyed"
  end
end
