This repo require:
 - Ruby 2.4.1
 - Rails 5.2.0
 - sqlite3 gem
 
clone the repository and do the following insctructions:
```
bundle
rake db:setup
rake db:seed
rails s
```

# Question 1

Since I was little, I am a big fan of soccer. Especially Real Madrid and Olympique de Marselle. I played soccer in club for 10 years. This 10 years teach me a lot. Not only about soccer, but also about team work, and team leading. This helped me a lot in my last job at Groupe Avantages. My leadership pushed me to manage the team after only 1 year. I was still a junior, but the team leader trust me for this job. 
But my career really started in 2012. I was newly graduated by an electronical engineering baccalaureate. I started a university degree, for two years, called DUT in France, specialized in electrical, electronical and computer science engineering. I discover, there, C language. One of the computer mother tongue. I really enjoyed it, and I made one of my favorite project. A video game. My partner in this project was fired because of bas results, so I found myself alone. In 6 month, I made a full video game in C. I draw the characters and any of their movement, scan them, and improve the draw with photoshop. It was a 2D game. The main character needed to kill all monster in front of him, and finally get to the final boss, and if he kill him then he goes to the next level. Monsters and final boss were more powerful at each level. And the main character could acquire power up at each level end. It was really challenging and my first project. The project that would lead my curiosity to the web. 
After 3 years of university, I join Groupe Avantages. There, I made 3 projects with the team, and 1 project alone. Two of the three project was about offering to companies two plateform where their salaries could have really good deals. One only about restaurant, the other about everything else. The third one was the administration application that allow business people to manage their team and the two applications. The front was one AngularJS and the back driven by Ruby Sinatra for the first version, and then by Ruby on Rails.
In April, I decided to left the company, and join Consultoo, as a Lead Developer. A plateform that allow people to take appointments at the doctor. The application is, also, driven by Ruby on Rails and I work remotely 95% of time.


# Question 2

In order to implement a feed generator, I would create a service called by controllers, who can return, filtred list of user preffered books or user followed authors.

To test it, navigate to localhost:3000 ! The major part of the code is under `app/services/feed.rb`.


# Question 3

The design pattern included in`payment_factory.pdf`assumes that the config part is done, as described in these links: 
- https://github.com/paypal/PayPal-Ruby-SDK
- https://github.com/stripe/stripe-ruby

I will be honest. It 's my first time with payment system.


# Question 4

With the schema given question 2, I will add these two classes: 
```
Genre
  -book
  -name
 
BooksGenre
  -book
  -genre
  -ranking
```
I will then get the followed authors' list, and an ordered list of genre's of all the books the user has upvoted with a count of how many times each genre came out with a limit of three per book and a multipliers based on their ranking. This count is really important because it shows the weight of each genre. Then I will make a query to get all books that have at least one of the 6 most favourite genre. These books will be ordered by the weight of there genres. 

First Idea of Improvement: And if an author of a book is one of my followed authors it add a weight of '1', and it add the number of books that are my favourite of this authors as a weight. This will gave us a list of books oredered by their calculated weight.

Second Idea of Improvement: We could also get an another type of reccomandation, by removing the part based on the authors and the books, and add the number of user that upvoted a book as a coefficient.

The first one is better for people that want to discover and thinks 'if it looks like the others book that I already liked, it's probably good, no matter if no one already it yet'

The second one is for people that have in mind 'if a lot of people liked it so maybe it is really good'.
