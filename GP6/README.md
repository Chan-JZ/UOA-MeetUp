# Group-project

If video is not audible, please refer to this script:

Script

Part 1: Login and Profile (1 min, 30 seconds)

Users are required to create an account to access the site. By clicking the ‘Sign Up’ button they are redirected to the profile page. Users will have to enter their credentials and click the save button, which adds a new user to our ‘User’ database. Clicking the edit profile button lets them change their name, email address, and password but not their username.

Clicking save will lock these changes and they can edit them again by clicking the same button. When a user logs out they are redirected back to the login page. If a user signs up with a google account, their information is automatically filled in like so. If users forgot their password, they can click on the ‘forgot password link’ which redirects them to the ‘forgot password’ page. Users will have to input their email address here and they will receive an email afterwards where they can change their password (Show the email tab). Accounts already registered can use their username and password to log in (Log in with Bob, abob 1234).



Part 2: Events page (1 min)

When a user accesses the ‘events’ page, they can view events they have hosted as well as events that they are guests too. For a new user the events page would be empty but as a demonstration we have already pre-registered some events to user Bob. We can see that Bob has hosted two events. Additionally, Bob has been invited to 5 events as shown in the ‘Invited Events’ div.

If we look in an event div, we can see some key information such as who’s the host, event timings, location, description of the event, and whether the user is going or not. We styled the right side of the div differently based on if the user is the event’s host or guest. If a user is the host, it shows the guests’ preferred timings whereas if they were a guest, it would display their preferred time. We will come back to these features later.



Part 3: Host and creating events (2 minutes)

We can create an event through the ‘Create Event’ button (Make an event). This contains information such as the name, duration and description of the event, etc. Creating an event adds this event to the user’s hosted event list and to their guest’s invited event list.

Switching over to one of the guests’ inbox (Show email tab), we can see they were invited to an event and we can access its details through this link.  After signing in, we are redirected to the events page and we can see the created events in our invited events container. To specify our availability, we click on the edit time button and enter our preferred start time for the event.

Switching back to the host, the host can see each user’s preferred time in the ‘My events’ container. The host can re-edit the time based on their guest’s preferred times.

When the host presses the confirm button, they send another email to the invited users with the updated details. There are two pop ups that appear here. The alert pop-up notifies the host that they have successfully changed the event, the second pop up requires the user to enter their gmail credentials again and doing so will send the changed event to their google calendar.



Part 4: Calendar page (30 seconds)

On the calendar page, users can view their hosted and invited events. You can see the event we created earlier here. The calendar is set to weekly view but users can change the view to year, month, and day like so. We do not want our users to create or edit an event here so we added a reminder div to tell the user that they will have to edit their events in the ‘event’ page.



Part 5: Admin stuff (45 seconds)

Admins of the site are registered by default in our database. Users that signed up through the sign-up page are registered as non-admins. To change the user’s permissions, they will need an administrator to make them an admin. An admin has all the features of a non-admin, but they also have access to a ‘users’ page. Here, an admin can view all users registered in the database. They can edit a user’s privileges by clicking on the make admin button. Additionally, they can access a user’s profile by clicking their profile image. Doing so redirects them to their profile page where they can edit a user’s profile as if they were the user.




# Instructions to load the database
sql_start
mysql --host=127.0.0.1 < backup2.sql
npm install
npm start
