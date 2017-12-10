feature 'Player can choose RPS moves' do
  it 'offers a trio of actions' do
    visit '/'
    fill_in :name, with: 'Claire'
    click_button 'Play'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
