player createDiarySubject ["Clan Valhalla", "Clan Valhalla Information"];
player createDiarySubject ["Server Rules", "Wasteland Australia Server Rules"];
player createDiarySubject ["Changelog", "Wasteland Australia Change Log"];
player createDiarySubject ["Wasteland", "What is Wasteland?"];
player createDiarySubject ["Donate", "Donate to Support the Server"];


player createDiaryRecord["Clan Valhalla",
[
"Credits",
"
<br/>
	Contributors:<br/><br/>
	Credit to Tonic for original game-mode creation.<br/>
	Special thanks to TRIGGA for for mission and game mode development and editing.<br/>
	Special Credit to Damit and Death Inc for porting and modifications.<br/>
	Special thanks to 404Games for development.<br/>
	Special thanks to Bohemia Interactive Studios' for their awesome game, but not so awesome scripting language.<br/>
	And finally, special thanks to everyone who has suggested features or helped us identify bugs.<br/><br/>
	
	The Team:<br/><br/>
	Development Lead - TRIGGA<br/>
	Developer - Hal<br/>
	Developer - TheCads<br/>
	Developer - Flying Fox<br/>
	Developer - DaEMON<br/>
	Server Host - Clan Valhalla<br/>
	
"
]
];

player createDiaryRecord["Clan Valhalla",
[
"Bug and Cheat Reporting",
"
<br/>
	Found a bug? Please report it at: www.clanvalhalla.com.au/forums<br/><br/>
	Suspect a player is hacking or exploiting? Please report it at: www.clanvalhalla.com.au/forums<br/><br/>
	Please remeber this game-mode is in continuous development and there will be bugs. 
"
]
];

player createDiaryRecord["Clan Valhalla",
[
"Teamspeak",
"
<br/>
	There is a public Teamspeak 3 server available for players of this server.<br/><br/>
	Teamspeak 3 IP: 27.50.71.250:10162<br/><br/>
	Please join and say hello! (Please speak English)
"
]
];

player createDiaryRecord["Clan Valhalla",
[
"General Information",
"
<br/>
	This server is provided and maintained by Clan Valhalla (www.clanvalhalla.com.au).<br/><br/>
	TeamSpeak 3 : 27.50.71.250:10162<br/><br/> 
	Server Version: v12.0<br/>
	Mod Keys Server Side for @cba @stmovement @JSRS @blastcore and arma 2 beta<br/>
	Build Date: 02/01/2013 12:50:00
"
]
];

player createDiaryRecord["Clan Valhalla",
[
"Donate",
"
<br/>
	Our Servers rely on Donations to keep them running.<br/>
	If you like playing on our servers please help keep them running by donating at www.clanvalhalla.com.au<br/>
	For just $10 per month you can take advantage of a special offer on the server which includes:<br/><br/>
	A whitelist reserved slot on the server, so you can always play...no waiting.<br/>
	A choice of 1 Custom Character skin in 1 of the 3 Factions. Available on Both Servers 1 and 2.<br/>
	The ability to create a custom Teamspeak channel with your own password.<br/><br/>
	Visit www.clanvalhalla.com.au to donate and read more information about the Donation Package.<br/><br/>
	Group Discount apply for Clans of 5 or more.
"
]
];

