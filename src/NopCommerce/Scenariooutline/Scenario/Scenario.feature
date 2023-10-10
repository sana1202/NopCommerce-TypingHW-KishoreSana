Feature: Demo NopCommerce's topmenu acceptance criteria

  As a User, I would like to check acceptance criteria of NopCommerce topmenu

  Background: User is on given URL
    When      User type URL https://demo.nopcommerce.com
    And       User click on Enter button
    Then      User is on given URL

    Scenario: Verify that user can navigate to books catergory
      When    User is on given URL
      And     Click on Books tab on Top Menu
      Then    User is navigated to Books Category page

      Scenario: Verify that User can see the Books category page with filters and list of products
        When    User is on given URL
        And     Click on Books tab on Top menu
        And     Check Filters and List tab
        Then    Books category page is displayed with filters and lsit tabs

        Scenario: Verify that user cab see 'Sort by' filter on Books Category page
          Given   User is on Books Category page
          When    User is on Books Category page
          And     Check 'Sort by' filter is present
          Then    'Sort by' filter is available on Books category page

          Scenario: Verify that User can see 'display filter' on Books Category page
            Given   User is on Books Category page
            When    User is on Books Category page
            And     Check 'Display' filter is present
            Then    'Display' filter is available on Books category page

            Scenario: Verify that User can see 'Grid' tab on Books Category page
              Given   User is on Books Category page
              When    User is on Books Category page
              And     Check 'Grid' tab is present
              Then    'Grid' tab is available on Book Category page

              Scenario: Verify that User can see 'List' tab on Books Category page
                Given   User is on Books Category page
                When    User is on Books Category page
                And     Check 'List' tab is present
                Then    'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' selection is present
    Then   'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in  'Sort by' filter
    Given User is on Books Category page
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is  functioning as expected(Note: Products are filtered in alphabetical order )
    Given User is on Books Category page
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Select 'Name: A to Z' filter
    Then  All products are displayed in alphabetical order



