Given /^I have a config file with:$/ do |data|
  Given %{a file named "#{Writeme.defaults_filename}" with:}, data
end

When /^I generate a README(?: without specifying a creator)?$/ do
  When %{I run writeme}
end

Then /^the README file should contain "([^"]*)"$/ do |text|
  Then %{the file "#{Writeme.output_filename}" should contain "#{text}"}
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

