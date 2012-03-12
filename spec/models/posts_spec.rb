describe 'Creating posts' do

  it 'should require a title' do
    p = FactoryGirl.create(:post, :title => nil)
    p.title.should_not == nil
  end

  it 'should require a unique title' do
    p = FactoryGirl.create(:post, :title => 'A post to be duplicated')
  end

  it 'should require a body' do
    p = FactoryGirl.create(:post, :body => nil)
    p.body.should_not == nil
  end

end
