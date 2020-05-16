# Beautiful in White - T2A2

# Identification of the problem

# Why is it a problem that needs solving

### A link (URL) to my deployed app:
https://beautiful-in-white.herokuapp.com/

### A link to the GitHub repository:
https://github.com/Lanzhou-J/wedding-dress-app

# User stories for my app
- As a Bridal wedding dresses shop owner (merchant) or designer, I want to use this platform to display all my products including wedding dresses and accessories, and do business online. I also want to take orders and communicate with customers for designing custom wedding dresses.

- As a customer, I want to use this platform to find wedding dresses that suit me and communicate with other brides, see their comments and ratings of a particular product.

- As a bride who has already had the wedding, I would use the platform to sell preowned, used and second-hand wedding dresses.

# An ERD for my app

# Functionality and Features

### Component 1: Navigation Bar and Footer Bar

All 5 webpages have navigation bar and footer bar with similar style. For navigation bar, I used translucent frosted glass filter. All the links/buttons have hover effects. The links on the left side of navigation bar will link to different websites (e.g. Working experience website/ Skills website/ Blog website) and the gray button on the right side of navigation bar will link visitors to a Chinese version of the homepage.

For footer bar I used gray background and white icon/text, the icon at the left side is my name "zhou" (meaning "boat") in ancient Chinese character. The icon will link users back to the homepage (or back to the top of the homepage).

In the homepage footer section I have included links to my Linkedin, Github and Facebook account. I have also provided my email address. This will provide users with additional information, and allow them to contact me if interested.

### Component 2: Multilingual versions of homepage

As mentioned before, the navigation bar has a button to link users to the Chinese homepage. By offering content in a different language, the portfolio website can reach a broader audience and target more locations. I choose Chinese because currently I am confident in translating the content into Chinese. (Translating the webpage into other languages is a potential function to be released in the future.) 

### Component 3: Interactive homepage/ On scroll animation

My design inspiration is originated from Chinese landscape painting. Cloud and mist is a very important element in the artwork. Usually a veil of cloud or mist across the landscape is used to add mystery and elegance to the paintings. Imagine that you are walking in a mountain -- the mist comes near and goes away, and the scenary in front of you is changing all the time which provides travellers with incredible aesthetic experience. That is the effect that I want to achieve for my personal portfolio website. I think the best way to achieve it is to use on scroll animation. Contents fade in as users scroll down, which also makes the website more interactive. The svg animation of "My skills" is also inspired by floating clouds.

My pictures can be found besides title if users hover on the 2 geometric shape. I used large typography and geometric shape to give my portfolio a modern appearance.

The layout of the homepage is designed like asian hanging scroll paintings. In these paitings, usually the objects are not always placed in the middle line of the artwork. I structured elements in my homepage in a sequence of "left -- middle -- right -- middle ..." so that audience will not stare at one direction when the webpage is scrolled down, which can make the website fun to read.

### Component 4: Interactive blog webpage
In the blog webpage, visitors will see a welcome message first with illustration and instruction. The welcome section will be replaced by different blog articles if visitors click on the blog titles on the left side of the website. All the blog articles contain date, pictures and text contents. The content of articles are structured using grid to give it a nice page layout.

On the right side of the blog page, I created a sidebar with keywords about blog posts -- let readers know what to expect from the articles.

Users can click on subtitle "BLOG" to go back to the welcome view. This design is to make the website more interacive and organized.

### Component 5: CV Download

Users can download my resume in Experience webpage, the button "Download Resume" is at the bottom of the webpage, with a hover and active CSS effect which changes the button color and font color.

My pdf resume opens in a different tab in the browser. This enables users to continue reading the content in the Experience webpage without losing their place.

### A Consistent Style

All the webpages use a consistent design style, including components, fonts, and colors.

### Responsive Design
All 5 pages are designed following responsive web design rules.

The navigation bar and footer bar are designed to be responsive so that users with different mobile device are able to use the links and buttons easily.

For Experience and Skills webpage, I used flex cards to structure the contents including working experience, different category of personal skills and personality keywords. I have modified the strucure of Homepage and Blog page to make them all responsive and fit all screen sizes. I have used media query to help change font size and width/height of different sections to make the pages display all components at desktop, mobile, and tablet viewport widths.

### Three Versions

Three versions of the website have been produced and saved on different branches in Github. The versions include:

- 'master' branch with the base version
- 'color' branch with a dark colour scheme on homepage
- 'font' branch with different fonts on homepage

Alternate versions can be viewed by typing 'git checkout {branch-name}' in the terminal. To view the 'color' branch, type:

>git checkout color

To view the 'color' branch, type:

>git checkout font

# Sitemap

The website simply has all pages link to each other via the navigation bar. A sitemap for the website is presented below.

![Sitemap](docs/sitemap_new_ppt.png)


# Screenshots

##### Home page
![screenshot_home](docs/screenshot/Screenshot_homepage_pc_1.png)

![screenshot_home](docs/screenshot/Screenshot_homepage_pc_2.png)

##### Skill page
![screenshot_projects](docs/screenshot/Screenshot_skill_pc_1.png)


##### Blog page
![screenshot_cv](docs/screenshot/Screenshot_blog_pc_1.png)

![screenshot_cv](docs/screenshot/Screenshot_blog_pc_2.png)

# Target audience

The target audience for the website are:

1. Project Leads
2. People that have similar interests (e.g. cooking, painting, design etc.)

#### Tech stack
- HTML is used for the content of all 5 webpages (Homepage, Experience, Skills, Blog and Chinese homepage).
- CSS is used to style and strucutre the webpages.

- JavaScript is used to achieve on scroll or on click effect in homepage and Blog webpage.

- Netlify is used to deploy webpages.

# Project Management

## Wireframes
Wireframes were created for each page during the planning stage of the project. Wireframes are presented below. The tools that I used to create wireframes are Balsamic wireframes Desktop and Procreate app on ipad.

##### Homepage
![wireframe_1](docs/Homepage_wireframe.png)

##### Experience
![wireframe_2](docs/Work_Wireframe.png)

##### Skill
![wireframe_3](docs/Skill_Wireframe.png)

#### Blog
![wireframe_4](docs/Blog_Wireframe.png)

## Trello

Tasks were tracked using Trello. Trello board screenshots presented below:

##### 1/04/2020
![trello_1](docs/trello/Trelloboard_20200401.png)

##### 2/04/2020
![trello_2](./docs/trello/Trelloboardnew.png)
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
