require 'wraith'
require 'byebug'

  def capture(config, cli)
    cli.reset_shots(config)
    cli.check_for_paths(config)
    cli.setup_folders(config)
    cli.save_images(config)
    cli.crop_images(config)
    cli.compare_images(config)
    cli.generate_thumbnails(config)
    cli.generate_gallery(config)
  end


Given(/^I have a configuration  file "(.*?)"$/) do |arg1|
    @config = arg1
end

Given(/^there is the reference site "(.*?)"$/) do |arg1|
    @reference = arg1
end

Given(/^and the development site "(.*?)"$/) do |arg1|
    @dev = arg1
end

Then(/^I should see no difference when I compare them both$/) do
  puts @reference
  puts @dev
  cli = Wraith::CLI.new
  capture(@config, cli)
end
