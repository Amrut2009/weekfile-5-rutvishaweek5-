Feature: Nopcommerce Registration
  As a Use
  I want to check the Register functionality of Nopcommerce
  Background: I am on Nopcommerce Registration page
    Given  I open the Google Chrome Browser
    When  I open the Url https://demo.nopcommerce.com/register
    Then  I am on Nopcommerce Registration page
    Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
      When   I enter first name "<First Name>"
      And    I enter last name"<Last Name>"
      And    I enter Email address "<Email>"
      And    I enter password "<password>"
      And    I enter confirm password "<confirm password>"
      And    click on register button
      Then   I can see an error message "<error message>"
      And    I am not able to register

      Examples:
      | First name  |Last name  |Email address            |Password   |Confirm password       |Error Message                                |
      | ""          |Bakshi     |Bakshi@gmail.com         |456897     |456897                 |Please enter first name                      |
      |Rohan        |""         |Bakshi@gmail.com         |456897     |456897                 |Please enter last name                       |
      |Rohan        |bakshi     |""                       |456879     |456897                 |Please enter valid email address             |
      |Rohan        |bakshi     |Bakshi@gmail.com         |""         |456897                 |password is required                         |
      |Rohan        |bakshi     |Bakshi@gmail.com         |456879     |""                     |confirm password is required                 |
      |Rohan        |bakshi     |Bakshi@gmail.com         |456879     |45687                  |password and confirm password do not match   |
      |Rohan        |bakshi     |Bakshi@gmail.com         |45687      |""                     |minimum 6 character password required        |
      |""           |""         |""                       |""         |""                     | Mandatory (*)field required                 |

      Scenario: I should be able to select any one radio button form gender label of your personal details section
        Given   I am on gender label of your personal detail section
        When    I select "<male >" radio button
        And     I select "<female>" radio button
        Then    I am able to select any one of the radio button

        Scenario Outline:I should be able to select the date month and year from drop list of date of birth field
          Given   I am on date of birth field of your personal detail section
          When    I select day "<day>"
          And     I select month "<month>"
          And     I select year "<year>"
          Then    I am able to selct the day ,month and year from drop dopwn list
          Examples:
          |day |month    |year |
          |11  |november |1998|
      Scenario:  I should be able to check and uncheck the newletter box on options  section
        Given    I am on newsletter label on optiopn section
        When     I click on newsletter checkbox
        And      I again click on newsletterbox  checkbox
        Then     I was able to check and uncheck the box next to newsletter label
        Scenario: I should be able to register with valid mandatory (*) field data on registration page
          When    I enter first name "Rohan"
          And     I enter last name "Bakshi"
          And     I enter email address "bakshi@gnail.com"
          And     I enter password "456897"
          And     I enter confirm password "456897"
          And     I click on register button
          Then    I was able to register successfully






