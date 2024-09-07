require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "" do
    contact = Contact.new
    expect(contact).to be_a(Contact)
  end
end
