describe 'Posts' do
  describe 'creating posts' do
    it 'should require a name' do
      p = Post.new
      p.name = nil
      p.name.should_not be_empty
    end
  end
end
