Feature: Generation
  In order to create READMEs
  the writeme executable
  should provide a variety of generational features

  Scenario: Generating a README without a writeme.yml config
    When I generate a README without a writeme.yml present
    Then the stderr should contain "No writeme.yml file found"
