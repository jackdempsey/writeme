Feature: General executable usage
  In order to facilitate successful usage
  the writeme executable
  should provide a useful set of basic features

  Scenario: Running writeme with no arguments
    When I run writeme with no arguments
    Then I should see the help output

  Scenario: Running writeme with -h
    When I run writeme with "-h"
    Then I should see the help output

  Scenario: Running writeme with --help
    When I run writeme with "--help"
    Then I should see the help output

  Scenario: Running writeme with -v
    When I run writeme with "-v"
    Then I should see the current version displayed

  Scenario: Running writeme with --version
    When I run writeme with "--version"
    Then I should see the current version displayed
