describe 'Posts' do
  describe 'creating posts' do

    it 'should require a title and body' do
      p = FactoryGirl.create(:post)
      p.title.should_not be == nil
    end
  end
end
