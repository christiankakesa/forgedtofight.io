# frozen_string_literal: true

[
  {
    name: 'Arcee',
    description: 'She may be slight of frame, but she\'s stout on loyalty and devotion to protecting her fellow Autobots and their human allies...',
    icon_link: 'icon-arcee.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 546, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1557, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 173, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Barricade',
    description: 'This Decepticons puts his own spin on good cop, bad cop...',
    icon_link: 'icon-barricade.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 552, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 176, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bludgeon',
    description: 'A master of the Cybertronian martial art Metallikato...',
    icon_link: 'icon-bludgeon.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bonecrusher',
    description: 'A noted speed skater and general purveyor of hate, Bonecrusher oozes with disdain for everything and everyone, including himself...',
    icon_link: 'icon-bonecrusher.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: 92, stars_2: 115, stars_3: nil, stars_4: nil },
    health: { stars_1: 354, stars_2: 460, stars_3: nil, stars_4: nil },
    attack: { stars_1: 34, stars_2: 41, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bumblebee',
    description: 'Long known as Optimus Prime\'s faithful scout...',
    icon_link: 'icon-bumblebee.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 538, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Drift',
    description: 'Though some may question Drift\'s loyalty to the Autobots, there\'s no denying his dedication to his "sensei" Optimus Prime...',
    icon_link: 'icon-drift.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Grimlock',
    description: 'Widely regarded as one of the most skilled military tacticians, perhaps with an ego the size of Cybertron, Grimlock is the self-proclaimed "King" of the Dinobots.',
    icon_link: 'icon-grimlock.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 441, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 2204, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 162, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 0, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Grindor',
    description: 'Although he\'s a brawling, close-combat specialist, Grindor lets his missiles do the talking in his helicopter alt mode...',
    icon_link: 'icon-grindor.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 530, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 171, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Hot Rod',
    description: 'Long undercover on Earth with his brother in arms, Bumblebee, Hot Rod is a powerful and agile warrior with a unique Time Bubble Cannon that definitely packs a punch....',
    icon_link: 'icon-hot_rod.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Ironhide',
    description: 'He may not like Earth rodents leaking lubricant on him, but he does have a fondness for blasters, more blasters, and heavy weaponry...',
    icon_link: 'icon-ironhide.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 96, stars_2: 557, stars_3: nil, stars_4: nil },
    health: { stars_1: 368, stars_2: 1837, stars_3: nil, stars_4: nil },
    attack: { stars_1: 33, stars_2: 147, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Megatron',
    description: 'All Hail Megatron! That pretty much sums up the Decepticon leader\'s ambition, and his minions\'fear-induced feelings...',
    icon_link: 'icon-megatron.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 513, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1924, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 146, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 35, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Mirage',
    description: 'Now you see him, now you don\'t. Mirage is one high-class Autobot with some slick espionage skills...',
    icon_link: 'icon-mirage.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 535, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1592, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 141, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Mixmaster',
    description: 'Aptly named for both his cement mixer alt form and his advanced skills in concocting chemical weapons for the Decepticons, Mixmaster has been linked to being a part of the mighty Devastator...',
    icon_link: 'icon-mixmaster.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 522, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1837, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 117, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Motormaster',
    description: 'The self-proclaimed "True King of the Road" and leader of the Stunticons is huge, savage, and merciless...',
    icon_link: 'icon-motormaster.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: 91, stars_2: 532, stars_3: nil, stars_4: nil },
    health: { stars_1: 392, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: 38, stars_2: 171, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Optiminus Prime',
    description: 'From his humble beginnings as Orion Pax to his indusputable role as the greatest Autobot leader ever, Optimus Prime is the embodiment of heroic valor and rightousness...',
    icon_link: 'icon-optimus_prime.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 97, stars_2: 537, stars_3: nil, stars_4: nil },
    health: { stars_1: 389, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: 36, stars_2: 150, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Optiminus Prime MV1',
    description: 'He is the Cybertronian definition of altuism, sacrifice and leadership...',
    icon_link: 'icon-optimus_prime_mv1.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 540, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 171, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Prowl',
    description: 'He may look like your friendly neighborhood cop on patrol, but check under the hood and he’s 100% military-trained police on a mission to serve and protect...',
    icon_link: 'icon-prowl.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Rachet',
    description: 'The Autobots veteran Chief Medical Officer has patched up his fair share of Bots over the years...',
    icon_link: 'icon-rachet.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 551, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1592, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 137, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Rhinox',
    description: 'Hard-nosed and big brained, Rhinox is a Bot with a resounding passion for life...',
    icon_link: 'icon-rhinox.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Maximals').first.id,
    power_index: { stars_1: 93, stars_2: 549, stars_3: nil, stars_4: nil },
    health: { stars_1: 347, stars_2: 1732, stars_3: nil, stars_4: nil },
    attack: { stars_1: 30, stars_2: 135, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Shockwave',
    description: 'Truly one of the most feared and powerful of all Decepticons, Shockwave\'s existence is driven solely by one thing: logic...',
    icon_link: 'icon-shockwave.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 460, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1767, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 129, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 0, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Sideswipe',
    description: 'Forged with the spark of a fighter and a cerebral circuits of a jock, Sideswipe is always down for a fight...',
    icon_link: 'icon-sideswipe.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 98, stars_2: 568, stars_3: nil, stars_4: nil },
    health: { stars_1: 301, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: 39, stars_2: 176, stars_3: nil, stars_4: nil },
    forge: { stars_1: 0, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Soundwave',
    description: 'Who is superior? Soundwave and his trusty minions Laserbeak and Ravage, that\'s who!...',
    icon_link: 'icon-soundwave.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Starscream',
    description: 'Starscream is the treacherous Decepticon Air Commander and the deadliest of the Seekers...',
    icon_link: 'icon-starscream.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Ultra Magnus',
    description: 'Galvatron\'s avowed enemy, Ultra Magnus epitomizes what it means to be a loyal soldier...',
    icon_link: 'icon-ultra_magnus.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 442, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 0, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Waspinator',
    description: 'Despite his loyalty to the Predacon cause, the stalwart Waspinator never gets the respect he deserves from both his team mates or the universe...',
    icon_link: 'icon-waspinator.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Predacons').first.id,
    power_index: { stars_1: nil, stars_2: 540, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1662, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 144, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 50, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Winblade',
    description: 'Hailing from the planet Caminus, this agile Scout is as adept with her swords as she is at "Cityspeaking" with gigantic Titans...',
    icon_link: 'icon-winblade.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 556, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 169, stars_3: nil, stars_4: nil },
    forge: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  }
].each do |bot|
  Bot.upsert! bot
end
