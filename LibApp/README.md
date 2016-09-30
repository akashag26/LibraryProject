# README

This README would normally document whatever steps are necessary to get the
application up and running.

SysAdmin Details: Username: sysadmin@gmail.com Password: sysadmin
  
We have implemented all of the basic functionalities along with the first part of bonus assignment so far.

Git Repository Location: https://github.com/akashag26/LibraryProject/
Heroku Deployed Location: https://libraryapp-oodd1.herokuapp.com/
CSC/ECE 517 OODD Program 1


Features:

Admin Features

The admin logs into the system using the the sign-in page.

Sigining in will take the admin to the webpage where he can do the following:

1. Edit Profile Details: Admin can add/update his profile details(like address, phone_no). Email can't be changed.

2. Manage Admins: When clicked this it display two options as:
	a. Create New Admin: New admin can be cretaed from here.
	b. View/Delete Amins; Admins can be viewed and delete. An admin can delete other admin except himself and sysadmin. Check destroy like disabled in these case.


3. Manage Rooms:  When clicked this it display following options as:
	a. Add a room:  Room can be added via it. A room will have the following attributes: Room Number (unique for each room), building, size, status
	b. View/Edit rooms: View the list of all the rooms. View the schedule for the rooms.Displays the details of all the rooms. Provides following action for each room:
		- Edit: Attributes of a room can be edit except room no.
		- Details: Displays one week schedule for that particular room. 2 hrs slots are fixed. On the displayed schedule, if a room is available, you can book it by 
		  clicking  'Available', which redirects to booking bage. If a room is booked , the schedule shows the name of the user who has booked it and admin can 
		  release the reservation of by clicking it(user name). Admin can book room on behalf of library member by mentioning their email while booking a room.
		- History:  View the booking history of a room.
		- Delete:Delete a room from the system
	c. View Room Schedule: Displays schedule of a room for a particular date you want.

4. Manage Library Member: View the list of all the library members and their profile details (except password), their booking history and allows to delete a member.

5. Reserve a room: Admin can search a room with predefined attributes. Shows the list of room that fits the search criteria. Provides action: Details, that display
					a week schedule for that room.On the displayed schedule, if a room is available, you can book it by 
					clicking  'Available', which redirects to booking bage. If a room is booked , the schedule shows the name of the user who has booked it and admin can 
					release the reservation of by clicking it(user name). Admin can book room on behalf of library member by mentioning their email while booking a room.

Notes:
The admin can modify and delete other admins but he cannot delete himself.
The admin can add, modify, delete other users on the application except the super_admin.
Super_admin has every power of the admin and also he can't be deleted/modified by anyone.
All features implemented.

Library member features

The user logs in with email and password.
Sigining in will take the user to the webpage where he can do the following:

1. Edit Profile Details: Admin can add/update his profile details(like address, phone_no). Email can't be changed.
2. Reserve a room: User can search a room with predefined attributes. Shows the list of room that fits the search criteria. Provides action: Details, that display
					a week schedule for that room.On the displayed schedule, if a room is available, you can book it by 
					clicking  'Available', which redirects to booking bage. If a room is booked , the schedule shows Booked. 

3. Release a Room: Display the list of existing user reservations. Provide Cancel action to relase or cancel a reservation.
4. View Booking History: Displays booking histroy a an user.

Notes:
Each interface has Home and lougout options. Clicking home redirestc to home page.
User can make reservation for a week.
User can Search rooms
Book Room
Edit profile
All features implemented.


Extra Credits

User booking restriction
A library member can book multiple rooms.

Edge cases

When the admin deletes a user with a active booking, the booking associated is also deleted.

When the admin deletes a room with a booking on it, the booking associated is also deleted.

