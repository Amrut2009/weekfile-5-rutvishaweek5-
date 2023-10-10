Feature: Bookcategory
  Background: I should be able to see homepage
Given I enter URL "https:demop.nocommerce.com" in browser
    And  I am on home page

    Scenario Outline: I should be able to see top menu tabs on home page with categories

      When  I am on home page
      Then  I should be able to see top menu tabs with "<categories>"

      Examples:
      |categories       |
      |computer         |
      |electronoic      |
      |apparel          |
      |digital downloads|
      |books            |
      |jewellery        |
      |gift card        |

      Scenario Outline:  I should be able to see book page with filter
        When  I select book category top menu tabs on home page
        Then  I should  be navigated to book category
        And   I should be able to see "<filters>"

        Examples:
        |filters |
        |short by|
        |display |
        |the grid|
        |list tab|

        Scenario Outline: I should be able to see list of terms of each filter
          Given  I am on book page
          When I click on "<filter>"
          Then I shopuld be able to see "<list>"in dropdown
          Examples:
          |filter            |list                                                                       |
          |sort by           |Name : a to z ,name z to a , price:low to high , high to low ,created on   |
          |display           | 3,6,9,                                                                    |

          Scenario Outline:I should be able to choose any filter option with specific result
            Given I am on book page
            When I click on "<filter>"
            And I click on "<option>"
            Then i should be able to choose any filter option from the list
            And i should be able to see "<result>"

            Examples:
            |filter     |option               |result                                                        |
            |sort by    |name a to z          |sorted product with product name in alphabetical order a to z |
            |sort by    |name z to a          |sorted product with product name in alphabetical order z to a |
            |sort by    |price low  to high   |sorted product with the price in descending order             |
            |sort by    |price high to low    |sorted product with the price in ascending order              |
            |sort by    |created on           |recently added product should be show first                   |
            |sort by    | 3                   |3 product per page                                            |
            |sort by    |6                    |6 product per page                                            |
            |sort by    |9                    |9 product per page                                            |

          Scenario Outline:I should be able to see product display format accordingly display  format type as per given in srs document
            Given I am on book page
            When  I click on "<display format icon>"
            Then  I should be able to see product dispaly format accourding display format type as per given in srs document
            Examples:
            |display format icon |
            |grid                |
            |list                |






