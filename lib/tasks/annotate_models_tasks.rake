# #
# old task :annotate_models removed

namespace :db do
  desc "Add schema information (as comments) to model files"
  task :annotate do
    require File.join(File.dirname(__FILE__), "../annotate_models.rb")
    AnnotateModels.do_annotations
  end

  desc "Updates database (migrate and annotate models)"
  task :update => %w(migrate annotate)
end

desc "Annotate Models with schema"
task :annotate_models do
  ENV['POSITION'] = 'top'
  require File.join(File.dirname(__FILE__), "../annotate_models.rb")
  AnnotateModels.do_annotations
end
