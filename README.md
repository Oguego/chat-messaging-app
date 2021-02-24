# README
This README document gives some steps that were necessary to get the application running, these includes:

* This chat messaging application was created using Rails 6

* The application also used some useful gems, such as 'Devise', 'Whenever' to enhance the system's functionality.

* Rspec was configured and used for test on the Application Model

* The application mailer was also configured to send appropriate weekly emails to the users

* MySQL database was used for the implementation.

========================= Additional Info==============================
* The application requires a user account access to be able to send and receive messages
   - New users signup using name and email address
   - Old users login
* When a user login, the left panel displays the name and email of the user, with a welcome message.
* The user should either click on 'Chat Room' or 'General Chat' below the left panel.
* The chat section displays chats from various users along with their names (in italics).
======================================================================
  
=======================Areas of Improvements==========================
* The UI was not great, as am not a front end person, but it is something i am willingly to improve on.

* Also I spent extra time in implementing the Action Cable, as i have not used it before, so a bit of research was done. Probably the current implementation of it might not be the best, but am sure to do better when next its required.

* Some view on the Devise were not arranged properly, or not too pleasant in alignment, however, it was not just down to my limited UI skills, but also on the fact that i focused on the Devise views that the chat application needs to display necessary output.
============================================================================================
  
=====================Good to Have==================
Features such as:
  * Number of connected users
  * Different colours for differ users to identify clearly each users
  * Chat clear mechanism, and so on
=================================================
