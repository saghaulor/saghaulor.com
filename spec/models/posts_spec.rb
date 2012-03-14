describe 'Creating posts' do

  it 'should require a title' do
    p = FactoryGirl.build(:post, :title => nil)
    expect {p.save!}.to raise_error
  end

  it 'should require a unique title' do
    Post.create(:title => 'A post to be duplicated', :body => 'Body')
    p = FactoryGirl.build(:post, :title => 'A post to be duplicated')
    expect {p.save!}.to raise_error
  end

  it 'should require a body' do
    p = FactoryGirl.build(:post, :body => nil)
    expect {p.save!}.to raise_error
  end

end
