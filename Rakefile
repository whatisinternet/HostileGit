require 'rspec/core/rake_task'
require "bundler/gem_tasks"

Rspec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color','--format']
end

task :default => :spec
