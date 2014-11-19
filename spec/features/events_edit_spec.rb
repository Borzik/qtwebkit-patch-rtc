require 'rails_helper'

feature 'Events edit path', js: true do
  before(:each) do
    @event = Event.create(title: 'event1')
  end
  it 'should create event', js: true do
    visit event_path(@event)
    expect(page.body).to have_text('event1')
    sleep 5
    visit events_path
    expect(page.body).to have_text('Changed by AJAX')
  end
end
