require 'spec_helper'

feature "User submits a contact inquiry" do
  # USER STORY FROM APOLLO

  it "displays a contact after it's created" do
    visit "/contacts"
    click_link "New Contact"
    descrip = "can I get dem digitz ~"
    fill_in "contact[email]", :with => "sup@lol.com"
    fill_in "contact[subject]", :with => "ay yo gurl"
    fill_in "contact[description]", :with => descrip
    fill_in "contact[first_name]", :with => "Flava"
    fill_in "contact[last_name]", :with => "FLAV"
    click_button "Create Contact"
    expect(page).to have_content(descrip)

    expect(Contact.count).to eq(1)
  end

end

feature "requires a username" do

  it 'errors if no name' do
    visit "/contacts/new"
    click_on "Create Contact"
    expect(page).to have_content "can't be blank"
  end

end

feature "making some FGs and seeing they exist or display idk" do

  it 'makes objects' do
    FactoryGirl.create_list(:contact, 3)
    visit "/contacts"
    expect(page).to have_content "Listing contacts"
  end

end
