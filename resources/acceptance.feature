Feature: Demo Nopcommerence's topmenu acceptance criteria

  As a user ,I would like to check acceptance criteria of Nopcommerce topmenu
    Background: User is on given URL
    When     User click on enter URL http://demo.nopcommerce.com
    And      User click on enter button
    Then     User is on given URL

    Scenario: Verify that user can navigate to books category
      When    User is on given URL
      And     Click on books tab onn top menu
      Then    User is navigated to books catagory page

      Scenario: Verify that user can see the books category page with filters and list of products
        When User is on given URL
        And  click on book tab menu
        And  check filter and list tab
        Then books catagory page is displayed with filter and list tabs

        Scenario: Verify user can see the 'display' filter on book category page
          Given User is on books category page
          When  User is on books category paget
          And  check the 'display' filter is present
          Then 'display' filter is available on book category page
       Scenario: verify user can see the 'sort by' filter on book category page
            Given User is on books category page
             When User is on books category page
            And Check the 'sort by'filter is present
            Then 'sort by' filter is available on book category page
       Scenario: Verify that user can see the 'grid' tab on book category page
         Given User is on book category page
         When User is on book category page
         And Check 'grid' tab is present
         Then 'Grid' filter is available on book category page

         Scenario: Verify that user can see the 'list'tab on book category page
           Given User is on book category page
           When  User is on book category page
           And check 'list'tab is present
           Then 'list'tab is available on book category page

           Scenario: Verify user can see the 'Name Ato Z' selection is present in 'sort by'filter
             Given User is on book category page
             When User is on book category page
             And click on 'sort by' filter name
             And  Check the 'name a to z 'selection is present
             Then 'name  ato z 'selection is available on 'sort by'filter

             Scenario: Verify that user can see 'name A to Z 'filter is first option in 'sort by'filter
               Given User is on book category page
               When  User is on books category page
               And  Click on 'sort by'
               And Click that 'name A to Z'filter is first in order
               Then 'name : A to Z 'is first option in order

               Scenario: Verify that user can see ;name A to Z'filter functioning as expected (note; products are filtered in alphabetical order
                 Given User is on books category page
                 When  User is on books  category page
                 And click on 'sort by'filter
                 And select 'name A to Z 'filter
                 Then All products are displayed in alphabetical order


