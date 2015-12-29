require 'rails_helper'

RSpec.describe Disc, type: :model do
  before do
  	@disc = Disc.create(name: "Teste", year: 1985, price: 10, state: 0, description: 'lorem ipsum')
  end

  subject { @disc }

  it { should respond_to(:name) }
  it { should respond_to(:year) }
  it { should respond_to(:price) }
  it { should respond_to(:state) }
  it { should respond_to(:description) }
  it { should respond_to(:comments) }

  describe "when name is not present" do
    before { @disc.name = '' }
    it { should_not be_valid }
  end  

  describe "when year is not present" do
    before { @disc.year = '' }
    it { should_not be_valid }
  end  

  describe "when price is not present" do
    before { @disc.price = '' }
    it { should_not be_valid }
  end  

  describe "when state is not present" do
    before { @disc.state = '' }
    it { should_not be_valid }
  end  

  describe "when description is not present" do
    before { @disc.description = '' }
    it { should_not be_valid }
  end  

  describe "when contain at least 10 characters" do
    before { @disc.description = "a" * 9 }
    it { should_not be_valid }
  end

end
