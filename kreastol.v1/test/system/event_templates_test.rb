require "application_system_test_case"

class EventTemplatesTest < ApplicationSystemTestCase
  setup do
    @event_template = event_templates(:one)
  end

  test "visiting the index" do
    visit event_templates_url
    assert_selector "h1", text: "Event templates"
  end

  test "should create event template" do
    visit event_templates_url
    click_on "New event template"

    fill_in "Duration", with: @event_template.duration
    fill_in "Name", with: @event_template.name
    fill_in "Oldest", with: @event_template.oldest
    fill_in "Repetition", with: @event_template.repetition
    fill_in "Start at", with: @event_template.start_at
    fill_in "Youngest", with: @event_template.youngest
    click_on "Create Event template"

    assert_text "Event template was successfully created"
    click_on "Back"
  end

  test "should update Event template" do
    visit event_template_url(@event_template)
    click_on "Edit this event template", match: :first

    fill_in "Duration", with: @event_template.duration
    fill_in "Name", with: @event_template.name
    fill_in "Oldest", with: @event_template.oldest
    fill_in "Repetition", with: @event_template.repetition
    fill_in "Start at", with: @event_template.start_at
    fill_in "Youngest", with: @event_template.youngest
    click_on "Update Event template"

    assert_text "Event template was successfully updated"
    click_on "Back"
  end

  test "should destroy Event template" do
    visit event_template_url(@event_template)
    click_on "Destroy this event template", match: :first

    assert_text "Event template was successfully destroyed"
  end
end
