Completed as of project start date: Created a two model app wherein happy hours
are nested in bars so a user can click on a bar and view the weekdays and hours
during which it is happy hour. Users and non-users currently have full CRUD
capabilities for both bars and their happy hours.


1. I want to be able to click on a happy hour and see the menu associated with it
so I can know if it is a good happy hour. (i.e. create a third model nested in
 happy hours.) -Bronze
2. Deleting a bar should delete its happy hour which should delete its menu.
 -Bronze
3. I only want users who are signed in to be able to edit/create/delete anything
 so that people will be less likely to delete the database for fun. -Silver
4. I should be able to favorite/unfavorite bars and view my favorites. -Silver
  * 4.a Implement messages between users. (Learn how then remove the feature until
creating a friendship model) -Gold
5. I should be able to make a viable week schedule to attend happy hours (i.e
select half hour periods of time within a happy hour and be prevented from
selecting overlapping periods of time using validations). -Gold
6. I want a google map API so I can view my bars on a map. -Gold
7. I want to be able to friend other users and compare schedules so I can see
if we are going to the same place. -Super gold
8. I want to message my friend on the compare schedule page so we can agree on
a schedule. -Super gold
9. I want a merge schedule button, which if both people click will change the
second clickers schedule to that of the first. -Saiyan gold.
10. I want the google map api to make a route for my schedule and tell me if
there is not enough walking time. -Saiyan Gold
