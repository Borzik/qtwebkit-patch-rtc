require 'rails_helper'

feature 'Events edit path', js: true do
  before(:each) do
    @event = Event.create(title: 'event1')
  end
  it 'should create event', js: true do
    # visit(new_event_path)
    # fill_in 'Title', with: 'event1'
    # click_button 'Create'
    # expect(page.body).to have_text 'event1'
    # click_link 'Edit'
    visit event_path(@event)
    # expect(page.body).to have_text 'Editing event'
    # fill_in 'Title', with: 'Lorem ipsum'
    # click_button 'Update'
    expect(page.body).to have_text('event1')
    sleep 2
    visit page.driver.browser.current_url
    expect(page.body).to have_text('Changed by AJAX')
  end
end
