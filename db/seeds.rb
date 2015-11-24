# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Blog.destroy_all
puts "Empty DB"

Blog.create(
title: "Developers, developers, developers…",
currentIndex: 2,
image_caption: "Code in GitHub",
text: "<br>Fifteen years ago, <a href='https://www.youtube.com/watch?v=8To-6VIJZRE' target=_blank>Steve Ballmer</a> was going crazy for developers. I love that clip.
  That’s bold (no poke intended ☺) and it will remain in tech history forever.</p>
  <p>Now wait a second, why would one of the most important CEO go crazy, lose his breathe
  and, by doing so, end up in the YouTube ‘Comedy’ section? That should give us an
  idea of how <b>developers work is crucial</b>.</p>
  <p>That was 15 years ago. Smartphones and apps did not even exist. Mark Zuckerberg probably
  didn’t even know what social media was.</p>
  <p>2015 will be the year of home automation,
  <a href='http://attackofthefanboy.com/news/oculus-rift-pre-e3-press-conference-set-for-june-11th-price-and-release-date-announcements-possible/' target=_blank>
    virtual reality headsets</a> and
  a lot, lot more. Facebook Messenger for Android has now been downloaded
  <a href='http://techcrunch.com/2015/06/09/the-new-facebook/' target=_blank>1 billion times</a>. To sum it up, content, users
  interactions, <b>information is everywhere</b> and
  it’s just the beginning. Nowadays, everyone can comment a piece of news, share
  high-quality content, shoot videos in 4k or just express their opinion… on @Medium.</p>
  <p>I’ve always been fascinated by web technologies and, if they were asked, some of my
  friends will probably tell you that I’m… not a nerd but nearly ☺. #YOLO I decided it
  was time for me to <b>learn how to code</b>, time for me to dive in the backbone of all
  those apps we use on a daily basis. I started digging into those lines of weird-looking
  characters some months ago now and it’s just fascinating.</p>
  <p>On Monday, I will start
  the IronHack bootcamp in Barcelona and I’m thrilled. I just can’t wait to actually
  build some ideas I have in mind. And do not forget: “Web developers, web developers,
  web developers” ☺",
date: DateTime.new(2015, 6, 8),
author: "Baptiste Brassart",
image: "https://s3-us-west-2.amazonaws.com/bbrassart/github.jpg",
author_logo: "https://s3-us-west-2.amazonaws.com/bbrassart/bbrassart_avatar.jpg",
tags: ["development", "tech", "code"]
)



