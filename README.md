# Sleepy Farmer's Markets

An app built with Ruby on Rails by [David Baines](https://github.com/Bainezy94), [Jo Dunham](https://github.com/Rainbow-Ninja), [Ewe Lin Loo](https://github.com/elloo).

**Live deployment:** https://sleepy-farmers-markets.herokuapp.com/

**GitHub:** [https://github.com/Bainezy94/TheFarmersMarket](https://github.com/Bainezy94/TheFarmersMarket)

## Project Description

### Problem Definition / Purpose

Farmer's markets are great places to find the best deals on fresh fruit and vegetables. The drawback? Sacrificing quality weekend sleep to work through the tight crowds. Here's where **The Sleepy Farmer's Markets** comes in. With this app, buyers are able to pick-up fresh produce AND enjoy sleeping past peak hours!

### Functionality / Features

##### For Buyers

- Order fresh food in advance to be picked up at a priority queue

##### For Farmers

- See minimum demand for products in advance of sales periods

### Screenshots



### Tech Stack

- HTML, CSS, deployment platform, etc

### Setup



### Configuration



### Usage



## Design

### Process

Our design process involved a few steps including:

1. Brainstorming session: Project and problem space ideation
2. Entity Relationship Diagram
3. Wireframing
4. Mood-boarding
5. Style guide

### User Stories



### User Journey/s Diagram



### Wireframes



### Database Entity Relationship Diagrams

D - ERD is complete with appropriately defined entities (models each serve a single purpose and appropriate fields). There may be a little duplication.

HD - Meets D with no duplication and ideal definition of entities.

D - All tables, fields, and relationships adequately represent an appropropriate solution.

HD - Meets D and represents a highly optimised solution.

Documentation provided demonstrates exceptional understanding of relational database model and database infrastructure.

HD - Identifies all significant entities, as well as additional entities

HD - Identifies all relationships / associations in a sophisticated relational model

HD - Designs a normalised schema (i.e. without data duplication) that facilitates extended functionality of the app

## Planning Process

### Project Plan & Timeline

#### Day 1: 23 July, 2019

- App ideation
- Basis of app (Models, scaffolding, etc)
- Mood board
- User stories
- Entity Relationship Diagrams
- Setup Trello
- Start documentation

#### Day 2: 24 July, 2019

- Update Trello with more user stories and different lists
- Lo-fi Wireframes
- Style guide
- Headings and marking criteria notes to documentation

#### Day 3: 25 July, 2019

- Profile and user login
- Farmer controllers and market selection
- Seed data for farmers and profiles

#### Day 4: July 26, 2019

- Fixed models
- Added drop-down menus for orders form
- Navbar styling and paths

#### Day 5: July 27, 2019

- Created feature for farmers to add produce to their stall
- Fixed more models issues

#### Day 6: July 29, 2019

- Added ERD to README.md
- Worked on backend: 
  - farmer_profile
  - Orders model
  - Create join table for orders_products
  - Dynamic form for orders
  - Seed data
- Worked on frontend: 
  - Added Materialize
  - Navbar and icons
  - Header and footer
  - Margins
  - Toasts

#### Day 7: July 30, 2019

- Integrated SimpleForm
- Setup storage bucket
- Updated order and product models
- Updated permissions on some buttons to only be visible when signed in
- Updated overall app styling
- Add Stripe button
- Added Geocoder gem
- Fixed seeds file

#### Day 8: July 31, 2019

- Styled forms for markets and produce
- Updated user model with role
- Updated permissions for farmers around produce
- Added roles data to seed file
- Configured Geocoder
- Installed active storage
- Added mood board to README.md

#### Day 9: August 5, 2019

- Completed maps functionality
- Completed product seed data
- Added permissions for several pages
- Worked on order form

### Trello Screenshots

![Beginning of Trello board](docs/trello_001.png)

## Short Answer Questions

### 1. What is the need (i.e. challenge) that you will be addressing in your project?



### 2. Identify the problem you’re trying to solve by building this particular marketplace *App*? Why is it a problem that needs solving?

Demonstrates a full understanding of the problems that exist in a relevant marketplace that needs disrupting

### 3. Describe the project will you be conducting and how your *App* will address the needs.



### 4. Describe the network infrastructure the *App* may be based on.

Show a full understanding of the hosting infrastructure

### 5. Identify and describe the software to be used in your *App.*

Complete a detailed description of the software used in the app

### 6. Identify the database to be used in your *App* and provide a justification for your choice.

Full discussion of the database used, including an excellent assessment of the pros and cons of this type of database

### 7. Identify and describe the production database setup (i.e. postgres instance).

Gives a complete description of the database setup in production

### 8. Describe the architecture of your *App*.

Shows almost flawless understanding of the high level structure of the app

### 9. Explain the different high-level components (abstractions) in your *App*.

Precisely explains and shows understanding of the different high-level components of the app

### 10. Detail any third party services that your *App* will use.

Includes a complete and detailed description of third party services used in the app

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Shows a complete understanding of the data structure of two sided marketplace apps

[Doorstep Organics](https://www.doorsteporganics.com.au/)

[Your Grocer](https://www.yourgrocer.com.au/)

[Coles](https://shop.coles.com.au/a/a-national/home)

### 12. Discuss the database relations to be implemented.

Provides coherent discussion of the database relations, with reference to the ERD

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

Complete discussion of the project’s models with an understanding of how its active record associations function

### 14. Provide your database schema design.

Flawless,complex, complete, and well thought through ERDs provided

### 15. Provide User stories for your *App*.

User stories are well thought out, relevant, and comprehensively cover the needs of the app

### 16. Provide Wireframes for your *App*.

More than five detailed and well designed wireframes provided, for several different screen sizes (as required for the app)

### 17. Describe the way tasks are allocated and tracked in your project.

Shows significant planning for how tasks are planned and tracked, including a full description of the process and of the tools used

### 18. Discuss how Agile methodology is being implemented in your project.

  Documents comprehensive plan for agile methodology, with extensive evidence of use

### 19. Provide an overview and description of your Source control process.

P - Basic documented plan for source control use and existing Git source control repository with some project files  

C - Meets P criteria and has README and gitignore with appropriate content

D - Meets CR criteria and documented plan or evidence for using multiple feature branches

HD - Meets D criteria and demonstrates frequent commits, merges and pull requests

### 20. Provide an overview and description of your Testing process.

P - Basic general documentation about the types of testing that will be used and testing process

C - Meets P with description of specific test scenarios for some user stories and description of automated (unit) testing

D - Meets CR with tests implemented on code implemented thus far with results for tests executed thus far

HD - Meets D with tests documented or defined for all user stories, extensive use of unit testing on code completed thus far, and well organized test results

### 21. Discuss and analyse requirements related to information system security.

P - Basic general documentation on information security requirements

C - Meets P with specific mention of requirements for this project, such as user authentication and protection of sensitive information

D - Meets CR with discussion of alternative options for information security and benefits/tradeoffs of each

HD - Meets D with evidence that the best option for information security was chosen

### 22. Discuss methods you will use to protect information and data.

P - Basic general documentation on methods to protect information and data

C - Meets P with specific design for implementing basic user login authentication for this project

D - Meets CR with discussion of alternative options for protecting information and data and benefits/tradeoffs of each

HD - Meets D with clear documentation on the specific methods that will be used for this project to protect information and data and why these methods were chosen

### 23. Research what your legal obligations are in relation to handling user data.

P - Basic research performed and basic understanding of legal obligations documented

C - Meets P with discussion of one way in which obligations can be met for this project (whether or not they are actually implemented)

D - Meets CR with discussion of alternate approaches to meet obligations and benefits/tradeoffs of each

HD - Meets D with evidence of discussion of findings and agreement on approach to be used to meet legal obligations