require "test_helper"

class EventTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_template = event_templates(:one)
  end

  test "should get index" do
    get event_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_event_template_url
    assert_response :success
  end

  test "should create event_template" do
    assert_difference("EventTemplate.count") do
      post event_templates_url, params: { event_template: { duration: @event_template.duration, name: @event_template.name, oldest: @event_template.oldest, repetition: @event_template.repetition, start_at: @event_template.start_at, youngest: @event_template.youngest } }
    end

    assert_redirected_to event_template_url(EventTemplate.last)
  end

  test "should show event_template" do
    get event_template_url(@event_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_template_url(@event_template)
    assert_response :success
  end

  test "should update event_template" do
    patch event_template_url(@event_template), params: { event_template: { duration: @event_template.duration, name: @event_template.name, oldest: @event_template.oldest, repetition: @event_template.repetition, start_at: @event_template.start_at, youngest: @event_template.youngest } }
    assert_redirected_to event_template_url(@event_template)
  end

  test "should destroy event_template" do
    assert_difference("EventTemplate.count", -1) do
      delete event_template_url(@event_template)
    end

    assert_redirected_to event_templates_url
  end
end
