Given /^I have a config file with:$/ do |data|
  Given %{a file named "#{Writeme.defaults_filename}" with:}, data
end

Given /^a project writeme.yml is present$/ do
  Given %{a file named "writeme.yml" with:}, File.read(File.join(*%w[templates writeme.yml]))
end

When /^I generate a README(?: without specifying a creator)?$/ do
  When %{I run writeme with "-g"}
  file_exists('README')
end

When /^I generate a README without a writeme\.yml present$/ do
  no_file_exists('writeme.yml')
  When %{I run writeme with "-g"}
end

When /^I run writeme with no arguments$/ do
  When %{I run writeme with ""}
end

When /^I run writeme with "([^"]*)"$/ do |arguments|
  When %{I run "ruby ../../bin/writeme #{arguments}"}
end

Then /^I should see the help output$/ do
  Then %{the output should contain "# Show this help message and quit"}
end

Then /^I should see the current version displayed$/ do
  Then %{the output should contain "writeme version #{Writeme::VERSION}"}
end

Then /^the README file should contain "([^"]*)"$/ do |text|
  Then %{the file "#{Writeme.output_filename}" should contain "#{text}"}
end

