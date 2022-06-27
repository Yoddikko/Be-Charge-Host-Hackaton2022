# Be Charge Host 
## Hackaton 2022 - Eni
A project made for the 2022 big hack for the Eni challenge by <b>import CoreData</b> team

<img width="1440" alt="Schermata 2022-06-25 alle 19 14 37" src="https://user-images.githubusercontent.com/92546954/175784015-9838f5be-e104-4d77-a778-933cfbdd6dd1.png">

The **Be Charge Host** is an app for iOS that gives people who own charging stations the ability to share them with other users who use the **Be Charge** app. So this app would like to be the counterpart of Be Charge but for charging station hosts. It would also connect to Eni Plenitude.
The idea came from a real problem we had with one of our teammates who wanted to buy an electric car, but on his travel itinerary there were no charging stations nearby. So we thought that **sharing personal charging stations** might be a solution for those places where perhaps these stations are not yet in common use. The future is the *circular economy* and the *sharing economy*, and we believe this can be a very good solution especially with the increase of electric vehicles.


-----

**How does the app works?**

The application allows us to add our private charging station so that it is visible to all users on Be Charge under a new category of charging stations that are *private*. The application allows us to specify the days and months when we are available to accept cars for charging, manage bookins, and receive payment for reservations all through the application. 

The application starts by asking us if we already have a charging station or want to purchase one. 
**In case we want to purchase one**, the application redirects us to the form to purchase a Be Charge charging station.
On the other hand, **in case we already have one**, the app makes us enter our data and after due verification, if all the information has been verified and accepted we could access the homepage of the application. 

-----


**Ideation process**

When the hackathon started, we immediately set to work, working on devising our solution. After doing several researches on the topic, analyzing the problem, and analyzing competitors, we began to look deeper.
Our solution aims to solve the lack of charging stations in some places in Italy.

[<img src="https://i.ibb.co/Df8t8hQ/Schermata-2022-06-26-alle-12-16-22.png" width="650"/>](ciaone)

An example situation might be the following: you own an electric car but do not have a charging station at home, and there are none near your home. Perhaps a neighbor of yours could be a host of a charging station.

After seeing other competitors in other countries how they handled sharing charging centers, we moved to the business side with the **value proposition canvas** of the user of the official Be Charge. Why he should benefit from seeing also the private charging stations? 

[<img src="https://i.ibb.co/F37KRsT/Schermata-2022-06-26-alle-12-44-19.png" width="650"/>](ciaone)


Our keyworkd is "sharing economy". We believe that the future is going in this direction where an item is used and utilized to the maximum to reduce waste and pollution. 

> "The sharing economy has positive environmental impacts, through a reduction in the total resources required and it helps reduce pollutants, emissions and carbon footprints." [Source](https://www.nature.com/articles/s41467-019-09260-4#:~:text=The%20sharing%20economy%20has%20positive,the%20number%20of%20kilometers%20travelled.).

After that we went on to think about the pros and cons of both hosts, Be Charge users buying from private hosts, and Eni.
Pro and cons of the consumer of Be Charge that buys form private hosts:

[<img src="https://i.ibb.co/cghttm6/Schermata-2022-06-26-alle-12-57-52.png)" width="650"/>](ciaone)

Pro and cons of the private host:

[<img src="https://i.ibb.co/cghttm6/Schermata-2022-06-26-alle-12-57-52.png)" width="650"/>](ciaone)

Pro and cons of Eni:

[<img src="https://i.ibb.co/PCSbVkn/Schermata-2022-06-26-alle-13-01-02.png)" width="650"/>](ciaone)


Now *we do not know the exact costs and earnings*, but from our point of view we believe this kind of business is sustainable and has **already been replicated in other parts of the world**.
After verifying the solution, evaluating the pros and cons, and refining the idea, we moved on to the actual implementation of the design and code

**What are the benefits of Eni?**
Eni could gain from the increase in customers, increase in electric cars, and especially by taking a percentage of each recharge made.

**What are the benefits of the hosts?**
Hosts could benefit from each recharge, which is paid for during the booking process by the Be Charge user.

**What are the benefits of the Be Charge user?**
The be charge user will always be assured that there are charging stations nearby.

-----

**Design process**

For the design we followed the style of Be Charge, although this application could also be included on Eni Plenitude and be consistent with the design. 

<img width="840" alt="Schermata 2022-06-26 alle 21 06 22" src="https://user-images.githubusercontent.com/92546954/175830052-b5692cf3-5331-4c1f-93dd-3d3299bd1d4a.png">


We designed the app with a tabbar with three elements. 
In the first element of the tabbar is the **dashboard**, with a report of KW/h sold, earnings and other information. Also in this screen you can add more charging stations and see the history of the recharges made.

Then the second element of the tabbar is the **calendar**, where you can see accepted reservations.

The third element of the tabbar is the **support** section.

In addition, when a **booking request arrives**, a notification pops up. If we open the notification, or we already had the app open, a view will appear that will allow us to accept or reject the booking request.
These are the Hi-Fi prototypes we made: 

[<img src="https://user-images.githubusercontent.com/94188485/175825103-68c49226-7be6-4d46-9a1d-96a3d5c3d9a3.png" width="200"/>](ciaone) [<img src="https://user-images.githubusercontent.com/94188485/175825104-d01aadb5-9ad6-4c8c-a7ab-f3ad0840f97c.png" width="200"/>](ciaone) [<img src="https://user-images.githubusercontent.com/94188485/175825106-6c85f343-ff84-4018-b902-3bab9ac25540.png" width="200"/>](ciaone) [<img src="https://user-images.githubusercontent.com/94188485/175825288-ce0f104f-303a-4b59-ab74-2f323a922e18.png" width="200"/>](ciaone)

-----

**Coding process**

We developed our solution in Swift on Xcode as an iPhone application. The application is only a demo/protype.


https://user-images.githubusercontent.com/92546954/175827309-564094d4-a3c7-4606-8698-6b6412b0cc7c.mov

## Team Members
Alessio Iodice,
Martina Esposito,
Luca Basile,
Marilea Minasi,
Carmine Porricelli.


## Team logo
  <p align="center">
  <img width="582" alt="User Flow Eni Challenge" src="https://user-images.githubusercontent.com/92546954/175790340-080e3405-7877-4d5c-b9f6-aab79f179948.png">
  </p>

          
