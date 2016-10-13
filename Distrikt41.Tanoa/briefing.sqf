waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};


player createDiarySubject ["changelog","Changelogs"];
player createDiarySubject ["mainrules","Hauptregeln"];
player createDiarySubject ["spawnrules","Sonderregeln im Detail"];
player createDiarySubject ["gangrules","Gang/Gruppen-Regeln"];
player createDiarySubject ["policerules","Polizei-Regeln"];
player createDiarySubject ["medicrules","URD-Regeln"];
player createDiarySubject ["Security","Security-Regeln"];
player createDiarySubject ["illegalitems","RP-Illegale Gegenstände"];
player createDiarySubject ["carrules","RP-StVO und StGB"];
player createDiarySubject ["bußgeld","RP-Bußgeldkatalog"];
player createDiarySubject ["distriktinfo","Forum und Teamspeak"];
player createDiarySubject ["controls","Steuerung"];




	player createDiaryRecord["changelog",
		[
			"Changelog",
				"
					Für den Distrikt41 Changelog schaut bei uns im Forum vorbei: www.distrikt41.de
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Credits Distrikt41",
				"
					Danke an:
					• RobertHammer für sein M4/M16 und Pistolen Pack<br/>
					• Robalo für ASDG Joint Rails<br/>
					• toadie2k für sein HLC Waffen Pack<br/>
					• Alwarren für das FHQ Accessories Pack<br/>
					• Red Hammer Studios für RHS: Escalation <br/>
					• Reyhard für sein RDS A2 Civilian Pack<br/>
					• RedPhoenix für Refined Vehicles  <br/>
					• EgilSandfeld für Bornholm<br/>
					• Jonzie für die Fahrzeuge aus dem Jonzie Mega Mod Pack<br/>
					• Adam für die Fahrzeuge aus dem Adams'Cars Mod Pack<br/>
					• Teriyaki and Zabb für TRYK - Unifomrs  <br/>
					• Sparfell_19 für den Patch zu TRYK - Unifomrs  <br/>
					• CUP Team für das Community Upgrade Project - Weapon,Vehicle und Kleidungs Pack  <br/>
					• zeealex für das Zee Identity Pack<br/>
					• M1lkm8n und Smokedog für JBAD Buildings<br/>
					• rebelvg für MGSR Mod<br/>
					• zabb für TAC Vests<br/>
					• SabreD für Antonov An-2 <br/>
					• Sigma-6 für The Birds and the Bees<br/>
					• pomigit, BadHabitz und ruPal für PG Services<br/>
					• [TF]Nkey für Task Force Arrowhead Radio  <br/>
					• Kamping-Killoch für Killochs Multi-National Pack<br/>
					• Leight für Leights OPFOR Pack  <br/><br/>
					Keep Rocking ;)<br/>
				"
		]
	];

	player createDiaryRecord["mainrules",
		[
			"Kick- und Bangründe",
				"
				Die folgenden Gründe werden mit einem Kick bzw. einem Ban bestraft:<br/>
				• Hacking, Cheating, Exploits und Glitches jeglicher Art<br/>
				• Nutzung von Bugs und Fehlern in der Spielmechanik (diese sind unmittelbar im Forum zu melden)<br/>
				• Beleidigungen (egal ob RP oder nicht, diese sind zu unterlassen da es schwer unterschieden werden kann)<br/>
				• Jede Art von Rassismus, Radikalismus etc sind verboten, egal ob im Verhalten oder in der Namensgebung<br/>
				• Random Death Matching (RDM)  und Vehicle Death Match (VDM)<br/>
				• Safezonenverstöße (siehe Safezonen)<br/>
				• Gruppen-Bündis Verstöße (siehe Gruppenregeln)<br/>
				• Combat Logging (bei RP-Situationen, Überfällen, Festnahmen, im Kampfgeschehen ausloggen) ebenso unmittelbar nach dem Tod disconnecten um Inventar etc zu sichern<br/>
				• Trolling in jeglicher Form<br/>
				• Andere Spieler zu Regelverstößen animieren wird ebenfalls mit einem permanenten Ban bestraft<br/>
				• Scripte und Makros jeglicher Art sind Verboten<br/>
				• Belügen im Support, Falsche Anschuldigungen gegen andere Spieler<br/>
				• RP-Vor- und Nachnamen sind PFLICHT<br/><br/>
				!!! UNWISSENHEIT SCHÜTZ NICHT VOR STRAFE !!!<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["mainrules",
		[
			"Distrikt41 Besonderheiten", 
				"
				RP-Pflicht<br/>
				1. Man ist IMMER in der Rolle, es gibt kein Out-of-RP. Wenn spieltechnische Probleme/Regelfragen etc auftauchen sind diese NACH der RP-Aktion im Teamspeak zu klären.<br/>
				2. Vor JEDEM Beschuss/Töten/Überfall etc MUSS eine RP-Handlung vorausgehen mit angemessener Reaktionszeit für die Betroffenen. Töten etc ohne vorherige Kommunikation wird als RDM geahndet.<br/>
				3. Achtet darauf das Eure Kommunkation in solchen Fällen auf LAUT gestellt ist und man Euch weit genug hören kann. Achtet auf Reaktionen des Gegenübers und wiederholt die Ansprache zur Not nochmals.<br/><br/>
				
				Keine New-Life-Regel!<br/>
				1. Die Wanted-Liste bleibt über die Restarts bestehen.<br/>
				2. Nur durch Festnahme/Tötung durch die Polizei wird man wieder vollkommen Straffrei.<br/>
				3. Nach dem Respawn/Wiederbelebung läuft die Geschichte weiter (Strafverfolgung, Rachefeldzüge, RP-Geschichten etc) man ist KEINE neue Person<br/><br/>
				
				Safezonen (schwarze Kreise auf der Karte)<br/>
				1. In Safezonen darf nicht gelootet, getazert, geschossen oder überfallen werden!<br/>
				2. In Safezonen darf nicht geklaut oder Autos entwendet werden!<br/>
				3. In Safezonen darf keine Schießerei, Verfolgung oder Gefecht starten.<br/>
				4. Angriffe auf eine Safezone unterliegen strengen Regeln und müssen mindestens 15min vorher angekündigt werden (Zivil-Sidechat + Cop-Nachricht) inklusive teilnehmenden Personen/Gruppen<br/>
				5. Safezonen der Polizei/Security (z.B. Cop-HQ) dürfen von Zivilisten NICHT betreten werden. Die Polizei/Security darf ohne Ankündigung von der Schusswaffe gebrauch machen.<br/><br/>
				Ausnahme: <br/>
				- Die Polizei darf Tazern um fliehende Personen zu stoppen<br/>
				- Gefechte die Außerhalb der Safezone beginnen, können in die Safezone hereingetragen werden (um verstecken in der Safezone zu vermeiden)<br/><br/>
				
				URD ist Unantastbar, immer<br/>
				1. URD ist stehts Neutral und belebt/heilt/repariert alle Gruppierungen.<br/>
				2. URD-Mitglieder dürfen NIEMALS überfallen, bedroht, beschossen oder getötet werden.<br/>
				3. Sollte ein Gefecht noch laufen, ist der URD darüber zu Informieren um mögliche Gefährdung bei Wiederbelebung zu vermeiden.<br/>
				4. URD und Wiederbelebte Personen nehmen NICHT an laufenden Kampf-Aktionen teil. Sie können Ihre Gegenstände einsammeln und entfernen sich schnellstmöglich aus dem Gebiet.<br/>
				3. URD-Kleidung und Gegenstände werden liegen gelassen und unter keinen Umständen entwendet. Besitz derselben kann zum Ban führen.<br/><br/>
				
				Mindestanzahl an Cops für bestimmte Aktionen<br/>
				1. Für den Überfall der Staatsbank müssen 8 Polizisten (Security zählt nicht zur Anzahl!) online sein<br/>
				2. Für den Überfall der Chemiefabriken müssen 5 Polizisten (Security zählt nicht zur Anzahl!) online sein<br/>
				3. Für den Überfall von Tankstellen müssen 2 Polizisten (Security zählt nicht zur Anzahl!) online sein<br/>
				4. Belagerungen/Safezonenangriffe und Geiselnahmen gegen die Polizei sind erst ab 5+ Polizisten erlaubt (Security zählt nicht dazu)<br/>
				5. Aktionen, Geiselnahmen und Überfälle  zwischen Spielern sind an KEINE Cop-Mindestzahl gebunden<br/><br/>
				
				Gruppenregeln / Kennzeichnungspflicht<br/>
				1. Weitere Details siehe Sektion Gruppenregeln<br/>
				2. Gruppen ab 4 Mann müssen ein einheitliches Gangtag VOR dem Namen tragen<br/>
				3. Zusammenarbeiten zwischen Gruppen bzw Gruppen und Einzelpersonen müssen angekündigt werden und sind NUR für eine einmalige Aktion erlaubt<br/>
				4. Gruppenmitglieder und angekündigte Verbündete werden automatisch in jedes RP mit eingebunden und können reagieren (z.B. bei Überfällen etc)<br/>
				"
		]
	];
	
	player createDiaryRecord ["mainrules",
		[
			"Schadensersatz durch den Support", 
				"
				Fahrzeuge<br/>
				- In Ausnahmefällen (durch bekannte Bugs, Desyncs) können Fahrzeuge ersetzt werden<br/>
				- Unfälle und eigene Unfähigkeit beim Fahren geben KEINEN Anspruch auf Schadensersatz<br/><br/>
				
				Ausrüstung, Geld, Sonstiges<br/>
				- Ausrüstung, Geld, Rohstoffe etc werden grundsätzlich NICHT ersetzt.<br/><br/>
				
				Karma, Bankguthaben nach Charakterlöschung<br/>
				- Die Datenbank löscht Charaktere nach 6 Wochen inaktivität<br/>
				- Eine Erstattung von Karma, Geld etc findet NICHT statt<br/><br/>
				
				Gangmieten / Hausmieten / Kisteninhalt<br/>
				- Vergessene Mieten und damit verlorene Häuser können NICHT erstattet werden, da diese aus der Datenbank gelöscht sind<br/>
				- Kisteninhalte verschwinden derzeit NUR wenn mehrere Personen gleichzeitig versuchen auf das Inventar zu zugreifen. Oder zeitgleich versucht wird mehrere Gegenstände rein/rauszunehmen. Eine Erstattung hierfür findet NICHT statt.<br/>
				"
		]
	];

	
	player createDiaryRecord ["spawnrules",
		[
			"RDM und VDM", 
				"
				Random Deathmatch<br/>
				1. Spieler töten ohne jedgliches schlüssige Role Play-Kommunikation ist verboten und wird mit Ban bestraft.<br/>
				Es muss IMMER eine Kommunikation stattfinden. Ist dies nicht der Fall ist es RDM und führt zum Kick/Ban. (z.B. Eine klar ersichtlicher Straßenspeere gilt als Kommunikation.) <br/>
				Lasst den Spielern genug Zeit zum Reagieren 10-30sec.<br/>
				2. Nach Eröffnung des RPs darf die betroffene Person unmittelbar reagieren (z.B. wenn man überfallen wird)<br/>
				3. Wenn man nicht Teil eines Konflikts ist, hat man das Gebiet zu verlassen. Solltet ihr trotz dieser Info bei einem Feuergefecht getötet werden habt ihr keinen Anspruch auf Schadensersatz. Mischt ihr euch ein und tötet jemanden ohne vorangehende RP-Aktion, zählt dies als RDM.<br/>
				4. Blaulicht/Sirenen/Hupen sind kein unmittelbarer Grund das Feuer zu eröffnen.<br/><br/>
				
				Vehicle Deathmatch<br/>
				1. Das Überfahren von Personen ist IMMER verboten, Unfälle sind sofort der Polizei und dem URD zu melden.<br/>
				2. Rammen von Fahrzeugen ist NUR bei Fluchtversuchen erlaubt. Wenn dabei das eigene Fahrzeug in die Luft geht, gibt es dafür keinen Schadensersatz<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["spawnrules",
		[
			"Respawn / Wiederbelebung", 
				"
				Respawn<br/>
				1. Wird man in einem Gefecht getötet und wählt den Respawn muss man 15 Minuten an seinem Spawnort verweilen (wird skripttechnisch abgesichert)<br/>
				2. Der Respawn-Ort darf NICHT in dem Gefechtsgebiet liegen. Man darf sich in dieser Zeit NICHT in die laufende Aktion einmischen<br/>
				3. Erst NACH Ablauf des Respawn-Timers darf man sich wieder dem Gefechtsort nähern bzw. ins Gefecht eingreifen<br/>
				4. Polizei/Security unterliegen nicht dem Spawn-Skript, sie überwachen die 15min in Eigenregie bzw führen ihre Streife an einem anderen Ort fort und nehmen nicht mehr an der laufenden Aktion teil<br/>
				5. URD hat keine Respawn-Regelung, durch seine Unabhänigkeit kann er jederzeit wieder überall agieren<br/><br/>
				
				Wiederbelebung durch URD<br/>
				1. URD führt Wiederbelebungen nur durch, wenn das Gebiet durch alle beteiligten Kampfparteien freigegeben wurde (Nachfrage via Sidechat/Funk)<br/>
				2. Wiederbelebte Personen haben sich FRIEDLICH zu verhalten. Sie greifen nicht wieder direkt ins Gefecht ein.<br/>
				3. URD kann gerettete Personen zurück in die nächste Stadt/Krankenhaus mitnehmen.<br/>
				4. Wiederbelebte Personen unterliegen dem Schutz durch den URD. Sie werden NICHT beschossen oder festgenommen.<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["spawnrules",
		[
			"Safezonen", 
				"
				In Safezones darf nicht geschossen, wird nichts gestohlen, geraubt, gefangen genommen oder überfallen werden. Es darf nicht von einer oder in eine Safezone(Rebellenaußenposten etc.), auf Polizei oder andere Spieler, geschossen werden. Die Polizei hat sich aus Rebellenaußenposten fern zu halten, außer man ist in einer aktiven Verfolgung. Dann dürfen Polizisten den Außenposten betreten.<br/>
				Safezonen sind durch einen schwarzen Kreis auf der Karte markiert<br/>
				1. Alle Polizeistationen und Areale der Security sind Spawn- und Safezones<br/>
				2. Alle Außenposten und Areale der Rebellen sind Safezones<br/>
				3. Die Städte Nexoe, Sandvig, Roenne und Aakirkeby gelten als Safe und Spawnzonen<br/>
				4. Alle Stützpunkte von festen Spielergruppen gelten als Safe und Spawnzonen (siehe Kartenmarkierungen)<br/>
				5. Die Grenzen der Zonen sind fließend. Wer meint diese mit dem Maßband auszumessen, darf wegen Trolling gehen.
				6. Bei Missachtung dieser Regelung wird strikt geahndet<br/>
				7. Die Safezoneregelung ist für Spieler, DIE in einer AKTIVEN Verfolgung/Kampf involviert sind in der Zeit aufgehoben!<br/>
				8. Safezonen können nach Absprache mit der Polizei bzw der betroffenen Gang aufgehoben werden (für Terrorwarnungen und große Gefechte z.B.). Hierzu ist mind. 15min vorher eine Ankündigung zu machen! Details dazu siehe Forum distrikt41.de <br/><br/>
				
				Besonderheiten zu Safezonen<br/>
				- Polizeiareale sind absolutes Sperrgebiet! Diese dürfen von Zivilisten nicht betreteten werden. Die Polizei darf ohne Vorwarnung von der Schusswaffe gebrauch machen.<br/>
				- In Safezonen sind Waffen geholstert zu tragen und Maskierungen abzunehmen, jeglicher Verstoß wird ingame von der Polizei geahndet.<br/>
				- Im Rahmen der Strafverfolgung darf die Polizei auch in einer Safezone tazern und Personen festnehmen, sofern diese versuchen zu fliehen.<br/>
				"
		]
	];
	
	
	player createDiaryRecord["illegalitems",
		[
			"Illegale Gegenstände",
				"
				Folgende Gegenstände und Fahrzeuge sind als illegal angesehen und der Besitz wird mit einer Geldstrafe sowie die Beschlagnahmung der Fahrzeuge/Gegenstände belangt. Sollten diese Fahrzeuge mehrfach für Straftaten jeglicher Art genutz werden, werden diese von der Polizei fachgerecht entsorgt. Das Urteil über das Fahrzeug fällt der ranghöhste Polizist und übernimmt die Verantwortung über seine Taten.<br/><br/>
				
				Illegale Fahrzeuge:<br/>
				- Alle bewaffneten Fahrzeuge<br/>
				- Alle gepanzerten Fahrzeuge (geschlossene Rebellen-HMMWVs, Ifrit, Fenneq/Strider)<br/>
				- Alle Polizei-Fahrzeuge<br/>
				- Alle Security-Fahrzeuge<br/>
				- Alle URD-Fahrzeuge (klauen von URD-Fahrzeugen wird mit BAN bestraft!)<br/><br/>

				Illegale Waffen<br/>
				Jede Waffe und die dazugehörige Munition, die NICHT beim Waffenhändler oder Herotrader bzw der Hero-Waffenproduktion erhältlich ist wird als illegal eingestuft.<br/>
				Mit Waffenschein sind folgende Waffentypen legal zu tragen:<br/>
				- Alle Pistolen und Revolver<br/>
				- Alle Maschinenpistolen<br/>
				- Alle Tazer-Waffen<br/>
				- Alle MK16 Sturmgewehre und Varianten
				<br/><br/>

				Illegale Waren und Gegenstände<br/>
				- Gegenstände aus negativen Liefermissionen<br/>
				- Heroin ( auch Schlafmohn )<br/>
				- Kokain ( auch Kokablätter )<br/>
				- Marihuana ( auch Hanfblatt )<br/>
				- Meth ( und dessen Zutaten )<br/>
				- gefälschte Ausweise<br/>
				- Alle Arten von Masken, Halstüchern, Ghillie-Suits oder sonstigen Gegenständen die die Identität verschleiern</br>
				- Polizeibekleidung, -ausrüstung und -waffen<br/>
				- Securitybekleidung, -ausrüstung und -waffen<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["carrules",
		[
			"StVO - Wasserfahrzeuge", 
				"
				1. Fremde Boote ohne Erlaubnis durch die Gegend zu schieben ist ein Verstoß und wird geahndet.<br/>
				2. Boote durch die Gegend schieben mit der Absicht, jemanden zu verletzen wird geahndet.<br/>
				3. Schwimmende Leute zu überfahren ist verboten und wird bestraft.<br/>
				"
		]
	];
	
		player createDiaryRecord ["carrules",
		[
			"StVO - Luftfahrzeuge", 
				"
				1. Andere Luftfahrzeuge grundlos zu rammen wird mit einem Ban bestraft.<br/>
				2. Das Fliegen von Hubschraubern/Flugzeugen ist nur mit einer Fluglizenz erlaubt. Fliegen ohne eine Fluglizenz wird mit Bußgeld geahndet.<br/>
				3. In Spawnstädten ist das Landen nur auf den ausgewiesenen Landeplätzen erlaubt. <br/>
				4. Das Schweben / Fliegen über einer Stadt unter 150m ist verboten und wird mit einer Geldbuße bestraft. Tiefes schweben über der Stadt um einen anderen Spieler aufzunehmen zählt als Landeversuch.<br/>
				5. Alle Polizeiareale, die Staatsbank und das Staatsgefängnis sind absolute Flugverbotszonen. Beschuss durch die Polizei kann ohne Vorwarnung erfolgen<br/>
				"
		]
	];
	
	player createDiaryRecord ["carrules",
		[
			"StVO - Bodenfahrzeuge", 
				"
				1. Personen zu überfahren ist IMMER verboten, egal in welcher Situation, und wird mit einem Bann bestraft. (siehe VDM ). Im Falle eines Unfalls wird dies von der Polizei untersucht und im Unschuldsfall wird keine Strafe verhängt.<br/>
				2. Absichtliches positionieren vor Autos um überfahren oder verletzt zu werden wird mit einem Bußgeld/Ban belegt.<br/>
				3. Fremde leere Fahrzeuge zu grundlos zu zerstören ist verboten und wird mit Kick bzw. Ban bestraft.<br/>
				4. Es gilt die StVO auf allen Straßen und Plätzen. Den Verkehrszeichen ist Folge zu leisten.<br/>
				5. Die vorgeschriebene Geschwindigkeit in Städten und Dörfern ist 50km/h. Außerorts 100km/h für PKW`s und 80km/h für LKW`s.<br/>
				6. Straßen sind da um bentutzt zu werden, solltet ihr Offroad erwischt werden, wird dies mit einem Bußgeld geahndet.<br/>
				7. Um Fahrzeuge im Spiel zu führen braucht ihr einen entsprechenden Führerschein. Das Fahren ohne den speziellen Führerschein wird mit Bußgeld bestraft.<br/>
				8. Hupen dienen NUR als Warnsignal (etwa bei Kurven oder dem Einfahren auf Hauptstraßen). Permanentes Hupen wird als Trollen betrachtet, verwarnt und bei nicht befolgen mit Ban bestraft.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["medicrules",
		[
			"Grundregeln für den URD", 
				"
				1. URD ist eine NEUTRALE Hilfsorganisation die Zivilisten, Rebellen und Polizisten gleichberechtigt wiederbelebt und repariert.<br/>
				2. URD ist stehts neutral und bevorzugt keine Seite oder verweigert einer anderen seine Hilfe (außer eine Kampfaktion läuft noch).<br/>
				3. Der URD begibt sich unter KEINEN Umständen in die PVP-Zone und leistet dort Hilfe, da seine Neutralität dort aufgehoben ist.<br/>
				4. URD gilt immer als Neutral und ist unter keinen Umständen anzugreifen, zu überfallen oder zu töten.<br/>
				5. Vor einer Wiederbelebung nach einem Feuergefecht hat der URD via Sidechat/Funk sicher zu stellen, das das Gefecht von BEIDEN Parteien beendet ist.<br/>
				6. Dem URD ist es verboten für Zivilisten Taxi zu spielen oder auf Liefermissionen mitzunehmen. Nur der Rücktransport vom Unfallort zur nächsten Stadt/Base etc ist gestattet.<br/><br/>
				"
		]
	];
	
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Gefängnis / Strafzettel", 
				"
				1. Ein Bußgeld muss in voller Höhe bezahlt werden. Dies wird automatisch von euren Konten abgezogen.<br/>
				2. Sollte das Bußgeld nicht gezahlt werden, wird von einem Beamten eine angemessene Gefängnisstrafe erteilt.<br/>
				Hätte ein Spieler durch ein Busgeld weniger als 15.000 auf dem Konto wird das Busgeld automatisch zurückgewiesen.<br/>
				3. Besonders schwerwiegende Straftaten oder bei akuter Fluchtgefahr wird eine Isolatiosnhaft angeordnet.<br/>
				4. Personen müssen informiert werden, warum sie kontrolliert werden und warum sie ein Ticket ausgestellt bekommen.<br/>
				5. Bußgelder werden nach der Fahndungsliste und dem Bußgeldkatalog berechnet (Situationsabhängig )<br/>
				6. Alle Bußgelder oder Beutegelder müssen im Team geteilt werden um Streit über Gefangennahmen zu vermeiden. Geschieht dies nicht, wird eine Verwarnung erteilt.<br/>
				7. Personen, welche Polizei Equipment besitzen/führen, müssen mit verschärften Maßnahmen (z.B. sofortige Festnahme) rechnen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Razzien (Haus / Drogengebiete)", 
				"
				Haus/Lagerhallen - Durchsuchungen<br/>
				Eine Hausdurchsuchung MUSS durch die Polizei via Polizeimeldung 15min vorher angekündigt werden und entsprechend mit Sperrzone markiert werden.<br/>
				1. Eine Durchsuchung mussen aus mindestens einem Sergeant und drei weiteren Polizisten bestehen.<br/>
				2. Bei Durchsuchungen sind alle teilnehmenden Polizisten von der 15 Minuten Regel betroffen.<br/>
				3. Eine Durchsuchung ist nur erlaubt wenn die betroffene Person online ist.<br/>
				4. Orte für eine Durchsuchung sind Spielerhäuser und Gangbasen.<br/>
				5. Alle Zivilisten in der Gegend müssen festgehalten und durchsucht werden.<br/>
				6. Wenn nichts Illegales gefunden wurde, müssen die festgehaltenen Personen wieder freigelassen werden.<br/>
				7. Wenn etwas Illegales gefunden wurde, müssen die Personen mit Strafen belegt oder ins Gefängnis gesteckt werden.<br/>
				8. Tödliche Waffen dürfen bei einer Bedrohung sofort eingesetzt werden.<br/>
				9. Vor Ort schwer bewaffnete Personen dürfen zur Eigensicherung unschädlich gemacht werden, wenn von diesen eine Bedrohung ausgeht, auch ohne Vorwarnung.<br/>
				10. Wenn eine Durchsuchung beendet wurde, muss die Gegend von der Polizei geräumt werden.<br/>
				11. Nach einer Durchsuchung darf derselbe Punkt für 4 Stunden nicht mehr durchsucht werden.<br/>
				12. Backup kann jederzeit angefordert werden.<br/><br/>
				
				Raids von Drogengebieten/-verarbeitern<br/>
				1. Für einen Raid mindestens ein Sergeant in Begleitung von drei weiteren Polizisten anwesend sein<br/>
				2. Raidorte die aufgesucht werden dürfen sind: Drogenfelder, Verarbeiter<br/>
				3. Der Dealer darf jederzeit aufgesucht werden.<br/>
				4. Wenn bei Ankunft keine Personen am Raidort anzutreffen sind, darf vor Ort maximal 10 Minuten gewartet werden<br/>
				5. Raids können als Zivilfahnder verkleidet durchgeführt werden um die Tarnung zu gewährleisten<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Streifen", 
				"
				1. Streifen dürfen zu Fuß durchgeführt werden.<br/>
				2. Fahrzeugstreifen müssen mit mindestens 2 Polizisten durchgeführt werden.<br/>
				3. Die Geschwindigkeitsbegrenzung gilt auch für Polizisten auf Streifen. Außnahmen sind Alarmfahrten (Blaulicht)<br/>
				4. Befohlener Anzug ist grundsätzlich die Ausgehuniform mit passendem Barret, Polizeiweste oder Tiefziehholster. Andere Kleidungen werden von der Leitung angeordnet.<br/>
				5. Streifen müssen regelmäßig einen Statusbericht durchgeben. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Impounding (Beschlagnahmung)", 
				"
				1. Alle Fahrzeuge dürfen grundsätzlich NICHT beschlagnahmt werden! (Auch Cop-Fahrzeuge nicht!)<br/>
				2. Ausnahmen bestehen nur wenn das Fahrzeug direkt die Durchfahrt auf einer Straße oder Einfahrt behindert oder wenn es einen Spawnpunkt blockiert (z.B. Händler u. Garagen)<br/>
				3. Bei Gefangennahmen werden Fahrzeuge nicht beschlagnahmt, allerdings können sie im Revier sichergestellt werden zur Beweisaufnahme. <br/>
				4. Jeder Straftäter ist selbst verantwortlich für das was er verliert und riskiert. Nach einer Festnahme besteht kein Anspruch auf Sicherung seiner Ausrüstung oder Fahrzeuge.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Luft- und Bodenunterstützung", 
				"
				1. Helikopter dürfen nur nach Absprache bzw. Erlaubnis des im Dienst höchstrangigen Polizisten eingesetzt werden.<br/>
				2. Es darf maximal 1 UH60/Hellcat aktiv sein. Dieser darf nur zur Zerstörung bewaffneter bzw gepanzerter Fahrzeuge eingesetzt werden oder um Hubschrauber und Flugzeuge zum Landen zu zwingen. Flüchtige Fahrzeuge können auch zum Stop gezwungen werden.<br/>
				3. Es darf maximal 2 Tigr/HMMWV aktiv sein. Dieser darf nur in besonderen Fällen (Geiselnahme, Banküberfall, Großrazia, Event) eingesetzt werden.<br/>
				4. Bei längerer Verfolgungsjagd (15min+) darf ein bewaffneter Helikopter eingesetzt werden.<br/>
				5. Cal 50 HMMWVs und bewaffnete Helikopter sind nicht für die Bekämpfung von Personen gedacht. Sollten diese beschossen werden haben sie allerdings das Recht sich zu verteidigen.<br/>
				6. Sollte eine unmittelbare Bedrohung des Lebens eines Polizisten oder Zivilisten bestehen, darf der Helikopter oder der HMMWV cal50 gegen Personen eingesetzt werden. Die Entscheidung und Verantwortung für den Einsatz obliegt dem Dienstgradhöchsten und ältesten.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Checkpoints", 
				"
				1. Checkpoints und Straßensperren dürfen jederzeit errichtet werden.<br/>
				2. Ein Checkpoint muss aus mindestens 2 Polizisten und 2 Fahrzeugen bestehen.<br/>
				3. Checkpoints müssen nicht auf der Karte markiert werden.<br/>
				4. Checkpoints müssen ausreichend abgesichert werden mit Blaulicht, Strahlern etc um Umfälle zu vermeiden.<br/>
				5. Es wird bei jeder Durchfahrt des Checkpoints kontrolliert.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Tödliche Waffen", 
				"
				1. In Städten darf generell nur mit Tazern geschossen werden, außer das eigene Leben ist unmittelbar bedroht. In diesem Fall darf auf tödliche Waffengewalt zurückgegriffen werden.<br/>
				2. In Städten müssen tödliche Waffen geschultert getragen werden. Desweiteren dürfen Waffen nur dann im Anschlag getragen werden, wenn es die Situation erfordert. (Doppelt Strg drücken um die Waffen aus dem Anschlag runter zu nehmen.)<br/>
				3. Um einen Flüchtigen zu stoppen der versucht in einem Fahrzeug oder Hubschrauber zu fliehen, darf auf das Fahrzeug bzw. den Hubschrauber geschossen werden um ihn an der Flucht zu hindern. Primärziel Reifen/Rotor.<br/>
				4. Gestohlene Polizeifahrzeuge dürfen mit allen der Polizei verfügbaren Mitteln gestoppt und/oder außer Gefecht gesetzt werden!<br/>
				5. Beim Eindringen in Sperrzonen (Polizei/Security Reviere, Trainingsgelände der Polizei, Gefängnis) darf durch die Polizei OHNE Vorwarnung von scharfen Waffen Gebrauch gemacht werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Polizeiregeln - Allgemeines Verhalten", 
				"
				1. Polizeiautos müssen IMMER abgeschlossen werden. Die Polizeisirene darf nur im Notfall eingeschaltet werden.<br/>
				2. Sollte es die Situation erfordern, ist ein hochrangiger Beamter autorisiert, einem Rekruten schwere Waffen zu übergeben. (Bsp. Es gibt einen Überfall auf eine der Hauptstädte, nur ein hochrangiger Beamter ist online und sonst nur Rekruten. Dann ist es dem Beamten gestattet, für diesen Einsatz Rekruten mit besseren Waffen auszustatten.)<br/>
				Als hochrangig gelten: Alle Ränge ab Sergeant.<br/>
				3. Sind weniger als 6 Polizeibeamte aktiv im Dienst sind diese von der 15 Minuten Spawnregel befreit. Beachtet das die Security nicht als Polizei angesehen wird. Sie haben IMMER ihre 15 Minuten.<br/>
				4. Der Chief bzw Chief Assistent hat das letzte Wort (Gesetz, Richter und Henker)<br/>
				5. Befehl und Gehorsam ist zu beachten.<br/>
				6. Es müssen immer mind. 6 Polizistenslots belegt sein, bevor ein Zivilistenslot belegt wird!<br/>
				7. Nach längeren Gefechten - mit mind. 4 gefallenen Polizisten - wird offiziell eine Amoklage ausgerufen.<br/>
				7.1. Somit steht es der Polizei frei, erheblich stärker bewaffnete Verstärkung zu rufen, welche auch gepanzerte Fahrzeuge/Hubschrauber beinhaltet.<br/>
				7.2 Waffenausgabe erst ab Rang: Sergeant. Nach dem Einsatz sind ALLE WAFFEN UNVERZÜGLICH in die WaKa zu legen!<br/>
				7.3 Der Polizei steht frei, ob sie den Einsatz einer Spezialeinheit (z.B. Security) genehmigen. Diese Einheit wird temporär in den offiziellen Polizeidienst gehoben und untersteht der Polizeiführung vor Ort.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Interaktion mit der Polizei", 
				"
				Den Anweisung der Polizei ist unbedingt Folge zu leisten. Geschieht dies nicht, wird ein Bußgeld ausgesprochen (siehe Bußgeldkatalog) oder im wiederholten Fall mit Arrest bestraft.<br/><br/>
				
				Die gesamten Polizeiareale, Gefängnis und Gangbasen sind deren Savezonen und damit Sperrgebiet für Zivilisten. Das betreten ist strikt verboten und wird bestraft (siehe Bußgeldkatalog). Von der Schusswaffe wird ohne Vorwarnung Gebrauch gemacht!<br/><br/>
				
				- Absichtliches Blocken oder sonstige Störungen von Polizisten, um sie an der Ausübung ihrer Pflicht zu hindern, wird mit Arrest bestraft.<br/>
				- Falschaussagen gegenüber der Polizei werden mit Bußgeld bestraft.<br/>
				- Nur weil ihr von der Polizei mit Blaulicht verfolgt werdet dürft ihr nicht ohne Kommunikation das Feuer eröffnen. Beachtet die Verhältnismäßigkeit.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["Security",
		[
			"Das Security Unternehmen", 
				"
				Die Security ist ein Sicherheitsunternehmen das sein Gehalt vom Staat bezieht und kostenlose Sicherungsdienste, Transportbegleitung etc anbietet.<br/>
				Sie sind für jeden über den Zivilen Kanal 123.4 erreichbar.<br/>
				1. Jeder Regelverstoß wird mit Degradierung oder Rauswurf aus der Security geahndet!<br/>
				2. Wir sind in erster Linie eine Sicherheitsfirma und KEINE Polizisten (Fahrzeug bzw. Personenkontrollen, etc.).<br/>
				3. Die Unterstützung der Polizei erfolgt NUR nach Aufforderung seitens der Polizei. Andernfalls gilt das Jedermannsrecht.<br/>
				4. Hochkalibrige Waffen (6.5+) und Maschinengewehre sind NUR für Hochsicherheits-Transporte erlaubt. Bei regulären Schutzaufträgen ist maximal Kaliber 5.56 gestattet.<br/>
				5. Das Tragen der Polizeiuniform, das benutzen des Polizei Fuhrpark und der Polizeiwaffen ist strengstens untersagt. (siehe Punkt 1)<br/>
				6. Der Polizeifunkkanal wird nur in Ausnahmefällen und/oder Gefahrensituationen benutzt. Kommunikation mit der Polizei erfolgt über deren Leitstelle<br/>
				7. Die Polizeigebiete werden NICHT ohne Genehmigung betreten. Das selbe gilt umgekehrt.<br/>
				8. Die Security darf sich unter keinen Umständen selbst in den Polizeidienst versetzen (und somit Sonderrechte erhalten).<br/>
				9. Die Security unterliegt IMMER der 15 Minuten Spawnregel und überwacht dies in eigener Verantwortung.<br/>
				"
		]
	];
	
	player createDiaryRecord ["gangrules",
		[
			"Gruppenregeln", 
				"
				1. Als Feste Gruppen gelten alle Gruppierungen die aus mindesten 4 Personen oder mehr bestehen.<br/>
				2. Feste Gruppen müssen sich strikt an die Serverregeln halten, da sie immer mit mehreren Spielern unterwegs sind.<br/>
				3. Alle Gruppenbasen sind Spawn und Safezones!<br/>
				4. Alle Gruppenmitglieder müssen klar ersichtliche und einheitliche Tag's VOR ihren Namen nutzen.<br/>
				5. Es ist VERBOTEN das sich Gangs über einen längeren Zeitraum und Allgemein verbünden.<br/>
				6. Gangs dürfen sich für EINMALIGE Aktionen verbünden Bank, Geiselnahme, Terrorakt etc. Dies ist rechtzeitig VORHER per Sidechat an die Spieler, sowie per Nachricht an die Polizei bekannt zu geben.<br/>
				7. Sollte diese Meldung nicht erfolgt sein können jegliche Tötungen durch die unangemeldeten Verbünbeten als RDM betrachet und geahndet werden.<br/>
				8. Durch den Zusammenschluss werden beide Gruppen für die Aktion als EINE Gruppe betrachtet, mit allen Vor- und Nachteilen.<br/>
				9. Die Regeln 5.-8. gelten sinngemäß für den Zusammenschluss einzelner Spieler mit Gruppierungen.<br/>
				10. Eigene TS-Channel können auf Nachfrage eingerichtet werden nach einer Spielzeit von 2-3 Wochen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["gangrules",
		[
			"PVP - Gebietsübernahme", 
				"
				1. Alle einnehmbaren Ganggebiete sind jederzeit von allen Gruppen einnehmbar.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["bußgeld",
		[
			"Schifffahrt", 
				"
				1. Boote grundlos schieben: 1000€<br/>
				2. Schwimmende Leute behindern: 1250€<br/>
				3. Personen mit einem Boot 'überfahren' -> VDM<br/>
				4. Illegale Gewässer befahren (Schwarzmarkt): 2500e<br/>
				5. Kein Bootsführerschein: 5000€<br/>
				6. Fahren unter Alkohol oder Drogeneinfluss: 5000€<br/>
				
				"
		]
	];
	
	player createDiaryRecord ["bußgeld",
		[
			"LuftVO", 
				"
				1. Versuchte Landung ohne Landeerlaubnis: 5000€<br/>
				2. Landung ohne Landeerlaubnis: 10000€<br/>
				3. Landen auf nicht gekennzeichneten Flächen: 8500€<br/>
				4. Fliegen ohne Kollisionslichter: 3000€<br/>
				5. Absichtliche Kollision -> VDM<br/>
				6. Zu niedriges Fliegen: 8000€<br/>
				7. Fliegen ohne Pilotenschein: 30000€ <br/>
				8. Fliegen unter Alkohol oder Drogeneinfluss: 10000€<br/>
				"
		]
	];
	
	player createDiaryRecord ["bußgeld",
		[
			"StVO", 
				"
				1. Zu schnelles fahren: 3000€<br/>
				2. Fahren ohne Licht: 1000€<br/>
				3. Falsch geparkt: 500€<br/>
				4. Verkehrsbehinderung: 1000€<br/>
				5. Fahrlässiges Fahren: 5000€<br/>
				6. Verursachen eines Unfalls: 7500€<br/>
				7. Fahrerflucht: 7500€<br/>
				8. Fahrzeugtötung -> VDM<br/>
				9. Offroad: 2500€<br/>
				10. Kein Verbands- oder Werkzeugkasten: 300€<br/>
				11. Hupen ohne triftigen Grund: 500€ pro Hupen<br/>
				12. Missachtung der Anschnallpflicht: 1000€<br/>
				13. Fahren ohne PKW-Führerschein: 1500€<br/>
				14. Fahren ohne LKW-Führerschein: 15000€<br/>
				15. Fahren unter Alkohol oder Drogeneinfluss: 5000€<br/>
				
				"
		]
	];
	
	player createDiaryRecord ["bußgeld",
		[
			"Zivilrecht II", 
				"
				1. Besitz von Waffen ohne Lizenz: 20000€ + Beschlagnahmung<br/>
				2. Besitz von Illegalen Waffen: 50000€ + Beschlagnahmung<br/>
				3. Benutzen von illegalen Fahrzeugen: 50000€ + Beschlagnahmung oder fachgerechte Entsorgung<br/>
				4. Mit gezogener Waffe in der Stadt: 5000€<br/>
				5. Illegaler Schusswaffen gebrauch: 25000€<br/>
				6. Mord: 20min Gefängnis<br/>
				7. Beschuss auf einen Polizeibeamten: 5min Gefängnis<br/>
				8. Widerstand gegen die Staatsgewalt: 10000€ + 5min Gefängnis<br/>
				9. Überfall: 10000€ + 5min Gefängnis <br/>
				10. Bankraub: 30min Gefängnis<br/>
				11. Geiselnahme: 15min Gefängnis<br/>
				12. Drogenbesitz/Handel: 15000$ + Wert der Sichergestellten Drogen -> Max. 100k sonst Gefängnis<br/>
				13. Gefängnisausbruch: 15min Isolationshaft<br/>
				14. Beteiligung an einer illegalen Straßensperre: 8000€<br/>
				15. Falschaussage: 10000€<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["bußgeld",
		[
			"Zivilrecht I", 
				"
				1. Diebstahl: 5000€<br/>
				2. Sachbeschädigung: 3000€.<br/>
				3. Sich als Polizist ausgeben: 10000€<br/>
				4. Missachtung polizeilicher Anordnungen: Gefängnisstrafe<br/>
				5. Behinderung der Staatsgewalt: 2500€<br/>
				6. Betreten von abgesperrten Bereichen: 5000€ + Platzverweis<br/>
				7. Belästigung und/oder Beamtenbeleidigung: 1000€<br/>
				8. Illegales Straßenrennen: 3000€<br/>
				9. Vermummungsverbot: 500€<br/>
				10. Einnahme von bewusstseinserweiternden Substanzen: 2500€
				"
		]
	];
		
	
	player createDiaryRecord ["distriktinfo",
		[
			"Forenadresse und TS-IP", 
				"
				Unser Forum findet Ihr unter: www.distrikt41.de<br/>
				Feedback und Verbesserungsvorschläge sind gerne erwünscht. Bugmeldungen ebenso.<br/><br/>
				
				Weitere Infos zum Spiel, Skillsystem, Karma, Shoppreise etc findet ihr unter: wiki.distrikt41.de<br/><br/>
				
				Unser Teamspeak erreicht ihr über: 89.163.145.101<br/><br/>
				"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Steuerung und Sondertasten",
				"
				^: (oben links neben der 1) TÜREN öffnen<br/>
				Z: Spielermenu öffnen<br/>
				U: Auf-/Abschließen von Autos und Haustüren<br/>
				Left Shift + G: Niederschlagen (Nur Zivis)<br/>
				Left Shift + O: Fesseln mit Kabelbindern/Handschellen (nach Niederschlagen möglich)<br/><br/>
				
				F1: Zur Hauptwaffe wechseln<br/>
				F2: Zur Pistole wechseln<br/>
				F3: Zum Raketenwerfer wechseln<br/>
				F4: Ohrenstöpsel einlegen<br/>
				(Die F-Tasten können individuell umbelegt werden)<br/><br/>
				
				F8: Aufgeben inkl. Hände über Kopf<br/><br/>
				
				Left Windows: Interaktionstaste (z.B. Tanken, Hausmenü etc.)<br/>
				Left Windows + T: Geld aufheben<br/><br/>
				
				Für Cops:<br/>
				F5: Blaulicht<br/>
				F6: Sirene<br/>
				F: Hupgeräusch wechseln<br/>
				Left Shift + R: Festnehmen<br/><br/>
				"
		]
	];