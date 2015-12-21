require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la gema BiblioGem"
task :spec do
  sh "bundle exec rspec spec/biblio_gem_spec.rb"
  sh "bundle exec rspec spec/node_spec.rb"
  sh "bundle exec rspec spec/list_spec.rb"
  sh "bundle exec rspec spec/book_spec.rb"
  sh "bundle exec rspec spec/ebook_spec.rb"
  sh "bundle exec rspec spec/magazine_spec.rb"
  sh "bundle exec rspec spec/dslbibliography_spec.rb"
end

desc "Ejecutar las espectativas de la clase DSLBibliography"
task :prct11 do
  sh "bundle exec rspec spec/dslbibliography_spec.rb"
end