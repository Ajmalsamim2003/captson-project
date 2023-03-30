Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'mohammadsamim2003@gmail.com' and password '5312Dorcey$'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @LabSession @completTest @Regression
  Scenario: Verify User can update Profile Information
    And User update Name 'Koman' and Phone '9164577939'
    And User click on Update button
    Then user profile information should be updated

  @Grouptest
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | 5312Dorcey$      | Dorcey123@  | Dorcey123@      |
    And User click on Change Password button
    Then a message should be displayed 'Password Updated Successfully'

  @Addcardtest @completTest @Regression
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 6617721232753376 | Johan         |              12 |           2026 |          951 |
    And User click on Add your card button
    Then a message should be displayed ‘Payment Method added successfully’

  @EditCardTest @completTest @Regression
  Scenario: Verify User can edit Debit or Credit card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 6616721662753377 | Honk       |              11 |           2025 |          159 |
    And user click on Update Your Card button
    Then a message should be displayed 'Payment Method updated Successfully'

  @RemovingtheCard @completTest @Regression
  Scenario: Verify User can remove Debit or Credit card
    And User click on remove option of card section
    Then payment details should be removed

  @AddingAddress @completTest @Regression
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName | phoneNumber | streetAddress | apt  | city       | state      | zipCode |
      | United States | Ajmal    |  9163121839 | 5212 Dorcey   | 5212 | Elk Grover | California |   95757 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Added Successfully’

  @UpdateAddress @completTest @Regression
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And user fill new updated address form with below information
      | country       | fullName | phoneNumber | streetAddress | apt | city      | state      | zipCode |
      | United States | Honk     |  9163221839 | 8726 blue way |  87 | Elk Grove | California |   95857 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Updated Successfully’

  @RemovingAddressTest @completTest @Regression
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
