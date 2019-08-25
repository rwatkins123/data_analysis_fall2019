## Fall 2019 Data Analytics
Notes, Code Samples, Exercises, and Project Instructions for the [OKCoders Data Analytics Boot Camp](https://www.okcoders.com/blog/data-analytics-bootcamp-fall-2019-in-okc).


### Scope of the Course
This 8-week introductory bootcamp will cover the basics of data analytics using SQL and Python. During the 8 weeks you’ll learn how to work with a relational SQL database, how to break down analytical questions into small sub-problems, and how to solve each with the Python programming language. The class will cover the basics of working with data, statistical modeling, and some application of machine learning. This will include the completion of 2 analytical projects that can be shown in a code portfolio. The bootcamp is intended for beginners, but experienced developers are welcome as well.


### Technology Used in this Course
+ [SQL](https://en.wikipedia.org/wiki/SQL): The Structured Query Language (SQL) is the primary method for interacting with [Relational Databases](https://en.wikipedia.org/wiki/Relational_database). A Relational Database is a place to house data that neatly fits into rows and columns (think Excel, but far more powerful and scalable). We will use SQL to interact with data, do simple data connection and formatting operations, and even interact with SQL from inside the analytics pipelines we will write in R.

+ [SQLite](https://en.wikipedia.org/wiki/SQLite): The specific relational database engine and environment we are going to use will be SQLite (pronounced "Sequel Light"). SQLite is an entire database that saves to a single file. We will be able to interact with all major SQL commands using this light weight database, as well as connect to it directly with R to incorporate SQL and R programming pipelines together.

+ [SQLite Browser](http://sqlitebrowser.org/): This program will be how we primarily interact with our SQLite database files, and write SQL code to query various data sets. The SQLite Browser provides a great user interface for inspecting the different tables of our database, how they relate to one another, how they are formatted (the "schema"), and for writing queries with a live feedback loop on the query output.

+ [Slack](https://slack.com/features): Slack is a messaging tool we will use to communicate inside and outside of the classroom. It is a suped-up instant messaging client that is used throughout many organizations for internal communications. It's super easy to use and you'll get the hang of it in no time. Though the default is a web interface, there are native apps for both the desktop and phone/tablet mobile devices.

+ [Python](https://www.python.org/about/): This is a very popular programming language that is optimized for data analysis and very easy to understand. Lots of popular data analytics and data science platforms make first class use of Python functionality. Additionally, Python has a very active community of developers that have built freely available packages to do very powerful things right out of the box. Python additionally is fully capable of being a full, general purpose programming language meaning the information you learn here can help you with other coding projects outside of only the data analytics domain. Python is great in general to learn as it does a very good job of scaling its own complexity. It does simple things very simply and only becomes more complex as you need to solve more complex problems. [Here](https://youtu.be/Y8Tko2YC5hA) is a great 4 minute intro to "what is and why Python."

+ [Jupyter](https://jupyter.org): Jupyter evolved from the iPython framework and has become a very popular way of working with Python code. It is particularly good for interactive programming like you will do in data analysis, as well as collaborative coding with multiple people.


### Datasets Used in this Course
+ **Company Employees**: This is a fake set of simple data that represents some company employees for a fake company. Various versions of this data will exist across several different formats, which will help show how the same kind of data can be represented in multiple ways. We will work with this data in CSV, JSON, and SQL formats. This data will be used for the first, smaller project.
+ **Lahman**: This is a famous very rich dataset that is produced each year regarding Baseball. We will be working with the SQL version of the data from the 2016 MLB Season. Documentation for this database can be found [here](http://seanlahman.com/files/database/readme2016.txt). This will be the data that is used for the final project.


### Projects
The details of the projects that we will build are still being finalized, please stay tuned as this page updates closer to the beginning of class.


### Additional Helpful Resources
There are a ton of resources out there to learn data analytics, machine learning, and data science. Some are great, some are crap, and most are in the middle somewhere. These are the ones that I find to be the best place to get started and learn a ton. Almost everything here is free or has a free version with a premium for additional help/coaching.
+ [The Open Source Data Science Masters](http://datasciencemasters.org/): As you complete the basics of this course, if you want to go into Data Science--this is a fantastic place to look around. This is like a meta-index of the best (and almost all free) resources on the internet to teach you different Data Science skills.
+ [Udacity](https://www.udacity.com/): Of all the online interactive education platforms that teach technical skills, I find Udacity to be the far and away best. While many models seek to scale up the "college class" idea, Udacity built a platform that more simulates a personal tutor. You are required to actually answer questions and program solutions to be able to move ahead, and you can take as much time or as little as needed until you master a concept. Browse either their nanodegree concepts (which have paid elements), or look into their course catalog directly to learn anything you want to. If you are a little rusty on statistics, I would highly recommend their statistics courses; as well as their Machine Learning units.


### Timeline & Course Outline
<table>
    <thead>
        <tr>
            <th></th>
            <th>First Hour</th>
            <th>Second Hour</th>
        </tr>
    </thead>
    <tbody>
        <!-- WEEK 1 -->
        <tr>
            <th colspan="3" align="left">Week 1: Getting Started with SQL</th>
        </tr>
        <tr>
            <td>Tue</td>
            <td>Slack, GitHub Repo, Setting Up SQLite, Intro to SQL/Using the SQLite Browser</td>
            <td>SELECT, FROM, WHERE clauses</td>
        </tr>
        <tr>
            <td>Thr</td>
            <td>GROUP BY clause, INNER JOIN operations</td>
            <td>OUTER JOIN operations, CASE, Sub-Queries</td>
        </tr>
        <!-- WEEK 2 -->
        <tr>
            <th colspan="3" align="left">Week 2: Starting Python</th>
        </tr>
        <tr>
            <td>Tue</td>
            <td>Homework Review, SQL Recitation, CTEs, CRUD Operations</td>
            <td>Installing Python, Using Jupyter, Basic Python</td>
        </tr>
        <tr>
            <td>Thr</td>
            <td>Python data types, slicing, extracting</td>
            <td>functions/methods, thinking in a programmatic way</td>
        </tr>
        <tr>
            <td>Homework</td>
            <td colspan="2" align="left">Answering Questions with Python</td>
        </tr>
        <!-- WEEK 3 (TODO) -->
        <!-- WEEK 4 (TODO) -->
        <!-- WEEK 5 (TODO) -->
        <!-- WEEK 6 (TODO) -->
        <!-- WEEK 7 (TODO) -->
        <!-- WEEK 8 (TODO) -->
    </tbody>
</table>


### Environment Setup
We will go over this in class, so don't feel too much pressure to have this done before coming. But if you can, please go ahead and set up the main components on your machine to ensure we move along speedily.

#### Slack
If you are on a Windows machine, please visit the [Slack Windows Download Center](https://slack.com/downloads/windows) and download the appropriate version for your OS. If you are using a Mac, the best way to install Slack is directly from the Mac App Store on your machine. We will not sign into the class Slack channel until the first day of class, so there is no need to do anything other than just making sure you can launch the app itself at least once.

#### SQL
Please go to the [SQLite Browser](http://sqlitebrowser.org/) home page and download the Mac/Windows version as applicable to your machine. Like the other tools the installation should be quite simple and I don't anticipate any complications. Please verify that you can open this application once installed. This is the only technology we will need for the the SQL aspects of this course.

#### Python (TODO)
Chances are decent you already have Python installed on your computer. We will be using Python version 3.7 in class and if you are comfortable installing it on your own please feel free to go ahead. Everything else we will need regarding Python and Jupyter we will install on our first session.


### About Me
Hi. I am your instructor, Frank D. Evans. I am a Data Engineer with [Inspire](https://inspirebrands.com). I have worked in Data Analytics of one flavor or another for the past 10 years. My professional specialty is [Graph Structure Machine Learning](https://en.wikipedia.org/wiki/Graph_theory) and [Natural Language Processing](https://en.wikipedia.org/wiki/Natural-language_processing). If you'd like to snoop on me, the best places to start are my [LinkedIn](https://www.linkedin.com/in/frankdevans/), [Twitter](https://twitter.com/frankdevans) (which I don't use very often), [GitHub](https://github.com/frankdevans), and this awesome [image](https://www.wtvq.com/wp-content/uploads/2018/02/DougEvans-e1445965848926.jpg) of a guy that's definitely not me, but is the first [result](https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiA4_LrhZzkAhUkgK0KHVhJDPoQjhx6BAgBEAI&url=https%3A%2F%2Fwww.wtvq.com%2F2015%2F10%2F27%2Fksp-father-shot-son-in-the-face%2F&psig=AOvVaw3pfTsBMbI2MsfkKVrmrcOE&ust=1566754598480415) if you Google "Frank Evans Felony".
