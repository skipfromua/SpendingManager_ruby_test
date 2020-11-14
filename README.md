This is branch for local version of SpendingManager.
First thing you need to do is install ruby.

To install Ruby from the default Ubuntu repositories, follow these steps:

First, update the packages index:
  $ sudo apt update
  
Install Ruby by typing:
  $ sudo apt install ruby-full
  
To verify that the installation it was successful run the following command which will print the Ruby version:
  $ ruby --version
  
The output will look something like this:
  ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]
  
Second thing you need to install few packages:
  $ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
  
To manage RubyGems install bundler:
  $ gem install bundler

Rails is depends on many packages including Node.js:
  $ curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  $ sudo apt-get install -y nodejs

Now it's time to install Rails:
  $ gem install rails -v [needed version]
  
We ready to launch SpendingManager.
1. clone this repository to your computer.
2. enter to directory with app and make migrations: "$ rails db:migrate" or "$ rake db:migrate"
3. run server: "$ rails s" and open localhost:3000
