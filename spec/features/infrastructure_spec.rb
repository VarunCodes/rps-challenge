feature 'Homepage content' do
  scenario 'loads and displays content on page' do
    visit('/')
    expect(page).to have_content("Let's play Rock Paper Scissors!")
    expect(page).to have_content("Please sign in to play")
  end
end
