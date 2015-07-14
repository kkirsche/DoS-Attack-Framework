# Tsunami Syn Flood 

[Article Source](http://blog.radware.com/security/2014/10/tsunami-syn-flood-attack/)

Over the week of October 1, 2014 Radware’s Emergency Response Team (ERT) detected a new type of SYN flood which is believed to be specially designed to overcome most of today’s security defenses with a TCP-based volume attack. Within a 48-hour period two different targets in two different continents were targeted with this new technique and have experienced very high attack volumes.
As a background, a normal SYN packet is characterized with about 40-60 bytes per packet.  The new attack type departs from the typical make up of a SYN packet by transmitting very large packet sizes which complicate and defeat many defense algorithms.  This new SYN-Flood is extremely different in that it is characterized as being approximately 1000 bytes per packet in size and its attack can hit an entire network range.  

Attacks with these dimensions to them quickly consume bandwidth and thus far even these modest timed attacks were witnessed experienced pulses of about 4-5Gbps in attack traffic. This new type of attack has the ability to saturate the internet pipe of its victim faster than most attack types we’ve witness beforehand.  We have aptly named this new volumetric flood “Tsunami SYN-Flood Attack.”

## What Was Learned
What makes this new attack interesting is we’ve found a new method in the wild that carries a tsunami-like volumetric attack over the TCP protocol. Normally, when a perpetrator was to pick a weapon for massive volume, they would need to settle on a UDP-based algorithm as the stateless nature of this technology and small sized packets are perfect for volumetric attacks such as DNS, NTP and CHARGEN reflected floods. In this new case, attackers have designed a volumetric attack based on TCP or stateful-protocols which can present a brand new danger. This new danger is that  with a TCP volumetric flood on a web server, a victim will not be able to deploy defenses similar to UDP-based attack to mitigate it.

## What Radware Recommends
Radware’s ERT recommends that organizations verify that their mitigation solution can block the Tsunami SYN Flood Attack.  Early detection is key and most typical TCP-based SYN cookie-type protections are not effective. Here are a few key areas to consider in this case:

1. Behavioral algorithms are key in both detecting and mitigating these threats. Not having an early behavioral detection capability on premise will render the application stack and most modern defenses useless against this new attack weapon.
2. A hybrid model of cloud and on-premise mitigation is the most effective and sound solution. Since this is a volumetric attack which can have pulse characteristics to it, a targeted victim will need fast and high quality detection coordinated with cloud scrubbing mitigation capability to prevent internet pipe saturation.
3. An updated emergency response plan is key to dealing with security attacks when they occur.  Make sure you have on in place, that it’s updated and your team knows what they need to do when an attack is detected.


## Long Range Thoughts
This is the first that we’re seeing this new type of attack which we feel has the potential for a new trend in DDoS attacks. One can surmise that the attacks which were witnessed may have been “exploratory”, in order to “fine-tune” the concept and evaluate the effectiveness of deployed defenses.  

Should you be interested in more information or to test the effectiveness of this new type of SYN-flood please feel free to contact Radware’s ERT to see if your deployed resources can handle such attack types. Additional information on the Tsunami SYN Flood can also be found in our ERT Threat Alert.
