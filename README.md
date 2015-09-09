# Ghost Tour Scheduler

Review of ActiveRecord migrations, associations, querying, and validations.

I want to organize the contact info for the [actors at my tourism company](http://www.ghostsandgravestones.com/boston/gravestones-guide.php) and keep track of who performs in each show. Here's the basic set up:

## Actors
  - Should have email and phone number
  - Can have first and last name
  - Actors can belong to multiple tours

## Tours
  - Should have a name
  - Can optionally have a description, but not too long!
  - Can have many actors assigned to work on it

For example, Constance Caskette should be able to perform in both the Blood-Curdling Chills tour at 8PM and 10PM and the Graveyard Smash tour at 11PM. Lily Winters should be able to join her for the 8PM Blood-Curdling Chills tour at 10PM, but NOT 8PM.

## Pro Tips

"Should" is an indicator that a validation may be necessary to enforce a business requirement. "Can" is an indicator that we need a column/attribute, but maybe we don't need to enforce it strictly. Look for language about associations between objects to decide how to design the schema. 

Start by designing a schema, drawing an ER diagram, and then create migrations one by one, rolling each back to make sure that it can be reverted. Don't forget validations on your models!

Use [https://github.com/LaunchAcademy/sinatra-activerecord-starter-kit](this Active Record Starter Kit) to get moving quickly.

Let's keep track of what commands we write to test our associations here:

### Actors should have email and phone number
Actor.create(email: "spooky@gmail.com", phone_number: "555-555-5555")
