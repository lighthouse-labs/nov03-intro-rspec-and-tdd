require_relative '../lib/user'

## test code here

describe(User) do
  
  before do
    @user = User.new('krumbo', 'temp123')
  end

  describe '#initialize' do 

    it 'allows creation of users with username and password' do 
      expect(@user.username).to eq('krumbo')
      # assert_equal user.username, 'Krumbo'     
    end
  end

  describe '#password' do 
    it 'should not be retrievable' do
      expect { @user.password }.to raise_error(NoMethodError)
    end
  end

  # user.authenticate('krumbo', 'temp123') => true
  # user.authenticate('krumbo', 'temp') => false
  describe '#authenticate' do
    it 'returns true for correct combo' do
      expect(@user.authenticate('krumbo', 'temp123')).to be(true)
    end
    it 'returns false for incorrect password' do
      expect(@user.authenticate('krumbo', 'temp')).to be(false)
    end
    it 'returns false for correct password but incorrect username' do
      expect(@user.authenticate('krumbo123', 'temp123')).to be(false)
    end
  end

end

