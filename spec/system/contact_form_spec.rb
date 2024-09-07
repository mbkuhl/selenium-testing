require 'rails_helper'
 
RSpec.describe 'Contact Form', type: :system do
  it 'will submit a message and display it on the page using JavaScript', js: true do
 
    visit new_contact_path
 
    fill_in 'Name', with: 'Random Person'
    fill_in 'Email', with: 'random@example.com'
    fill_in 'Message', with: 'Hello World'
 
 
    click_button 'Send Message'
 
    expect(page).to have_content('Random Person posted: "Hello World"')
  end

  it 'shows an error message when the email is missing the @ sign', js: true do
    visit new_contact_path
   
    fill_in 'Name', with: 'Random Person'
    fill_in 'Email', with: 'randomexample.com'
    fill_in 'Message', with: 'Hello World'
   
    click_button 'Send Message'
   
    validation_message = page.evaluate_script("document.querySelector('#contact_email').validationMessage")
    expect(validation_message).to eq("Please include an '@' in the email address. 'randomexample.com' is missing an '@'.")
  end
end