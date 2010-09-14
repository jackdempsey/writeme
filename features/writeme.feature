Feature: Generating a README
  In order to make README generation easier
  A project's developer
  should be able to use an executable writeme script to generate a README

  Scenario: Running writeme with no arguments
    When I run writeme with no arguments
    Then I should see the help output
