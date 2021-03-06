# -*- encoding: utf-8 -*-

## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'acts_as_versioned'
  s.version           = '0.6.0.tiss1'
  s.date              = '2012-02-07'
  s.rubyforge_project = 'acts_as_versioned'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Add simple versioning to ActiveRecord models (TISS version)."
  s.description = "Add simple versioning to ActiveRecord models (TISS version).

Each model has a to-many model named mymodel_h which records all changes 
(including destroys but not deletes) made to the model. This is the version
used by http://tiss.tuwien.ac.at and substantially differs from the original
version. If you want to use acts_as_versioned in your project we recommend
to use technoweenie's version (can be found also on github)"

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Rick Olson", "Johannes Thoma"]
  s.email    = 'johannes.thoma@rise-world.com'
  s.homepage = 'http://github.com/tiss/acts_as_versioned'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README MIT-LICENSE CHANGELOG]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  s.add_dependency('activerecord', ["~> 2.3.14"])

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  s.add_development_dependency('sqlite3-ruby', ["~> 1.3.1"])

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    CHANGELOG
    Gemfile
    MIT-LICENSE
    README
    RUNNING_UNIT_TESTS
    Rakefile
    acts_as_versioned.gemspec
    init.rb
    lib/acts_as_versioned.rb
    test/abstract_unit.rb
    test/database.yml
    test/fixtures/authors.yml
    test/fixtures/landmark.rb
    test/fixtures/landmark_h.yml
    test/fixtures/landmarks.yml
    test/fixtures/locked_pages.yml
    test/fixtures/locked_pages_revisions.yml
    test/fixtures/locked_rolle.rb
    test/fixtures/migrations/1_add_versioned_tables.rb
    test/fixtures/page.rb
    test/fixtures/pages_h.yml
    test/fixtures/pages.yml
    test/fixtures/rolle.rb
    test/fixtures/widget.rb
    test/migration_test.rb
    test/schema.rb
    test/versioned_test.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
