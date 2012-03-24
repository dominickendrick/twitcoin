#unless ARGV.any? {|a| a =~ /^gems/} # Don't load anything when running the gems:* tasks

#vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
#$LOAD_PATH.unshift(File.dirname(vendored_cucumber_bin) + '/../lib') unless vendored_cucumber_bin.nil?

begin
 # require 'cucumber/rake/task'

  namespace :twitcoin do
    task :fetch => :environment do
      TwitterParserHelper.authenticateApp
      TwitterParserHelper.getMentions("@dominickendrick").each do |tweet|
        puts tweet.text
      end
    end
  end
end