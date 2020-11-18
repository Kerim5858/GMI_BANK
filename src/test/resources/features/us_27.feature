@US_27 @SmokeTest
Feature: US_27 System should allow to delete states using api end point

  @TC_2701
  Scenario: TC_2701 Before DELETE request
    Given I send a GET request to REST API URL  "https://www.gmibank.com/api/tp-states/1801"
    Then Before delete request HTTP Status Code should be "200"
    Then Before delete request response format should be "application/json"
    Then Before delete request id should be "1801"
    Then Before delete request name should be "ALASKA"

  @TC_2702
  Scenario: TC_2702 check DELETE request
    When I send a DELETE request to REST API URL  "https://www.gmibank.com/api/tp-states/1801"
    Then After delete request HTTP Status Code should be "200"
    Then After delete request response format should be "application/json"
    Then After delete request response after delete should contain nothing