Blog.create(
title: "Du GIF en barre: les meilleures applis iPhone",
currentIndex: 1,
image_caption: "GIF up your life",
image: "https://s3-us-west-2.amazonaws.com/bbrassart/gif.jpg",
text: "<p>Le <strong>GIF</strong>, on ne sait plus très bien s'il a le vent en poupe, s'il a toujours été
présent, ou si ce n'est qu'une mode passagère. Dans tous les cas, voici une sélection des
<strong>meilleures applications iPhone</strong> du moment... pas que je sois fâché avec Android, c'est juste
que les applis GIF les plus innovantes se trouvent presque toutes sur l'App Store d'Apple.</p><p>
Les développeurs d'applis de chat qui parient sur le GIF s'en donnent à cœur joie, et
ils ont bien raison. Le fun est vendeur, le succès des listes BuzzFeed est là pour
l'attester. Pour ne rien gâcher, c'est souvent parmi ces start-ups que se cachent les
fonctionnalités de demain, celles que les géants du Web adopteront à l'unisson, dans les
semaines et les mois à venir.eruygfkbgrsbukrwebsykuef</p><p>
<h2>Guiffe, giffe, G.I.F. version 2014</h2>
<p>Avant de rentrer dans le vif du sujet, voici un petit retour sur l'actualité bouillonnante
des dernières semaines:</p><ul><li>YouTube lance un <a href='http://buff.ly/1siLPri' target=_blank>
nouvel onglet de partage</a> baptisé GIF. Vous l'aurez deviné, cela vous permet de créer de
petites séquences animées de quelques
kilo-octets avec n'importe quelle vidéo - la fonctionnalité est pour l'instant limitée à
quelques chaînes.</li><li><a href='http://relay.im/' target=_blank>Relay Messenger</a>,
le service qui proposait l'une des toutes meilleures applications pour chatter et
communiquer via des GIFs, s'apprête à fermer ses serveurs.
<a href='http://recode.net/2014/11/19/kik-messenger-takes-38-million-in-funding-buys-gif-startup/' target=_blank>
Rachetée par la société Kik Messenger</a>, les équipes de développement travailleraient actuellement au portage
des fonctionnalités de Relay sur Kik. Au moment de son rachat, Relay comptait
<strong>700 000 utilisateurs inscrits</strong> et acheminait pas moins de 10 millions de
GIFs par mois.</li><li>Depuis l'arrivée d'<strong>iOS 8 pour iMessage</strong>, et depuis
déjà <strong>juin 2014 pour Twitter</strong>, les GIFs sont supportés nativement par ces applis. Collez le contenu du
presse-papier ou le lien GIF, et vous serez sûr que ces boucles vidéo de quelques
secondes seront correctement affichées.</li><li>Twitter toujours... enfin, <strong>Vine</strong>
pour être plus précis. L'appli de partage de courtes vidéos, lancée par le site de microblogging,
est toujours en pleine effervescence. C'est le réseau social qui a connu la plus grosse
progression en 2013. Le nombre d'utilisateurs continue de grimper de jour en jour en 2014.</li></ul>
<p>Le décor est planté, voici tout de suite mon <strong>top 3 des meilleures applis GIF
</strong>, à retrouver sur l'App Store.</p>
<h2>PopKey, le clavier alternatif iOS 100% GIF</h2>
<p>L'application
<a href='https://itunes.apple.com/us/app/popkey-animated-gif-keyboard/id919359310?mt=8'
target=_blank>PopKey</a> est un clavier tiers pour iOS 8, entièrement dédiée aux animations
GIF. Du pain béni pour qui souhaite pimenter ses conversations iMessage.</p>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/popeky.jpg'>
<h3>Les plus de PopKey</h3><ul><li>Si vous utilisez
<a href='http://support.apple.com/fr-fr/ht4976' target=_blank>Emoji</a>, l'appli de smileys
pour iPhone, vous savez d'ores et déjà utiliser PopKey.</li><li>Aucune création de compte n'est
nécessaire.</li><li>C'est élégant, bien développé et parfaitement adapté à iMessage.</li></ul>
<h3>Les moins de PopKey</h3><ul><li>PopKey ne permet pas de coller les liens URL des GIFs
dans le presse-papier de votre iPhone. Actuellement, <strgon>seuls iMessage et Twitter
supportent nativement les GIF</strong>. En clair, si vous chattez avec vos amis sur Facebook Messenger,
Google Hangouts ou WhatsApp, passez votre chemin.</li><li>Le nombre de catégories,
proposées par le clavier. Même si la liste est longue, on aurait tout de même aimé
pouvoir taper ses propres requêtes... juste pour voir les résultats.</li></ul>
<h3>La note finale</h3>
<p>9 / 10 si vous utilisez fréquemment iMessage et Twitter.<br>
2 / 10 si vous passez par d'autres applis.</p>
<h2>Gifit, le copier-coller de GIF à portée de doigt</h2>
<p><a href='https://itunes.apple.com/fr/app/gifit/id896089030?mt=8' taregt=_blank>Gifit</a>
vous donne accès à une banque de données de GIFs quasi-illimitée.
L'appli est éditée par le site web Giphy, une référence en la matière.
L'approche est différente de celle de PopKey. Ici, les liens URL sont publics.
Vous pouvez donc les copier et les <strong>partager où bon vous semble</strong>.</p>

<p>Recherchez le GIF qui vous fait le plus marrer via un mot-clé, effectuez un appui long sur
l'un des résultats pour le prévisualiser. Ensuite, appuyez sur la minature puis
choisissez l'une des options suivantes: <em>Message</em> pour accéder à iMessage,
<em>Copy Image</em> pour la coller sur Twitter, <em>Copy URL</em> pour coller le lien sur
Facebook ou une autre appli, <em>Save</em> pour sauvegarder le GIF dans votre Galerie photo et
<em>Favorite</em>Gifit pour l'ajouter à vos GIFs
favoris. </p>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/Gifit.jpg'>
<h3>Les plus de Gifit</h3>
<ul><li>Aucun compte nécessaire.</li>
<li>Vous pouvez copier l'URL du GIF dans le presse-papier, pour le coller dans
n'importe quelle appli.</li></ul>
<h3>Les moins de Gifit</h3>
<ul><li>Beaucoup d'utilisateurs se plaignent de crashs à répétition. La solution:
désinstaller puis réinstaller l'app. Personnellement, je n'ai rencontré aucun souci lors de
mon test.</li><li>Copier l'URL pour Facebook Messenger, partager directement le GIF sur
iMessage ou Twitter: cette petite gymnastique requiert quelques essais mais tout rentre
très vite dans l'ordre.</li></ul><h3>La note finale</h3><p>8,5 / 10</p>
<h2>PHHHOTO avec 3 H, le photomaton hipster</h2>
<p>L'application PHHHOTO est l'une des toutes meilleures si vous souhaitez créer, en toute
simplicité, des <strong>GIF selfies</strong>. Les résultats obtenus sont particulièrement réussis et, à
l'image d'Instagram, PHHHOTO parvient à sublimer toutes vos clichés, grâce à un <strong>savant
mélange de basse résolution et de jeux de lumière</strong>.</p>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/PHHHOTO.jpg'>
<p>Outre la version grand public, PHHHOTO se finance également à l'aide d'installations,
louées à des promoteurs de soirées. L'exemple le plus récent?  Un <strong>photomaton PHHHOTO</strong>
était l'une des attractions du bateau accueillant la <a href='https://twitter.com/hashtag/MadDecentBoatParty?src=hash'
target=_blank>#MadDecentBoatParty</a>, une soirée
organisée par le label de Diplo, le producteur à succès.</p>
<iframe width='560' height='315' src='https://www.youtube.com/embed/msFC59ttLhc' frameborder='0' allowfullscreen></iframe>
<p>PHHHOTO semble déjà avoir trouvé son public et compte bien devenir <strong>the perfect
party app</strong>. Une appli qui vaut vraiment le détour!</p>
<h3>les plus de PHHHOTO</h3>
<ul><li>Très agréable à utiliser.</li>
<li>Les résultats sont tous plus drôles les uns que les autres.</li></ul>
<h3>les moins de PHHHOTO</h3>
<ul><li>Ne cherchez pas de GIF connus, PHHHOTO est un réseau social, pas une appli pour
trouver des clips <em>LOL</em> ou <em>OMG</em>.</li>
<li>Comme beaucoup de réseaux sociaux naissants, on se sent souvent seul.</li>
<li>Impossible d'ajouter du texte au GIF.</li></ul>
<h3>L' astuce à connaître</h3>
<p>Pour garder une copie de votre GIF PHHHOTO, sans la publier sur d'autres réseaux sociaux,
cochez sur l'option Partager sur Instagram. La vidéo est alors automatiquement
sauvegardée dans la Galerie. Ensuite, à vous de décider si vous souhaitez en faire profiter
les copains sur Instagram.</p>
<h3>La note finale</h3><p>8,5 / 10</p>
<h2>Après le GIF, le déluge</h2>
<p>Des smartphones qui filment en Full HD, voire en 4K, les connexions 4G qui se
généralisent... et des GIFs en cascade. Dans le numérique parfois aussi, c'est dans les
vieux pots qu'on fait la meilleure soupe.</p>
<p>L'article vous a plu? Une appli manquante? N'hésitez pas à participer à la conversation en commentant ce post.</p>
",
date: DateTime.new(2014, 12, 12),
author: "Baptiste Brassart",
author_logo: "https://s3-us-west-2.amazonaws.com/bbrassart/bbrassart_avatar.jpg",
tags: ["iphone", "gif", "applis", "ios"]
)

