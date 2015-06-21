# encoding: UTF-8

class String
  def self.colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end

  def cyan
    self.class.colorize(self, 36)
  end

  def green
    self.class.colorize(self, 32)
  end
end

desc 'Setup the project'
task :setup do
  puts "Installing bundle...".cyan
  sh "bundle check --path=vendor/bundle || bundle install --jobs=4 --retry=2 --path=vendor/bundle"
  
  puts "Installing pods...".cyan
  sh "bundle exec pod install --project-directory=Tests"
end

desc 'Build and run tests'
task :test do
  cmd = "set -o pipefail && xcodebuild "+
     "-scheme SPLCoreTests "+
     "-workspace Tests/SPLCoreTests.xcworkspace "+
     "-sdk iphonesimulator "+
     "-destination 'platform=iOS Simulator,name=iPhone 6' "+ 
     "clean test "+
     "ONLY_ACTIVE_ARCHS=NO "+
     "GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES "+
     "RUN_CLANG_STATIC_ANALYZER=NO | bundle exec xcpretty -c"

  if ENV["CIRCLECI"] == "true"
    cmd += " --report junit --output ${CIRCLE_TEST_REPORTS}/junit.xml"
  end

  sh "#{cmd}"
end

desc 'Lints SPLCore with various static analyzers'
task :lint do

  puts "\nChecking for CocoaPods updates...".cyan
  puts `bundle exec pod outdated --project-directory=Tests`

  puts "\nLinting file header styles...".cyan
  puts `bundle exec obcd --path Additions find HeaderStyle`
  puts `bundle exec obcd --path Models find HeaderStyle`
  puts `bundle exec obcd --path SPLCore find HeaderStyle`

end

task :default => :build
