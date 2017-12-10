feature 'Homepage content' do
  scenario 'loads and displays content on page' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
