# Project - Web Programming with Ruby

Over the next week you will build an app to consolidate and expand on everything you have learned:

* Object oriented programming with Ruby
* Test Driven Development
* Web Programming (REST, MVC)
* Interacting with a PostgreSQL database (CRUD)

## Rules

The project must be built using only:

* HTML / CSS
* Ruby
* Sinatra
* PostgreSQL and the PG gem

It must **NOT** use:

* Any Object Relational Mapper (e.g. ActiveRecord)
* JavaScript. At all. Don't even think about it.
* Any pre-built CSS libraries, such as Bootstrap.
* Authentication. Assume that the user already has secure access to the app.

All of these will be covered later in the course. Do not make any attempt to use them this week, even if you've used them before.

Make lots of little (but sensible!) git commits. The number of commits in your final submission is one of the criteria your work will be judged on.

## Briefs

These briefs detail what is expected of you, including an MVP. Note that the MVP is the **Minimum** Viable Product. You are strongly encouraged to go beyond these specifications, and some possible extensions are provided.

Talk through your ideas with an instructor during the planning process, and before you begin coding.

### Spending Tracker

Build an app that allows a user to track their spending.

#### MVP

* The app should allow the user to create, edit and delete merchants, e.g. Tesco, Amazon, ScotRail
* The app should allow the user to create, edit and delete tags for their spending, e.g. groceries, entertainment, transport
* The user should be able to assign tags and merchants to a transaction, as well as an amount spent on each transaction.
* The app should display all the transactions a user has made in a single view, with each transaction's amount, merchant and tag, and a total for all transactions.

#### Inspired by:

Monzo, MoneyDashboard, lots of mobile/online banking apps

#### Possible Extensions

* Transactions should have a timestamp, and the user should be able to view transactions sorted by the time they took place.
* The user should be able to supply a budget, and the app should alert the user somehow when when they are nearing this budget or have gone over it.
* The user should be able to filter their view of transactions, for example, to view all transactions in a given month, or view all spending on groceries.

### Shop Inventory

You have been approched by a shop keeper who requires an app which allows them to keep track of their shops inventory.  

#### Inspired by
eBay, Amazon (back end only), Magento

## User stories - MVP

#### Manage stock

_As a shop keeper_<br />
_I want to be able to view accurate information about my stock_<br />
_So that I can keep my system up to date_<br />

**Acceptance Criteria:** Shop keepers should be able to add new items to their list of stock. <br />
**Acceptance Criteria:** Shop keepers should be able to edit details of existing stock items in their list of stock. <br />
**Acceptance Criteria:** Shop keepers should be able to delete items from their list of stock.

#### Manage manufacturers

_As a shop keeper_<br />
_I want to be able to see accurate information about the manufacturers whos stock I hold_<br />
_So that I can keep track of details about my manufacturers_<br />

**Acceptance Criteria:** Shop keepers should be able to add new manufacturers. <br />
**Acceptance Criteria:** Shop keepers should be able to remove manufacturers.
**Acceptance Criteria:** Shop keepers should be able to assign manufacturers to stock items.


#### View inventory

_As a shop keeper_<br />
_I want to be able to view all of my stock at once_<br />
_So that I can see at a glance what stock I currently have in store_<br />

**Acceptance Criteria:** Shop keepers should be able to view all of their stock on a single page.

_As a shop keeper_<br />
_I want to be highlighted to stock levels to be highlighted_<br />
_So that I can be aware of low, medium and high stock levels for particular items_<br />

**Acceptance Criteria:** Shop keepers should be able to view stock levels in a coded manner i.e colour (red/orange/green) or "Low"/"Medium"/"High".


## User Stories - Possible Extensions

#### Calculate mark-up

_As a shop keeper_<br />
_I would like to be able to see profit I am making on my inventory_<br />
_So that I can adjust levels to make profit_<br />

**Acceptance Criteria:** Stock items should have a cost price and a sell price. <br />
**Acceptance Criteria:** Shop keepers should be able to view a calculated mark up for all items.<br />

#### Search Functionality

_As a shop keeper_<br />
_I would like to be able to filter stock items by manufacturer_<br />
_So that I can see all stock items I hold for each manufacturer_<br />

**Acceptance Criteria:** Create a filter dependant on the stock item's manufacturer

### Gym

A local gym has asked you to build a piece of software to help them to manage memberships, and register members for classes.

#### Inspired By

