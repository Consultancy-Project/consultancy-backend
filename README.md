# Back End
    ___  ___                         _____     _ _        
    |  \/  |                        |_   _|   | | |       
    | .  . | ___  _ __   ___ _   _    | | __ _| | | _____
    | |\/| |/ _ \| '_ \ / _ \ | | |   | |/ _` | | |/ / __|
    | |  | | (_) | | | |  __/ |_| |   | | (_| | |   <\__ \
    \_|  |_/\___/|_| |_|\___|\__, |   \_/\__,_|_|_|\_\___/
                              __/ |                       
                             |___/                        

## About this Project
The goal of this project is to create a successful web application from a student-led project idea. Our team has created an app that solves a real world problem, and allows users to authenticate with a third-party service, and consume at least two other apis.

## Table of Contents

  - [Authors](#authors)
  - [Local Setup](#local-setup)
  - [Front End Repo](#front-end-repo)
  - [Running the tests](#running-the-tests)
  - [Endpoints](#endpoints)
  - [Technologies](#technologies)
  - [Versioning](#versioning)
  - [Contributing](#contributing)

## Authors
Alexander Brueck – [Github](https://github.com/brueck1988) • [LinkedIn](https://www.linkedin.com/in/brueck1988/)

Aidan McGuire - [Github](https://github.com/A-McGuire) • [LinkedIn](https://www.linkedin.com/in/aidanmcguire)

Diana Buffone - [Github](https://github.com/Diana20920) • [LinkedIn](https://www.linkedin.com/in/dianabuffone/)

Jahara Clark - [Github](https://github.com/jaharaclark/) • [LinkedIn](https://www.linkedin.com/in/jaharaclark/)

George Ho - [Github](https://github.com/georgehwho) • [LinkedIn](https://www.linkedin.com/in/georgehwho/)

## Local Setup
1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:{drop,create,migrate}`

## Front-End Repo
- Money Talks Front-End Application
  - [Repo](https://github.com/Consultancy-Project/frontend) | [Heroku](https://be2102-consultancy-project.herokuapp.com/)

### Prerequisites
To run this application you will need Ruby 2.5.3 and Rails 5.2.6

## Running the tests
RSpec testing suite is utilized for testing this application.
- Run the RSpec suite to ensure everything is passing as expected  
`bundle exec rspec`

## Endpoints
### News Data: `GET https://be2102-consultancy-project-be.herokuapp.com/api/v1/news`

```json
{:data=>
[{:id=>"6640702",
  :type=>"article",
  :attributes=>
   {:headline=>
     "'In the Heights' is a must-see summer blockbuster that celebrates love, life and community, critics say",
    :url=>
     "https://www.cnbc.com/2021/06/10/in-the-heights-reviews-what-critics-are-saying.html",
    :image=>
     "https://image.cnbcfm.com/api/v1/image/106895036-1623328257070-in_the_heights_Cropped.jpg?v=1623328337",
    :summary=>
     "\"In the Heights\" arrives in theaters and on HBO Max on Thursday. Here's what critics are saying about the musical adaptation."}},
 {:id=>"6640371",
  :type=>"article",
  :attributes=>
   {:headline=>
     "Facing shortage of high-skilled workers, employers are seeking more immigrant talent, study finds",
    :url=>
     "https://www.cnbc.com/2021/06/10/study-employers-seek-immigrants-amid-shortage-of-high-skilled-workers.html",
    :image=>
     "https://image.cnbcfm.com/api/v1/image/106570883-15917159302020-06-08t160011z_2004595697_rc245h9a1vjc_rtrmadp_0_health-coronavirus-usa-new-york.jpeg?v=1623277608",
    :summary=>
     "The U.S. does not have enough high-skilled workers, and employers are seeking immigrant talent to help meet demand, according to a new report."}},
 {:id=>"6640372",
  :type=>"article",
  :attributes=>
   {:headline=>
     "As the U.S. faces a flurry of ransomware attacks, experts warn the peak is likely still to come",
    :url=>
     "https://www.cnbc.com/2021/06/10/heres-how-much-ransomware-attacks-are-costing-the-american-economy.html",
    :image=>
     "https://image.cnbcfm.com/api/v1/image/103537634-GettyImages-492752888.jpg?v=1532564143",
    :summary=>
     "Ransomware, a program that hackers use to hold digital information hostage, has become the top choice of malware for criminals."}}]}
```
External API used: [Finnhub](https://finnhub.io/docs/api/introduction)

### Tweets Data: `GET https://be2102-consultancy-project-be.herokuapp.com/api/v1/tweets`
```json
{:data=>
  [{:id=>"1403029734678728706",
    :type=>"tweet",
    :attributes=>
     {:tweet=>
       "RT @OptionsMaxPain: #Options Flow Stream Update $TSLA $FB $GME $MRNA $AMC $IWM $SPX #OptionsTrading #OptionsFlow #optionstrade #optiontradi…",
      :username=>"Marv24066348"}},
   {:id=>"1403029732657045505",
    :type=>"tweet",
    :attributes=>
     {:tweet=>
       "Do stocks go up in dividend day? I thought giving away dividends in essence reduces the company-wide profits and hence drops in stock price. But seeing $MSFT rise today, I guess I stand corrected.",
      :username=>"hemalitanna"}},
   {:id=>"1403029726868946948",
    :type=>"tweet",
    :attributes=>
     {:tweet=>
       "@jsblokland If you want to protect against inflation you buy stocks or gold.\n" +
       "If you’re gullible you buy crypto/BTC which is a pyramid scheme hence all the replies you’ll get trying to get you to buy it.",
      :username=>"RichTheNewbie"}}]}
```
External API used: [Twitter](https://developer.twitter.com/en/docs/twitter-api)

## Technologies
Project is created with:
* Ruby version 2.5.3
* Rails version 5.2.6
* RSpec
* Capybara
* SimpleCov
* Travis CI
* Heroku


## Versioning
- Ruby 2.5.3
- Rails 5.2.6

## Contributing
1. [Fork it](<https://github.com/Consultancy-Project/consultancy-backend/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
