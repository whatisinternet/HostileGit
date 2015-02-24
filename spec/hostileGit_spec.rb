require 'spec_helper'

describe HostileGit do

  before (:each) do
    @hostile = HostileGit::Hostility.new()
  end

   describe "initalize" do
     it 'should initalize with a given timeout' do
       _hostile = HostileGit::Hostility.new(7)
       expect(_hostile.timeout).to equal(7)
     end
     it 'should initalize without a given timeout to 10 minutes' do
       _hostile = HostileGit::Hostility.new()
       expect(_hostile.timeout).to equal(10)
     end
   end

   describe "timeout" do
     it 'should return the current timeout' do
       expect(@hostile.timeout).to equal(10)
     end
   end

   describe "last_commit" do
     it "should have the time since the last commit" do
       expect(@hostile.last_commit).to equal(10)
     end
   end

   describe "comitted?" do
     it "should tell us that the repo has not been commited to" do
       expect(@hostile.commited?).to equal(false)
     end
     it "should tell us that the repo has been commited to" do
       expect(@hostile.commited?).to equal(true)
     end
   end

end