[Glofox](https://www.glofox.com/club-solution/), [Pike13](https://www.pike13.com/pike13-scheduling-software-demo)

#### Caution

You might try to create a Ruby class named `Class` - this is a reserved word in Ruby, so you will have to name your class `GymClass`, or similar.

### User Stories / Acceptance Criteria - MVP

#### Manage Membership

_As a gym manager_ <br />
_I want to manage the list of members_<br />
_So that I am storing up-to-date information about members_<br />

**Acceptance Criteria:** Gym managers should be able to create members<br />
**Acceptance Criteria:** Gym managers should be able to edit members<br />


#### Manage Classes

_As a gym manager_<br />
_I want to manage the list of classes_<br />
_So that I have up to date information about what classes are available_<br />

**Acceptance Criteria:** Gym managers should be able to create classes<br />
**Acceptance Criteria:** Gym managers should be able to delete classes<br /> 

#### Register Users for Classes

_As a gym manager_<br />
_I want to be able to add a user to a class_<br />
_So that I can book their place_<br />

**Acceptance Criteria:** Gym managers should be able to assign members to classes.

#### View all customers assigned to a class

_As a gym manager_<br />
_I want to view all members assigned to a class_<br />
_So that I can see which classes are going to be busy_<br />

**Acceptance Criteria:** Gym managers should be able to view a list of classes, and see the members that will be attending that class.

### User Stories - Possible Extensions

#### Classes should have a maximum capacity

_As a gym manager_<br />
_I want to be able to assign a maximum capacity to a class_<br />
_So that the class can't be over-booked_<br />

**Acceptance Criteria:** Gym managers should be able to give each class a maximum capacity<br />
**Acceptance Criteria:** Gym managers should not be able to assign members to a class that is already full. (At capacity)

#### Premium Membership

_As a gym manager_<br />
_I want to be able to mark members as having "Premium Membership"_<br />
_So that I can maximise revenue_<br />

**Acceptance Criteria:** Gym managers will be able to assign premium membership to members<br />
**ACceptance Criteria:** Gym managers will be able to assign a time to a class <br />
**Acceptance Criteria:** Gym managers will only be able to assign premium members to classes that take place during peak hours. (7-9am, 5-8pm)

### Art Gallery / Museum

A museum has asked you to write a piece of software to help them track their exhibits. You should be able to track information relating to artists, and exhibits.

### Inspired By
[Tate Modern](http://www.tate.org.uk/), [British Museum](http://www.britishmuseum.org/whats_on/exhibitions/rodin-1.aspx)

#### User Stories - MVP

#### Manage Artists

_As a gallery manager_ <br />
_I want to be able to add artist information_ <br />
_So that I can manage the artists within my gallery_ <br />

**Acceptance Criteria:** Gallery Managers should be able to add new artists <br />
**Acceptance Criteria:** Gallery Managers should be able to delete artists <br />

#### Manage Exhibits

_As a gallery manager_
_I want to be able to add information about an individual exhibit_ <br />
_So that I can manage the exhibits within my gallery_ <br />

**Acceptance Criteria:** Gallery Managers should be able to add new exhibits <br />
**Acceptance Criteria:** Gallery Managers should be able to edit existing exhibits <br />
**Acceptance Criteria:** Gallery Managers should be able to delete exhibits <br />
**Acceptance Criteria:** When managing exhibits, gallery managers should be able to assign an exhibit to an artist <br />

#### View Exhibits

_As a gallery visitor_<br />
_I want to be able to view a list of exhibits_<br />
_So that I can plan my visit and find information regarding the visit_

**Acceptance Criteria:** Visitors should be able to view a full list of exhibits <br />
**Acceptance Criteria:** Visitors should be able to view information regarding a single exhibit <br />

#### User Stories - Possible Extensions

#### Filter Exhibits

_As a gallery visitor_<br />
_I want to be able to find exhibits by a specific artist_ <br />
_So that I can find the information I need more quickly_ <br />

**Acceptance Criteria:** The user should be able to filter the list of exhibits by artist

#### Exhibit Categories

_As a gallery visitor_ <br />
_I want to be able to find exhibits within a particular category_<br />
_So that I can find exhibits related to my interests_

**Acceptance Criteria:** The gallery manager should be able to add a category to an exhibit <br />
**Acceptance Criteria:** The user should be able to filter the list of exhibits by category

## Submission

Submit a link to your Github repo through the Homework Submission form as soon as the repo has been created.

Your code will be reviewed with an instructor on Thursday afternoon.

## Presentation

Presentations will be held on Friday. You will have 10 minutes to present your work, with 5 minutes for questions.

We expect you to:

* Show your sketches, notes, diagrams, wireframes and user planning
* Demonstrate your app's functionality
* Talk about some code that you are particularly proud of
* Highlight your main learning points

Do not:

* Talk through every single line of code
* Go over the time limit

## Asking for help

The instructional team will be on hand for technical assistance, but you are strongly encouraged to take this opportunity to practise self-sufficiency, as will be expected of you as a professional software developer.

Before asking an instructor for help this week, you should be ready to answer the following questions:

* What are you trying to achieve?
* What do you think the problem is?
* What have you tried so far?
* What did Google say about your error message?

## Attendance

The cohort will meet at the usual time every morning. Your attendance is recorded every day as normal.

## PDA Reminder

Remember to gather evidence for your PDA this week. This should only take 5 minutes:

* Go to your [PDA Checklist](https://github.com/codeclan/pda/tree/master/Student%20Checklist)
* Submit your PDA evidence (screenshots, etc.) to your own PDA repo
