@focus
Feature: Default values
  In order to make Writeme even easier to use
  the Writeme library
  should be able to read default values from a ~/.writeme.yml config file

  Scenario: Generating a README
    When I generate a README
    Then the stdout should contain "Generating README"

  Scenario: Generating a README without specifying creator
    Given I have a config file with:
      """
      ---
      :defaults:
        :creators:
          :authors: "Jack Dempsey"
        :legal:
          :copyright: "2010 Jack Dempsey"
          :license: "See LICENSE for details"
      """
    When I generate a README without specifying a creator
    Then the README file should contain "Jack Dempsey"
