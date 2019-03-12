Feature: Send email with an image attachment

  #Normal Scenario
  Scenario Outline: Send email with an image attachment

    Given I am logged into a Gmail account
    When I click on New message
    And I enter "<email>" as recipient address
    And I enter "<attachment>" as the file in body text
    And I click on send
    Then I have sent an email with an attachment to the proper recipient

    Examples:
      | email                         | attachment |
      | alexanormandin@hotmail.com    | image1.jpg      |
     # | alexnorms6528@gmail.com       | image2.jpg      |
     # | alexa.normandin@mail.mcgil.ca | image3.jpg      |




    #Alternate FLow
  Scenario Outline: An authenticated user logs in to send an email with
   attached image to 2 different recipients then logs out

     Given I am logged into a Gmail account
     When I click on New message
     And I enter "<email>" as recipient address
     And I enter "<ccemail>" as recipient CC
     And I enter "<attachment>" as the file in body text
     And I click on send
     Then I have sent an email with an attachment to the proper recipient


     Examples:
       | email                    |               ccemail                         | attachment |
       | alexanormandin@hotmail.com         |     alexnorms6528@gmail.com         |  image1.jpg     |
      # | alexanormandin@hotmail.com         |     alexa.normandin@mail.mcgill.ca  |  image2.jpg     |
      # | alexa.normandin@mail.mcgill.ca     |        alexyunus@gmail.com          |  image3.jpg     |



     #Error Flow
   Scenario Outline: An authenticated user logs in to send an email with
   attached image to 2 different recipients then logs out

     Given I am logged into a Gmail account
     When I click on New message
     And I enter "<email>" as invalid recipient address
     And I enter "<attachment>" as the file in body text
     And I click on send
     Then I have sent an email with an attachment to the proper recipient

     Examples:
       | email                   | attachment |
       | jlkds                   | image1.jpg      |
      # | jingter sdsf            | image2.jpg      |
      # | jakjixu                 | image3.jpg      |
