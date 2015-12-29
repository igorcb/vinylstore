require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:disc) { FactoryGirl.build(:disc) }
  before do
  	@comment = Comment.create(email_source: "exemplo@email.com.br", 
  												email_target: "exemplo@email.com.br", 
  												disc_id: disc.id, 
  												description: 'lorem ipsum')
  end

  subject { @comment }

  it { should respond_to(:email_source) }
  it { should respond_to(:email_target) }
  it { should respond_to(:disc_id) }
  it { should respond_to(:description) }
  it { should respond_to(:disc) }

  describe "when email_source is not present" do
    before { @comment.email_source = '' }
    it { should_not be_valid }
  end  

  describe "when email_target is not present" do
    before { @comment.email_target = '' }
    it { should_not be_valid }
  end  

  describe "when comment_id is not present" do
    before { @comment.disc_id = '' }
    it { should_not be_valid }
  end  

  describe "when description is not present" do
    before { @comment.description = '' }
    it { should_not be_valid }
  end  

  describe "when contain at least 10 characters" do
    before { @comment.description = "a" * 9 }
    it { should_not be_valid }
  end


end
