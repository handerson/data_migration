namespace :db do
  namespace :data do
    desc "Migrate the database through scripts in db/data/migrate. Target specific version with VERSION=x. Turn off output with VERBOSE=false."
    task :migrate => :environment do
      ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
      ActiveRecord::Migrator.migrate("db/data/", ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
    end    
  end
end