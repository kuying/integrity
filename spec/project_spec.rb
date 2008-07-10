require File.dirname(__FILE__) + '/spec_helper'

describe Integrity::Project do
  before(:each) do
    @project = Integrity::Project.new
  end

  it 'should be valid' do
    @project.should be_valid
  end

  it 'should have a name' do
    @project.name = 'Integrity'
    @project.name.should == 'Integrity'
  end

  it 'should have a repository URI' do
    @project.uri = 'git://github.com/foca/integrity.git'
    @project.uri.should == 'git://github.com/foca/integrity.git'
  end

  it 'should have a project branch' do
    @project.branch = 'development'
    @project.branch.should == 'development'
  end

  it 'should have a build command' do
    @project.command = 'rake spec'
    @project.command.should == 'rake spec'
  end

  it 'should have a visibility' do
    @project.public = false
    @project.public.should be_false
  end
end