Blog.create(
title: "Idées cadeaux: les objets geek pour Noël",
currentIndex: 0,
image_caption: "Cadeaux de Noël geek",
image: "https://s3-us-west-2.amazonaws.com/bbrassart/noel_geek.jpg",
text: "<p>Offrir un cadeau de Noël qui plait n'est jamais une mince affaire. Votre ami est
<strong>un peu geek</strong> sur les bords? Cette liste de <strong>cadeaux high-tech à petit prix</strong>
classés par budget est faite pour vous.</p><p>Chaque année, le marché des nouvelles technologies voit
débarquer des centaines de nouvelles références. De l'objet rare aux produits à éviter, ce n'est pas
toujours facile de faire le tri. Vous êtes en panne d'idées? J'ai tenté de classer, en fonction de
différents budgets, les meilleurs <strong>cadeaux spécial geek</strong>, qui feront plaisir à votre
enfant, à votre ami, ou à tout autre membre de votre famille amateur de nouvelles technologies.</p>
<h2>Moins de 25 euros: cartes cadeaux d'applications ou de musique en ligne</h2>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/spotify.jpg'>
<p>Que peut-on offrir à un geek pour moins de 50 euros? Un jeu vidéo, bien entendu. Si la PS4 ou la
Xbox One trône déjà dans le salon, <a href='http://www.begeek.fr/idees-cadeaux-noel-2014-les-meilleurs-jeux-sur-xbox-et-playstation-153709'
target=_blank>l'un des meilleurs titres de l'année</a> fera forcément l'affaire.
<strong>GTA V, Far Cry 4, Destiny, FIFA 2015</strong>: voici une liste non-exhaustive des meilleurs jeux sortis en
2014. Veillez tout de même à ne pas racheter un titre en double...</p><p>
Votre ami est plus audiophile que gamer? Dans ce cas, optez pour une petite <strong>enceinte nomade
Bluetooth</strong>, idéale pour une chambre, une salle de bains, ou pour écouter de la musique où
que vous soyez. Je vous conseille deux produits au très bon rapport qualité prix: l'enceinte
Bluetooth <a href='http://www.amazon.fr/Philips-BT2500B-00-Enceinte-Bluetooth/dp/B00IMAJ2X6' taregt=_blank>
Philips BT2500</a> et la
<a href='http://www.amazon.fr/JBL-Clip-Noir-rechargeable-mousqueton/dp/B00MA4PNEW/ref=sr_1_1?ie=UTF8&qid=1417821103&sr=8-1&keywords=jbl+clip'
target=_blank>JBL Clip</a>.</p>
<h2>Entre 50 et 100 euros: objets connectés et accessoires pour smartphones</h2>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/fitbit_flex.jpg'><p>
Pour un budget avoisinant les 100 euros, je vous propose ici deux objets très différents. Le premier
s'adresse davantage aux sportifs. Le bracelet
<a href='http://www.amazon.fr/Fitbit-Flex-Bracelet-%C3%A9lectronique/dp/B00GSXIAKU' taregt=_blank>
FitBit Flex</a> est <strong>l'un des tous meilleurs objets connectés</strong>.
Il permet de mesurer les efforts physiques, mais également d'analyser le sommeil. Ses points forts?
Un design vraiment élégant et des applications iPhone et Android au top. Le premier objet connecté
idéal, pour tous ceux qui seraient tentés par les wearables.</p><p>
Pour un peu moins de 100 euros, vous pouvez également offrir un <a href='http://www.amazon.fr/olloclip-Objectif-lentille-aluminium-antireflet/dp/B00GE4CLT4/ref=sr_1_2?ie=UTF8&qid=1417821728&sr=8-2&keywords=olloclip'
 target=_blank>objectif photo Olloclip pour smartphone</a>.
Comme son nom l'indique, cet accessoire se clipse sur le téléphone. Il permet de
prendre des photos originales, soit à l'aide du fish-eye, soit à l'aide des objectifs macro et
grand-angle. Il existe des versions pour les iPhone 6, 5S et 4S, et les Samsung S5 et S4.</p>
<h2>Plus de 100 euros: casques Hi-Fi</h2>
<img src='https://s3-us-west-2.amazonaws.com/bbrassart/beats.jpg'>
<p>Vous disposez d'un budget de plus de 100 euros? Vous n'aurez que l'embarras du choix...
Vous recherchez <strong>un cadeau exceptionnel?</strong> Pourquoi ne pas regarder du coté des
casques audio hi-fi? Ils figurent, à n'en pas douter, sur la liste des produits stars de ce Noël 2014.</p>
<p>Votre enfant ne jure que par les casques <a href='http://fr.beatsbydre.com/' target=_blank>Beats by Dre</a>
 et vous tanne pour en avoir un à Noël? Tout est normal. Ces casques, au design léché,
 se vendent comme des petits pains. On pourrait tergiverser pendant des heures sur le
 mauvais rendu sonore des Beats. Le fait est que les jeunes portent ces casques <strong>pour la marque</strong>,
 et non pour le son qu'ils produisent.</p>
<p>Si le cadeau s'adresse plus à un audiophile qu'à un ado, je ne pourrais que vous recommander
chaudement ces 3 casques hi-fi: le <a href='http://eu.akg.com/akg-product-detail_eu/k-701.html' target=_blank>AKG K701</a>
pour son confort, le <a href='http://fr-fr.sennheiser.com/casque-audiophile-hifi-hd-598' target=_blank>Sennheiser HD 598</a>
pour son rapport qualité prix, et le <a href='http://www.parrot.com/fr/produits/zik2/' target=_blank>Parrot Zik 2.0</a>
pour ses contrôles tactiles innovants.</p>
<h2>Le bon cadeau de Noël à bas prix</h2>
<p>Comme nous le venons de le voir, les bons produits high-tech ne valent pas forcément très chers.
Gardez toujours un œil sur les promotions et les offres de remboursement. Vous serez surpris de
voir que <strong>certains prix fondent comme neige au soleil</strong>.</p>
<p>J'ai oublié votre produit high-tech préféré? N'hésitez pas à <strong>laisser un commentaire</strong>
pour compléter la liste. Qui sait, peut-être que vos parents sont eux-aussi en train de lire cet
article...</p>
",
date: DateTime.new(2014, 12, 5),
author: "Baptiste Brassart",
author_logo: "https://s3-us-west-2.amazonaws.com/bbrassart/bbrassart_avatar.jpg",
tags: ["noel", "cadeaux", "geek", "fêtes"]
)


