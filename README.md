# Portable Pi-hole
A Pi-hole for Windows 10 which can work on any network, and works automatically once set up



Note: I am in no way affiliated with [**©Pi-hole, LLC**](https://pi-hole.net) and do not take credit for the [code in PH4WSL1.cmd](https://github.com/DesktopECHO/Pi-Hole-for-WSL1). This is simply a guide for how to set everything up to be able to run a Pi-hole on the go.


If you've ever used a Pi-hole, you know that it's the absolute best way to block ads. One problem many people have with the Pi-hole, however, is that it's so good that it almost comes as a shock when you sign into a different network and start getting ads again! This guide will walk you through setting up a portable Pi-hole so that you can have protection against ads no matter what network you're using.

Setting this up is simple enough:

 - Download and run PH4WSL1.cmd (either from this repository or its [original repository](https://github.com/DesktopECHO/Pi-Hole-for-WSL1))
 - Download Pi-hole_launcher.cmd and paste this in C:\Users\your_username\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup - be sure to replace "your_username" with your username or find the folder manually!
 - Configure your computer to use itself as its DNS server. To do this:
   - Open control panel > View network status and tasks > change adapter settings
   - Single-click on "Wi-Fi" (you can do this for Ethernet too if you want)
   - Click on "Change settings of this connection"
   - In Wi-Fi properties (the window that opened), double-click "Internet Protocol Version 4 (TCP/IPv4)" to open its properties
   - Switch "Obtain DNS server address automatically" to "Use the following DNS server addresses:"
   - Under "Prefered DNS server:", enter 127.0.0.1
   - Hit OK as many times as necessary to close everything

Just like that, you have a portable Pi-hole set up - enjoy never seen ads again!

If you want to see Pi-hole's main page for statistics once everything is set up, you can type "localhost" into your search bar in any browser and navigate from there. You can also set your router to use your computer with the Pi-hole as the DNS server for every device on the network (set up your router as you would for a normal Pi-hole).
