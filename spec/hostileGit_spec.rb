require 'spec_helper'

describe "HostileGit" do

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

   describe "initial_time" do
     it "should be the time the method was initalized" do
       expect(@hostile.initial_time).to be <= Time.now.to_i
     end
   end

   describe "comitted?" do
     it "should tell us that the repo has been commited" do
       expect(@hostile.commited?).to_not be_nil
     end
   end

   describe "reset!" do
     it "should reset the repo with a git reset --hard HEAD" do
       expect(@hostile.reset!).to include("HEAD")
     end
   end

   describe "initial_timeout" do
     it "should not be timed out" do
       expect(@hostile.initial_timeout).to be_falsy
     end
     it "should be timed out" do
       @hostile.initial_time -= (30 * 3600)
       expect(@hostile.initial_timeout).to be_truthy
     end
   end

   describe "check_and_reset" do
     it "should respond to this method" do
       expect(@hostile).to respond_to(:check_and_reset)
     end
   end

   describe "start_being_hostile" do
     it "should respond to this method" do
       expect(@hostile).to respond_to(:start_being_hostile)
     end
   end
end
