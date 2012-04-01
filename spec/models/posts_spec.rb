describe 'Posts' do

  describe '.create' do

    it 'should require a non-empty title' do
      p = build(:post, :title => nil)
      expect {p.save!}.to raise_error
    end

    it 'should require a unique title' do
      Post.create(:title => 'A title to be duplicated', :body => 'Body')
      p = build(:post, :title => 'A title to be duplicated')
      expect {p.save!}.to raise_error
    end

    it 'should require a non-empty body' do
      p = build(:post, :body => nil)
      expect {p.save!}.to raise_error
    end

  end

  describe '.update' do

    it 'should require a non-empty title' do
      p = create(:post)
      p.title = nil
      expect {p.save!}.to raise_error
    end

    it 'should require a non-duplicate title' do
      Post.create(:title => 'A title to be duplicated', :body => 'Body')
      p = create(:post)
      p.title = 'A title to be duplicated'
      expect {p.save!}.to raise_error
    end

    it 'should require a non-empty body' do
      p = create(:post)
      p.body = nil
      expect {p.save!}.to raise_error
    end

  end

  describe '.destroy' do

    it 'should reduce the number of posts by one' do
      p = create(:post)
      Post.count.should == 1
      Post.where(:_id => p.id).delete
      Post.count.should == 0
    end

  end

end
