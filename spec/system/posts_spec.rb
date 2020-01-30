require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  describe 'destroy' do
    let!(:post) { Post.create!(body: 'hello') }
    example do
      visit root_path
      expect(page).to have_content 'hello'
      click_link 'Destroy'
      page.accept_confirm
      expect(page).to_not have_content 'hello'
      expect(page).to have_content 'Post was successfully destroyed.'
    end
  end
end
