//
//  GolfCourseListViewModel.swift
//  GolfCourseApp
//
//  Created by Bibek Lama on 8/6/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import Foundation
import UIKit

class GolfCourseListViewModel{
    var golfCourses: [GolfCourse]
    
    init() {
        
        let golf1 = GolfCourse(image: "image", name: "Le Golf National", address: "2 Avenue du Golf, 78280 Guyancourt", tel: "05 56 00 72 63", email: "contact@exclusivegolf-toulouse-seilh.fr", desc: "The Albatros course at Le Golf National is an 18-hole golf course in France, near Paris. Designed by architects Hubert Chesneau and Robert Von Hagge, in collaboration with Pierre Thevenin, it is located in Guyancourt, southwest of central Paris.", rating: 4.5,  open: "9:00 AM", link: "https://www.golf-national.com")
        
        
        
        let golf2 = GolfCourse(image: "image2", name: "Garden Golf - Saint-Germain-lès-Corbeil",address: "6 Avenue du Golf, 91250 Saint-Germain-lès-Corbeil", tel: "01 60 75 81 54", email: "contact@exclusivegolf-toulouse-seilh.fr", desc: "The Albatros course at Le Golf National is an 18-hole golf course in France, near Paris. Designed by architects Hubert Chesneau and Robert Von Hagge, in collaboration with Pierre Thevenin, it is located in Guyancourt, southwest of central Paris.", rating: 4.5, open: "8:00 AM", link: "https://www.golf-national.com")
        
        let golf3 = GolfCourse(image: "image3", name: "Golf de Saint-Nom-la-Bretèche", address: "Rue Henri Frayssineau, 78860 Saint-Nom-la-Bretèche", tel: "+33130800440",  email: "direction@golfsaintnom.com", desc: "Inauguré en 1959, le Golf de Saint-Nom-la-Bretèche est un golf privé comportant deux parcours de 18 trous, le club house a été aménagé dans une magnifique ferme XVIIIème, dépendance royale du Château de Versailles. Le Golf de Saint-Nom-la-Bretèche est réservé à ses membres, leurs familles et leurs invités. Au tout début de son existence, il accueillait déjà le Championnat du Monde en 1963, puis, pendant 34 ans, le Trophée Lancôme, épreuve majeure du circuit Européen à laquelle participaient les meilleurs joueurs du monde. Ce qui a largement contribué à sa notoriété et à la qualité de ses parcours. Nous nous félicitons de recevoir, une fois encore, les Championnats du Monde en 2022 en association avec le Golf National." , rating: 5.0, open: "8:00 AM", link: "http://www.golfdesaintnomlabreteche.com/")

        let golf4 = GolfCourse(image: "image4", name: "Golf Blue Green Rueil Malmaison", address: "25 Boulevard Marcel Pourtout, 92500 Rueil-Malmaison", tel: "+33147496467",  email: "info@enphasegolf.com", desc: "Bienvenue sur la nouvelle plate-forme de réservation en ligne du Golf de Marivaux, ce système vous permet de :  Visualiser le planning, Réserver vos départs en ligne, et de faire bien d'autres choses encore, Pour s'inscrire, il vous suffit de récupérer les identifiants de connexion soit sur le mail qui vous a été envoyé si nous étions en possession de votre mail soit en nous contactant par téléphone à l'accueil du golf au 01 64 90 85 85 ou en utilisant la fonction sur la gauche de l'écran Message pour le club en indiquant correctement votre NOM, Prénom et adresse mail." , rating: 3.9, open: "8:30 AM", link: "https://www.golfmarivaux.com/")

        let golf5 = GolfCourse(image: "image5", name: "Garden Golf Senart", address: "Route de Villepecle, 91280 Saint-Pierre-du-Perray", tel: "+33160754060",  email: "contact@ugolf.eu", desc: "Situé à la limite de 77 & du 91, le golf de Sénart déroule ses 18 trous en faisant serpenter ses fairways entre pièces d’eau et parcelles forestières sans jamais croiser le trou précédent. On y passe toujours un moment d’évasion, qui plaira les joueurs débutants comme les plus éclairés ." , rating: 4.1, open: "8:00 AM", link: "https://jouer.golf/senart/")

        let golf6 = GolfCourse(image: "image6", name: "Golf Saint Marc", address: "Chemin du Petit Viltain À Villeras, 78350 Jouy-en-Josas", tel: "+33130972525",  email: "commercial@golfsaintmarc.com", desc: "12 Km From The Pont De Sèvres, The Saint Marc Golf Course Is Set In The Magnificent Domain Of The Château Des Côtes. On 52 Hectares, The Place Is Wooded With Rare And Hundred-Year-Old Species. Slightly Hilly, It Is Embellished With 4 Hectares Of Natural Bodies Of Water, Fed By A Spring Springing From A Cave.Thus, In A Natural And Unspoiled Setting, The Saint-Marc Golf Course Is A True Haven Of Peace Where Any Player, Both Beginner And Experienced, Will Find An Interest In The Game." , rating: 5.0, open: "8:00 AM", link: "http://golfsaintmarc.com/")
        
        let golf7 = GolfCourse(image: "image7", name: "Golf de Saint-Nom-la-Bretèche", address: "Rue de Paris, D31, 91070 Bondoufle", tel: "+33160864171",  email: "direction@golfsaintnom.com", desc: " Le Golf : Un parcours de 18 trous qui s'étend sur 60 hectares avec des links à l'écossaise aux bunkers florissants. Le Restaurant: Dans un espace dominant le parcours, notre restaurant vous propose des mets raffinés préparés dans le respect de la cuisine française traditionnelle. Aménagement de la zone practice: Un projet qui verra le jour dans quelques mois. Ce nouvel espace permettra aux joueurs d'avoir tout sur place pour se préparer, s'échauffer, se détendre, se désaltérer, partir jouer et se reposer.", rating: 4.1, open: "8:00 AM", link: "http://www.golf-de-val-grand.com/")

        let golf8 = GolfCourse(image: "image8", name: "Golf De Paris", address: "1 Rue du Camp Canadien, 92210 Saint-Cloud", tel: "+33147713922",  email: "info@enphasegolf.com", desc: "Situé au cœur de l’hippodrome de Saint-Cloud, le Golf de Paris est une référence parmi les parcours français. Ludique, technique et séduisant, le parcours de 9 trous accueille des débutants comme des experts, qui ont tout loisir de s’améliorer sur ce parcours homologué FFG. Pour vous entraîner, vous disposez d’un des plus grands practices d’Europe : 200 postes dont 24 couverts. Pour vous initier ou vous perfectionner, une équipe de 25 enseignants, tous diplômés d’état, est à votre disposition tous les jours pour des cours individuels, collectifs et en parcours accompagné.", rating: 4.2, open: "8:30 AM", link: "https://www.pariscountryclub.com/sports-et-loisirs/golf/")

        let golf9 = GolfCourse(image: "image9", name: "Golf D'ormesson", address: "1 Chemin du Belvédère, 94490 Ormesson-sur-Marne", tel: "+33145762071",  email: "accueil@golformesson.fr", desc: "Situé à 15 Km de la Porte de Bercy, le golf d’Ormesson est une Association Sportive dont l’activité principale est dédiée à la pratique et à la découverte du golf. Le golf d’Ormesson est l’un des tous premiers parcours construits en France par le Comte Wladimir d’Ormesson dès 1925. Il est détruit pendant la deuxième guerre mondiale et mes grands-parents, André et Antonella d'Ormesson ont fait alors appel à l’architecte anglais C.K Cotton en 1965 pour donner une seconde vie à ce lieu.", rating: 4.3, open: "8:00 AM", link: "https://www.golformesson.fr/")

        let golf10 = GolfCourse(image: "image10", name: "Golf Saint Marc", address: "25 Boulevard Marcel Pourtout, 92500 Rueil-Malmaison", tel: "+33147496467",  email: "rueil@bluegreen.fr", desc: "Créé par l’architecte Robert Berthet en 1990 Le golf Bluegreen Rueil-Malmaison est situé à 10 minutes de la Défense et à deux pas du Château de la Malmaison. Venez découvrir ou redécouvrir ce parcours de golf d’Ile-de-France. Les abonnés apprécient l’ambiance familiale du golf Bluegreen Rueil-Malmaison, les nombreuses compétitions avec de belles dotations, le parcours, le practice connecté, idéal pour les afterworks ( de retour en mars). Envie de tester le golf d’une manière différente ? Venez jouer au golf sur un parcours technique et profitez de nos dernières innovations", rating: 3.9, open: "8:00 AM", link: "https://bluegreen.fr/rueil/")

        let golf11 = GolfCourse(image: "image11", name: "Fontainebleau Golf Club", address: " Route d'Orléans - 77300 Fontainebleau", tel: "+33164222295",  email: "no@example.com", desc: "Inauguré en 1909, le Golf de Fontainebleau est l’un des plus anciens golfs de France. Tracé par le français Julien CHANTEPIE, redessiné en 1920 par Tom SIMPSON, allongé et modifié en 1963 par Fred HAWTREE, il est implanté en pleine forêt de Fontainebleau, à 800 mètres de la ville, sur l’ancien parquet des chasses impériales. Ses fairways, relativement étroits, sont bordés d’arbres d’essences variées, de pins, mais aussi de bouleaux, de merisiers, de hêtres et de chênes centenaires. Ils sont très défendus par 103 bunkers de sable fin, mais aussi par des taillis épais de bruyères, lilas, fougères et genêts, qui en font le charme et la difficulté et composent, en fonction des saisons, une symphonie de couleurs et d’odeurs.", rating: 4.6, open: "9:00 AM", link: "https://www.golfdefontainebleau.org/")

        let golf12 = GolfCourse(image: "image12", name: "Golf De La Poudrerie", address: "Allée Paul Vieille, 93190 Livry-Gargan", tel: "+33141521930", email: "info@enphasegolf.com", desc: "Deuxième golf de Seine-Saint-Denis, le centre départemental d'initiation au golf de la Poudrerie est situé sur les communes de Sevran et de Livry-Gargan, à 10 km au nord-est de Paris. Compact et vallonné, il offre le calme du canal de l'Ourcq et du parc forestier national de la Poudrerie pour une pratique entre eaux et forêt. Lieu de détente et de convivialité, il est accessible à tous les niveaux, dès l’âge de 3 ans, pour découvrir l’activité ou s’entraîner. Inauguré en 2004, le centre départemental d'initiation au golf de la Poudrerie a été conçu par le Conseil Général de Seine-Saint-Denis qui en a confié l’animation et la gestion à l’UCPA (Union nationale des Centres sportifs de Plein Air). Il a pour vocation de rendre accessible le golf à tous les âges, tous les niveaux et tous les budgets.", rating: 4.5, open: "10:00 AM", link: "http://poudrerie.ucpa.com/")

        let golf13 = GolfCourse(image: "image13", name: "Golf Nîmes Campagne", address: "1360 Chemin du Mas de Campagne, 30900 Nîmes", tel: "+33466701737", email: "test@example.com", desc: "Sur le plateau de Garons, au sud de Nîmes et aux portes de la Camargue, le Golf de Campagne est remarquablement situé entre Nîmes, Avignon, Arles et Montpellier, proche des autoroutes A9 et A54, de la Gare TGV Pont du Gard et de l’aéroport de Nîmes-Garons. Ce golf, assis sur un vaste domaine boisé et vallonné, est un des plus anciens golfs associatifs privés et reconnus du sud de la France, construit sur un site chargé d’histoire. Ayant appartenu jadis aux Templiers, c’est à la fin du 19ièmesiècle, à la suite d’un incendie, que Monsieur Georges Arnaud, banquier issu d’une grande famille Nîmoise acheta les terres pour en faire un domaine dédié à la chasse. Il adorait les Etats Unis et lors d’un retour de voyage, voulu construire la réplique en miniature de la Maison Blanche de Washington qu’il baptisa « White Home » en 1902, actuellement le club house de Campagne.", rating: 4.3, open: "8:00 AM", link: "http://www.golfnimescampagne.com/")

        let golf14 = GolfCourse(image: "image14", name: "Monte-Carlo Golf Club", address: "Route du Mont-Agel, 06320 La Turbie", tel: "+33561734548", email: "test@gmail.com", desc: "Le Golf a été créé en 1911 et remodelé par le comité en 1983. Surplombant la principauté de Monaco, à une altitude de 900 mètres, le parcours offrira aux joueurs des difficultés techniques et variées. Qui vous accueillera dans une ambiance chaleureuse et conviviale. Le club house est réservé aux membres, et aux membres à la journée.", rating: 4.6, open: "8:00 AM", link: "https://golfdemontecarlo.com/")

        let golf15 = GolfCourse(image: "image15", name: "Golf Club de Toulouse", address: "2 Chemin de la Planho, 31320 Vieille-Toulouse", tel: "+33160864171", email: "direction@golfsaintnom.com", desc: "A leurs côtés, nous trouvons Jean DUNGLAS (Médecin), Jacques DEVEAUD (Inspecteur Général de l'Economie, fonction liée à la situation d'après-guerre), Robert MESURET (Conservateur de Musées) et Alfred de MONTIGNY.Le premier objectif de ce nouveau Club de Golf est de disposer d'un terrain et c'est Jules DELFOUR, un des membres les plus actifs mais également propriétaire d'un important domaine agricole sur la commune de Vieille-Toulouse, qui va négocier avec son fermier (GUISEPPIN), la reprise des terrains nécessaires qu'il met immédiatement à la disposition du Club.François de BAGNEUX, à l'époque Directeur du Golf de la Nivelle, et Raymond GARAÏALDE, Professeur de Golf à Chantaco (mais aussi père de Jean, qui allait devenir l'un des plus grands champions du golf français), sont désignés pour la conception et la réalisation des travaux.Les travaux se terminent au printemps 1952 et le parcours est inauguré comme il se doit. C'est alors un parcours de 9 trous qui permet avec des départs différenciés de jouer un 18 trous en par 70.Pour compléter cette histoire (un grand merci à Pierre Tremoulet qui a retrouvé la revue), nous vous invitons à lire cet article paru pour l'hiver 1953-1954", rating: 4.4, open: "7 :30 AM", link: "http://www.golfclubdetoulouse.fr/")

        let golf16 = GolfCourse(image: "image16", name: "Golf du Médoc", address: "Allée du Golf, 33320 Le Taillan-Médoc", tel: "+33556701190", email: "golf@golfdumedocresort.com", desc: "Entrez dans un lieu d’exception aux plus beaux horizons. Une destination incontournable alliant golf, gastronomie, dégustation et détente entre l’estuaire et l’océan pour le plus agréable des séjours. Niché au cœur de 200 hectares de nature, le Golf du Médoc Resort propose deux parcours de golf reconnus parmi les plus beaux golfs d’Europe et un Training Center unique en France. Ressourcez-vous dans l’une des 79 chambres et suites que propose notre MGallery Hotel Collection. Un réel petit coin de paradis pour les golfeurs, en quête de quiétude et de discrétion. Envie d’une pause gourmande pour goûter le meilleur de la gastronomie du Sud-Ouest ? Prenez place au sein de notre restaurant niché en plein cœur de la nature. Les beaux jours, profitez d’une terrasse d’exception, offrant l’un des plus beaux panoramas sur le Golf du Médoc Resort. Dans un cadre raffiné et contemporain, profitez de votre séjour pour vivre un moment inoubliable dans notre Spa by Cinq Mondes. Un voyage sensoriel garanti par des soins adaptés à vos désirs et des bienfaits uniques.", rating: 5.0, open: "8:30 AM", link: "https://golfdumedocresort.com/")

        let golf17 = GolfCourse(image: "image17", name: "Golf Club de Lyon", address: "Rue des Acacias, 38280 Villette-d'Anthon", tel: "+33145762071", email: "info@golfclubdelyon.com", desc: "Facile d'accès par les autoroutes A42 ou A432, les deux parcours du Golf Club de Lyon sont toutefois à l'abri de toute nuisance immobilière ou routière. Intégrés dans une réserve naturelle, ces parcours sont très différents l'un de l'autre. À vous de les découvrir et de partager une ambiance sportive marquée par différents titres : Champion de France Interclubs seniors 1ère division en 2006, Vainqueur de la Coupe de France Jean Lignel en 2011, Champion d’Europe des clubs la même année, Vainqueur de la GOUNOUILHOU (championnat de France Interclubs 1ère série) en 2016. Sans oublier que le Golf Club de Lyon est le golf d’attache de Gary STAL. Si le haut niveau est bien inscrit dans l’ADN de ce club, une vraie liberté de jeu vous est néanmoins proposée : liberté de choix du parcours, liberté de choix d'horaire et liberté de manière de jouer : entre amis, en famille, pour le sport ou le loisir... Quelque soit votre motivation de golfeur, elle sera respectée pour autant que le jeu soit respecté par tous", rating: 4.6, open: "8:00 AM", link: "http://www.golfclubdelyon.com/")

        let golf18 = GolfCourse(image: "image18", name: "Golf Club de Chamonix", address: "35 Route du Golf, 74400 Chamonix-Mont-Blanc", tel: "+33450530628", email: "info@golfdechamonix.com", desc: "C’est au beau milieu de la capitale mondiale de l’alpinisme que se niche cette perle rare qu’est le Golf Club de Chamonix. Imaginez-vous foulant le fairway du trou N°17; en point de mire, pour mettre votre balle en jeu, la face nord du Mont-Blanc et cette cascade de séracs formée par le glacier des Bossons. Vous êtes au pied des Drus -3754 m- et de l’Aiguille Verte -4122 m-, de l’Aiguille du Midi -3842 m- et du Mont-Blanc -4810 m-. Situé à 1000 mètres d’altitude, ce parcours n’a nul besoin d’imiter les pentes vertigineuses qui l’environnent pour défier les golfeurs émérites que nous sommes. Le célèbre architecte Robert Trent Jones Sr. a su jouer intelligemment avec les profils du terrain. Les déclivités minimes et les modelages aux pentes adoucies ne vous engageront pas dans un défi physique redoutable. Car, au quotidien, le Golf de Chamonix swingue entre sa réputation de parcours bercé de magie et les coups d’œil offerts sur la verticalité impressionnante de ses sommets. Classé par les guides spécialisés comme l’un des plus beaux parcours de montagne, il a la particularité d'être totalement plat. Vous y découvrirez l’excellence en vert, blanc, bleu.", rating: 4.5, open: "10:00 AM", link: "http://www.golfdechamonix.com/")

        let golf19 = GolfCourse(image: "image19", name: " Golf Old Course Cannes Mandelieu", address: " 265 Route du Golf, 06210 Mandelieu-la-Napoule", tel: "+33492973200 ", email: "contact@golfoldcourse.fr", desc: "Bienvenue au Old Course Cannes Golf Links, un site magique niché dans un décor enchanteur à deux pas de la Croisette. Ouvert tous les jours de l’année, le Old Course est une véritable expérience hors du temps où l’art de vivre rime avec passion, authenticité et excellence. Laissez-vous séduire par l’énergie du Old Course et vivez les émotions intenses de nos prestigieux événements et soirées qui font la joie de tous. Le Old Course, c’est aussi le théâtre de tous vos rêves avec des espaces façonnés sur-mesure pour des événements privés conjugués au plus-que-parfait. Sur la Côte d’Azur, un lieu unique pour toutes vos émotions. Dans une ambiance familiale et professionnelle, nos pros diplômés d’Etat vous accueillent tous les jours au sein des installations de l’Academy Old Course. Que vous soyez débutants ou joueurs confirmés, jeunes ou adultes, les pros de l’Academy seront les alliés incontournables de votre progression. ", rating: 4.2, open: "8:00 AM", link: " http://www.golfoldcourse.com/ ")

        let golf20 = GolfCourse(image: "image20", name: " Golf de Valgarde", address: "Chemin de Rabasson, 83130 La Garde", tel: "+33494140105", email: "info@golfdevalgarde.com", desc:"Outre un parcours de 18 trous long de 5480 mètres, on trouve un practice de 55 postes (dont 20 couverts et 8 éclairés), un putting de 1000m², une zone de Driving sur herbe, un Pitch & Putt, une zone de chipping, deux greens d’entrainements, un restaurant et un club house. Le tout permet aux joueurs amateurs comme aux confirmés, d’améliorer leurs performances et de se perfectionner. Ainsi, le Golf de Valgarde dispose d’un practice de 55 postes, dont 20 couverts et 8 éclairés, et une zone de driving sur herbe, ouverts aussi bien aux joueurs débutants qu’aux confirmés. Les passionnés pourront profiter des infrastructures d’entraînement par tous les temps et à n’importe quelle heure de la journée. Pour parfaire son jeu, le Pitch & Putt dispose de 4 trous compacts de 50 à 80 mètres ainsi qu’une zone de chipping de 200 m2. Les joueurs confirmés pourront ainsi perfectionner leur technique tandis que les golfeurs amateurs apprécieront de tester ce parcours réduit pour s’entraîner. Également, deux greens d’entraînements de 1000 m2 environ ont été aménagés pour offrir une expérience unique autour de l’esprit du golf et des conditions optimales pour améliorer ses gestes techniques.", rating: 3.8, open: "7 :30 AM", link: "http://www.golf-valgarde.com/")





        
        self.golfCourses = [golf1, golf2, golf3, golf4, golf5, golf6, golf7, golf8, golf9, golf10, golf11, golf12, golf13, golf14, golf15, golf16, golf17, golf18, golf19, golf20]
    }
    
    func getNumberOfRows() -> Int {
        return golfCourses.count
    }
    
    func nameAt(_ index: Int) -> String{
        return golfCourses[index].name
    }
    
    func addressAt(_ index: Int) -> String{
        return golfCourses[index].address
    }
    
    func imageAt(_ index: Int) -> UIImage?{
        return UIImage.init(named: golfCourses[index].image) ?? nil
    }
    
    func ratingAt(_ index: Int) -> String{
        return "\(golfCourses[index].rating)"
    }
    
}