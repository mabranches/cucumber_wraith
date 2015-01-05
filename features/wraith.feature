Feature: Wraith example

    Scenario: Compare site component with reference
    Given  I have a configuration  file "config.yaml" 
      And there is the reference site "http://www.veja.com.br"
      And  and the development site "http://www.veja.com.br"
      Then I should see no difference when I compare them both 
