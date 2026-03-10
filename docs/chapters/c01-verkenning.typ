= Verkenning

#let global-firepower-footnote = footnote[
  N.B.: puntjes 1-12 zijn in de csv opgesplitst in `stock` en `ready`.
  Dit is omdat niet alle toestellen en voertuigen _in stock_ gevechtsklaar zijn en het interessant kan zijn om te kijken naar het _ready_-aandeel per land om te zien hoe goed de volledige vloot onderhouden wordt.
  Voor vaartuigen is deze opsplitsing niet gegeven door #cite(<globalfirepower2026>, form: "author").
]

#let global-firepower-navy-footnote = footnote[
  Het onderscheid tussen verschillende types schepen is vaak slechts vaag en relatief gedefinieerd. #cite(<WikipediaWarship>)
  Voor ons doen de meeste onderscheiden er niet toe, want wij focussen meer op vliegdekschepen en onderzeeërs dan op het onderscheid tussen de rest.
]

== NATO Defence Expenditure 2014-2025

De NAVO publiceerde in augustus 2025 een groot overzicht @NATO2025DefenceExpenditure van enkele belangrijke samenvattende cijfers voor de alliantie tussen 2014 en 2025.
Een soortgelijk overzicht van uitgaven tussen 1949 en 2024 is te vinden in @SIPRI_Milex_2025.
Wij hebben ervoor gekozen om ons te baseren op de gegevens die de NAVO zelf beschikbaar stelt.
Belangrijk daarbij is dat de cijfers voor 2024 en 2025 slechts schattingen zijn, waarvoor op moment van schrijven nog geen exacte cijfers zijn vrijgegeven.
We hebben de volgende bestanden geëxtraheerd uit de Excel-bestanden die de NAVO zelf beschikbaar stelt (allen onder `assets/nato-defence-expenditure`):

+ `shareofgdp`: een overzicht van het aandeel van het BBP per land dat naar defensie gaat
+ `realchange`: procentuele toename van defensiebudget t.o.v. vorig jaar per land
+ `gdp2021usdollars`: BBP in aantal miljoen \$US (uitgedrukt in prijzen en wisselkoersen 2021)
+ `militarypersonelinthousands`: aantal duizend militairen (niet nader gespecifieerd) \
  $-->$ kunnen we achteraf combineren om uitgaven per militair te berekenen
+ `spenditurepercapita2021usdollar`: uitgaven per capita aan defensie (uitgedrukt in 2021 \$US)
+ `portionofexpenditure_xyz`: procentueel aandeel van defensiebudget dat naar `xyz` gaat \
  $-->$ voor `personel`, `infrastructure`, `equipment` en `other` (niet nader gespecifieerd)

== Global Firepower 2026

Wat betreft een overzicht dat in aantallen uitdrukt hoeveel stuks vliegtuigen, tanks en andere een lidstaat heeft, geeft de NAVO zelf geen precieze getallen vrij.
Het #cite(<EDA2025DefenceData>, form: "prose") geeft enkel een overzicht geaggregeerd op niveau van de Europese Unie, dus we moeten op zoek naar een andere bron.
#cite(<globalfirepower2026>, form: "prose") geeft elk jaar geüpdatete cijfers terug, waardoor wij beslist hebben om de nodige informatie van hun website te scrapen.

De data die we van #cite(<globalfirepower2026>, form: "author") hebben gescraped, hebben we ondergebracht in `assets/global-firepower` en geaggregeerd in één enkel csv-bestand met volgende informatie per land: #global-firepower-footnote #global-firepower-navy-footnote

+ `aircraft_total`: vliegtuigen waarover de luchtmacht beschikt, geen onderscheid op type
+ `fighters_total`: beschikbare gevechtsvliegtuigen, geen onderscheid in types/generaties\
  $-->$ cf. F-16, Eurofighter Typhoon, ...
+ `attack_aircraft_total`: aanvalsvliegtuigen (bedoeld voor lucht-tot-grondoperaties)\
  $-->$ cf. A-10 Warthog
+ `fixed_wing_transport_total`: transportvliegtuigen ("fixed wing" = vliegtuig)\
  $-->$ cf. A400M, C-17, ...
+ `tanker_transport_total`: Multi Role Tanker Transport-vliegtuigen (MRTT), voor in-air refueling en andere logistieke ondersteuning\
  $-->$ cf. A330 MRTT, KC-135 Stratotanker
+ `helicopter_total`: beschikbare helikopters (zowel aanvals- als transport- en reddingshelikopter)\
  $-->$ cf. NH-90, Agusta A109, ...
+ `attack_helicopter_total`: aanvalshelikopters \
  $-->$ cf. AH-64 Apache
+ `tanks_total`: beschikbare (Main Battle) tanks (MBT)\
  $-->$ cf. Leopard 2A7, Abrams M2A2, T-72, ...
+ `apc_total`: aantal Armored Personel Carriers (APCs), Armored Fighting Vechicles (AFVs) en Infantry Fighting Vehicles (IFVs), pantservoertuigen met een ondersteunende rol, vooral bedoeld om troepen van en naar gevechtssituaties te brengen.\
  $-->$ cf. Griffon
+ `spg_artillery_total`: Self-Propelled Gun (SPG), zwaar geschut (op rupsbanden), lijkt op tank, is het niet (visueel duidelijker door zwaarder kaliber)
+ `towed_artillery_total`: zwaar geschut dat voortgetrokken wordt
+ `mlrs_total`: Multiple Launch Rocket System, zowel surface-to-air als surface-to-surface\
  $-->$ cf. HIMARS
+ `ships_total`: aantal schepen in marine
+ `ships_tonnage_total`: laadruimte van alle schepen in de marine, om uit te drukken of een marine veel lichte of een aantal zware schepen heeft
+ `aircraft_carrier_total`: vliegdekschepen
+ `helo_carrier_total`: helikopterschepen, bijna-vliegdekschip voor vertical take-off en landing (helikopters, VTOL-vliegtuigen zoals F-35B)
+ `destroyers_total`: aantal _destroyers_
+ `frigates_total`: aantal fregatten
+ `corvettes_total`: aantal corvetes
+ `submarines_total`: aantal duikboten, zowel voor kruisraketten als ballistische raketten en "normale" duikboten
+ `coastal_patrol_craft_total`: kustpatrouille schepen
+ `mine_warfare_craft_total`: mijnbestrijdingsvaartuigen (mijnenvegers en -jagers)
