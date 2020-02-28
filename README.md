# RaspPi-TorRouter
Automated script to convert a Raspberry Pi into a Tor (Onion) Router. 

DISCLAIMER: I have written this tutorial and uploaded this script for educational and research purposes only. Browsing on Tor networks or websites is your sole responsibility and with respect to rules and policies within your region or jurisdiction. 

I have tired to explain the steps in this tutorial in a simple manner as possible for the general non-technical auidence. Reviews and suggestions are most welcome. 

Introduction: 

Tor - 
Tor is free and open-source software for enabling anonymous communication. The name is derived from an acronym for the original software project name "The Onion Router".[1][2]Tor directs Internet traffic through a free, worldwide, volunteer overlay network consisting of more than seven thousand relays[3] to conceal a user's location and usage from anyone conducting network surveillance or traffic analysis. Using Tor makes it more difficult to trace Internet activity to the user: this includes "visits to Web sites, online posts, instant messages, and other communication forms".[4] Tor's intended use is to protect the personal privacy of its users, as well as their freedom and ability to conduct confidential communication by keeping their Internet activities unmonitored.

Raspberry Pi - 
The Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation to promote teaching of basic computer science in schools and in developing countries. [5][6][7]

Tools required: 
1.	A Raspberry Pi: https://www.raspberrypi.org/products/ 
•	I have included the link for the official website alternatively can be purchased from third-party websites such as Amazon, EBay etc. 
•	I used the Raspberry Pi 3 Model B+ for this tutorial. 

2.	A Raspbian OS: http://downloads.raspberrypi.org/raspbian/images/
•	I have previously tried setting up the Tor Router with Raspbian Buster Desktop (Version: September 2019) with unsuccessful results i.e. the script wouldn’t work and the tor connection failed. 
•	I later tried the same with Raspberry Jesse (July 2017). This version successfully allowed me to connect to the Tor network on my first attempt. 
•	Raspberry Jesse (July 2017): http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-07-05/
•	You are more than welcome to try different versions of the Raspbian images though I cannot guarantee valid results for the same. 

3.	A SD card, a SD card reader, a mouse, a keyboard, a HDMI cable, a monitor, an Ethernet cable and an active internet connection. 

Installing Raspbian to the Raspberry Pi: 
1.	Insert the SD card into your desktop or laptop. 
2.	Download a version of Raspbian (I recommended Raspberry Jesse version: July 2017)
3.	Once downloaded check the hash sum values to ensure the file has been downloaded with no corruption. 
4.	The Raspberry file will be downloaded in a Zip format. Extract all the contents of the file into the SD card. 
5.	Safely eject the SD card from your machine and insert it into the Raspberry Pi.
6.	Power on the Raspberry Pi and make sure it is connected to an internet so that all the latest packages are downloaded and installed. 
7.	Follow the on-screen instructions which will guide you through the rest of the setup process. 

Enabling SSH: 
•	SSH must be enabled to ping or remotely log into the Pi

1.	Open the Raspberry Pi Terminal window
2.	Enter sudo raspi-config in a terminal window.
3.	Select Interfacing Options.
4.	Navigate to and select SSH.
5.	Choose Yes.
6.	Select Ok.
7.	Choose Finish

Automated Script: 
•	The automated script makes use of all commands required to get the TOR service up and running. It also installs Tor and starts the service automatically. The Tor service can be disabled when required after deploying the script using sudo service tor stop 
•	You will only need to provide the SSID and password for your Tor router. 

1.	Open the terminal 
2.	Type in cd Desktop
3.	Download the script to your desktop using the git clone command. i.e, git clone https://github.com/WZcabral/RaspPi-TorRouter.git
4.	Next launch the script via using sudo ./installTor.sh
5.	Follow the onscreen instructions and you are done.

Checking Tor status: 
1.	Now connect to the Tor router like you would connect to any other router using the SSID and password you provided.
2.	Open a browser and check if you are on the Tor network via: https://check.torproject.org/
3.	See attached Screenshot. 

References:
1. Li, Bingdong; Erdin, Esra; Güneş, Mehmet Hadi; Bebis, George; Shipley, Todd (14 June 2011). "An Analysis of Anonymity Usage". In Domingo-Pascual, Jordi; Shavitt, Yuval; Uhlig, Steve (eds.). Traffic Monitoring and Analysis: Third International Workshop, TMA 2011, Vienna, Austria, April 27, 2011, Proceedings. Berlin: Springer-Verlag. pp. 113–116. ISBN 978-3-642-20304-6. Retrieved 6 August 2012.
2. "Why is it called Tor?". Tor Project | Support. Retrieved 18 January 2016.
3. "Tor Network Status". Retrieved 14 January 2016.
4. Glater, Jonathan D. (25 January 2006). "Privacy for People Who Don't Show Their Navels". The New York Times. Archived from the original on 31 January 2013. Retrieved 13 May 2011.
5. Cellan-Jones, Rory (5 May 2011). "A£15 computer to inspire young programmers". BBC News.
6. Price, Peter (3 June 2011). "Can a £15 computer solve the programming gap?". BBC Click. Retrieved 2 July 2011.
7. Bush, Steve (25 May 2011). "Dongle computer lets kids discover programming on a TV". Electronics Weekly. Retrieved 11 July 2011