Year.destroy_all
first = Year.create(title: 2015)

first.experiences.create(
starting_date: DateTime.new(2015, 8, 1),
ending_date: DateTime.new(2015, 12, 1),
title: "Teaching assistant",
tags: ["code", "javascript", "ruby on rails", "html", "css"],
company_name: "IronHack",
location: "Barcelona",
description: "After graduating from IronHack, I'm now working as a teaching
  assistant for the current web development bootcamp in Barcelona.
  - Supporting the students with their learning activities, making sure all of them
  understand the most important concepts of programming.<br>
  - Help organizing classes and workshops, working closely with the teachers and
  public speakers.",
company_logo: "https://fdemadrid.files.wordpress.com/2013/10/ironhack_logonegro.png"
)

first.experiences.create(
  starting_date: DateTime.new(2015, 6, 1),
  ending_date: DateTime.new(2015, 8, 1),
  tags: ["code", "javascript", "ruby on rails", "html", "css"],
  title: "Student",
  company_name: "IronHack",
  location: "Barcelona",
  description: "<p>- Intensive programming courses for developers.
  - Work with different technologies including Ruby on Rails, Javascript, HTML5, CSS3, Git
  - Focusing on clean code principles, design patterns and test driven development.
  - Using agile development which teaches us the best way to build and deliver things done
  in an easy and agile way, from testing to deployment.</p>",
  company_logo: "https://fdemadrid.files.wordpress.com/2013/10/ironhack_logonegro.png"
)

second = Year.create(title: 2014)
second.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
third = Year.create(title: 2013)
third.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
fourth = Year.create(title: 2012)
fourth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
fifth = Year.create(title: 2011)
fifth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)

sixth = Year.create(title: 2010)
sixth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)

sixth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)


puts "DB filled"
