feature 'Sign in' do
  scenario 'player can enter name' do
    visit('/')
    expect(page).to have_field("name")
  end

  scenario 'player can sign in and have it displayed' do
    visit '/'
    fill_in :name, with: 'Jim'
    click_button 'Play'
    expect(page).to have_content 'Welcome, Jim'
  end
end
