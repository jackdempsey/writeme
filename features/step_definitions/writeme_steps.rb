When /^I run writeme with no arguments$/ do
  When %{I run writeme with ""}
end

When /^I run writeme with "([^"]*)"$/ do |arguments|
  When %{I run "ruby ../../bin/writeme #{arguments}"}
end

Then /^I should see the help output$/ do
  Then %{the output should contain "# Show this help message and quit"}
end