player createDiaryRecord["Server Rules",
[
"Clan Valhalla Server Rules",
"
<br/>
	1. Keep bad language to a minimum. No foul language or racist comments against other playersis allowed. If you have a problm with another player, try to resolve it on direct channel chat or in an extreme case contact an admin.<br/>
	2. Do not use Global Chat to speak with one person or your team. At least use Side Channel or get into our public Teamspeak 3 Server 27.50.71.250:10162.<br/>
	3. Team killing team mates when you BLUFOR or OPFOR is forbidden and punishable. Play as Independent if you want to be free for all.<br/>
	4. Revealing information about your (ex)team to other teams is strictly forbidden.<br/>
	5. Do not exploit R3F or any other addons or you will be banned.<br/>
	6. Using or spamming with loud\long custom sound commands will cause punishment up to permaban.<br/>
	7. Hacking is FORBIDDEN and you will be caught. we check the logs daily and run scripts to detect you, punishable with permaban.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"v13.0",
"
<br/>
		[Added] - When spawning on a spawn beacon, HALO jump available.<br/>
		[Added] - New store interaction system.<br/>
		[Added] - Supply drop mission written by OCUK MarKeR and tweaked by 404Games.<br/>
		[Added] - Lots of new mission spawn locations.<br/>
		[Fixed] - Floating crates/objects sometimes appearing above Novy.<br/>
		[Fixed] - AI Team defend script. Be careful, they now actually use their mounted weapons!<br/>
		[Fixed] - Vehicles no longer spawn in silly places / silly angles.<br/>
		[Fixed] - Not able to interact with stores sometimes.<br/>
		[Fixed] - Outpost having overpowered weapons.<br/>
		[Fixed] - Money Duping.<br/>
		[Fixed] - AI getting into mission vehicles.<br/>
		[Fixed] - Fixed some issues with missions.<br/>
		[Fixed] - Added in some defines for missions to easily edit the times.<br/>
		[Improved] - Vehicle HUD to now show the players respective role within the vehicle.<br/>
		[Improved] - Mission spawning system thanks to Kettlewell.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"v13.1",
"
<br/>
		[Improved] - Custom character Skins, now available in any slot in any associated faction - Thanks to HAL.<br/>
		[Improved] - Vehicle cleanup script to remove more damaged vehicles.<br/>
		[Fixed] - Other misc fixes that have been mentioned on the forums, Thanks for your help!<br/>
		[Changed] - Initial spawn weapon to G17 with tourch for night ops - Press L to activate Tourch.<br/>
		[Changed] - Lowered initial damage to vehicles.<br/>
		[Removed] - Music.<br/>
		[Removed] - Vehicle Store until ready for use.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"v13.2",
"
<br/>
		[Added] - Most interactions now have a Cancel Action option.<br/>
		[Fixed] - Abandoned Truck showing up as recon vehicle.<br/>
		[Fixed] - Object lock now functions correctly.<br/>
		[Fixed] - Spawn beacon, radar, object etc unlock/lock actions now stop on death.<br/>    
		[Fixed] - The mission RPT errors.<br/>
		[Fixed] - The vehicle count RPT error.<br/>
		[Fixed] - mission_Outpost timeout.<br/>
		[Changed] - Gun and General stores no longer have over-powered super radars.<br/>
		[Changed] - Player now starts with only 1x food and water.<br/>
		[Changed] - Added more variation to vehicle weapons spawns and removed OP weapons.<br/>
		[Enhancement] - Refuel and Repair vehicle functions have been improved.<br/>
		[Enhancement] - The mission RPT's to have more information to help with debuging.<br/>
		[Enhancement] - Server startup optimizations.<br/>
		[Enhancement] - General wasteland mission optimizations; many changes to improve performance.<br/>
		[Enhancement] - Made some changes to defend area to make the AI more aware.<br/>
		[Enhancement] - The mission system is now all pre compiled and steamlined to make it run smoother.<br/>
		[Enhancement] - Mission will no longer run the same one twice.<br/>
"
]
];
player createDiaryRecord["changelog",
[
"v13.3",
"
<br/>
		[Changed] - Indy slots increased to 80, reb & blue lowered to 20 each.<br/>
"
]
];
player createDiaryRecord["changelog",
[
"v13.4",
"
<br/>
		[Fixed] - Some larger items were not able to be locked.<br/>
                [Added] - SUV Skins<br/>
                [Added] - Better creates!<br/>
"
]
];
player createDiaryRecord["changelog",
[
"v13.5",
"
<br/>
		[Fixed] - Heli Mission.<br/>
                [Changed] - Environment Settings.<br/>
"
]
];
player createDiaryRecord["changelog",
[
"v13.5",
"
<br/>
                [Changed] - Environment Settings. (removed overcast colour)<br/>
                [Added] - Zone Spawn Locations.<br/>
                [Fixed] - Minor Skin Issues.<br/>
"
]
];
player createDiaryRecord["changelog",
[
"v13.7",
"
<br/>
                [Changed] - Price Changes.<br/>
                [Fixed] - Minor Bugs.<br/>
"
]
];
player createDiaryRecord["Wasteland",
[
"Hints & Tips",
"
<br/>
    At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.<br/><br/>
    When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, castles, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.<br/><br/>
    If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.<br/><br/>
    Always be on the lookout for nightvision. Two pairs are located in the Large Cache, and there are pairs scattered throughout cars. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.<br/><br/>
    When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.<br/><br/>
    The helicopter from the side mission spawns with no fuel, so do not make a mad dash for the chopper unless you are armed and plan to protect it, or have some fuel which can be found in the fuel truck, or in the palated barrels from the abandoned base.<br/>
    There are very aggressive AI characters that spawn with most side missions and will protect the mission objectives with deadly force, be aware of them.<br/>
"
]
];

player CreateDiaryRecord["Wasteland",
[
"WELCOME TO THE WASTELAND",
"
The Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to TRIGGA.
<br/><br/>

FAQ<br/>
Q. What am I supposed to do here?<br/>
A. See the above description
<br/><br/>
Q. Where can I get a gun?<br/>
A. Weapons are found in one of three places, first in ammo caches that randomly spawn around the map inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/><br/>
Q. How do I eat, Drink, Heal and use fuel and repair kits?<br/>
A. press the til key ` to access the player menu or scroll to player menu, then select the item and use.
<br/><br/>
Q. Why is it so dark, I cant see.<br/>
A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or Night Vision Goggles before the darkness sets in. You can find night vision goggles in vehicles, or you can purchase them at the gunshops.
<br/><br/>
Q. Is it ok for me to shoot my team mates?<br/>
A. If you are member of BLUFOR or OPFOR teams, then you are not allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/><br/>
Q. Whats with the teapots and big bags?<br/>
A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from water barrels, food stands, dead players bodies or by killing animals and cooking the meat. Food and water will randomly spawn around the map, or you can visit the General Store and purchase these items. Other items that will randomly spawn are fuel cans for refueling vehicles, medkits for healing yourself, and repair kits for repairing vehicles. Each of these is a one-time-only use item.
<br/><br/>
Q. I saw someone breaking a rule, what do I do?<br/>
A. Simply go into global chat and get the attention of one of the admins and let them know who the offender was and what they did and they will be dealt with swiftly.
<br/>
"]
];

player createDiaryRecord["Donate",
[
"Donation Package",
"
<br/>
	Our Servers rely on Donations to keep them running.<br/>
	If you like playing on our servers please help keep them running by donating at www.clanvalhalla.com.au<br/>
	For just $10 per month you can take advantage of a special offer on the server which includes:<br/><br/>
	A whitelist reserved slot on the server, so you can always play...no waiting.<br/>
	A choice of 1 Custom Character skin in 1 of the 3 Factions. Available on Both Servers 1 and 2.<br/>
	The ability to create a custom Teamspeak channel with your own password.<br/><br/>
	Visit www.clanvalhalla.com.au to donate and read more information about the Donation Package.<br/><br/>
	Group Discount apply for Clans of 5 or more.
"
]
];
