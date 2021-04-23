@echo off

color 0a
title Pi-hole startup



@WSLCONFIG /T Pi-hole                                                                                                               
@ECHO [Pi-Hole Launcher]                                                                                                           
@"C:\Program Files\Pi-hole\LxRunOffline.exe" r -n Pi-hole -c  "apt-get -qq remove dhcpcd5 > /dev/null 2>&1 ; apt-get clean"                                                                
@"C:\Program Files\Pi-hole\LxRunOffline.exe" r -n Pi-hole -c  "for rc_service in /etc/rc2.d/S*; do [[ -e $rc_service ]] && $rc_service start ; done ; sleep 3" 



echo NETWORK SETUP COMPLETE.

ping google.com

                            
@EXIT                                                                                                                              
