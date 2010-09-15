When /^I generate a README(?: without specifying a creator)?$/ do
  When %{I run writeme with "example_name"}
end

Then /^the README file should contain "([^"]*)"$/ do |text|
  Then %{the file "#{Writeme.output_filename}" should contain "#{text}"}
end
