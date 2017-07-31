# frozen_string_literal: true

[
  {
    name: 'Arcee',
    description: 'She may be slight of frame, but she\'s stout on loyalty and devotion to protecting her fellow Autobots and their human allies...',
    icon_link: 'icon-arcee.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Barricade',
    description: 'This Decepticons puts his own spin on good cop, bad cop...',
    icon_link: 'icon-barricade.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Bludgeon',
    description: 'A master of the Cybertronian martial art Metallikato...',
    icon_link: 'icon-bludgeon.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Bonecrusher',
    description: 'A noted speed skater and general purveyor of hate, Bonecrusher oozes with disdain for everything and everyone, including himself...',
    icon_link: 'icon-bonecrusher.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Bumblebee',
    description: 'Long known as Optimus Prime\'s faithful scout...',
    icon_link: 'icon-bumblebee.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Drift',
    description: 'Though some may question Drift\'s loyalty to the Autobots, there\'s no denying his dedication to his "sensei" Optimus Prime...',
    icon_link: 'icon-drift.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Grimlock',
    description: 'Widely regarded as one of the most skilled military tacticians, perhaps with an ego the size of Cybertron, Grimlock is the self-proclaimed "King" of the Dinobots.',
    icon_link: 'icon-grimlock.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Grindor',
    description: 'Although he\'s a brawling, close-combat specialist, Grindor lets his missiles do the talking in his helicopter alt mode...',
    icon_link: 'icon-grindor.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Hot Rod',
    description: 'Long undercover on Earth with his brother in arms, Bumblebee, Hot Rod is a powerful and agile warrior with a unique Time Bubble Cannon that definitely packs a punch....',
    icon_link: 'icon-hot_rod.jpg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Ironhide',
    description: 'He may not like Earth rodents leaking lubricant on him, but he does have a fondness for blasters, more blasters, and heavy weaponry...',
    icon_link: 'icon-ironhide.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Megatron',
    description: 'All Hail Megatron! That pretty much sums up the Decepticon leader\'s ambition, and his minions\'fear-induced feelings...',
    icon_link: 'icon-megatron.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Mirage',
    description: 'Now you see him, now you don\'t. Mirage is one high-class Autobot with some slick espionage skills...',
    icon_link: 'icon-mirage.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Mixmaster',
    description: 'Aptly named for both his cement mixer alt form and his advanced skills in concocting chemical weapons for the Decepticons, Mixmaster has been linked to being a part of the mighty Devastator...',
    icon_link: 'icon-mixmaster.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Motormaster',
    description: 'The self-proclaimed "True King of the Road" and leader of the Stunticons is huge, savage, and merciless...',
    icon_link: 'icon-motormaster.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Optiminus Prime',
    description: 'From his humble beginnings as Orion Pax to his indusputable role as the greatest Autobot leader ever, Optimus Prime is the embodiment of heroic valor and rightousness...',
    icon_link: 'icon-optimus_prime.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Optiminus Prime MV1',
    description: 'He is the Cybertronian definition of altuism, sacrifice and leadership...',
    icon_link: 'icon-optimus_prime_mv1.jpg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Prowl',
    description: 'He may look like your friendly neighborhood cop on patrol, but check under the hood and he’s 100% military-trained police on a mission to serve and protect...',
    icon_link: 'icon-prowl.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Rachet',
    description: 'The Autobots veteran Chief Medical Officer has patched up his fair share of Bots over the years...',
    icon_link: 'icon-rachet.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Rhinox',
    description: 'Hard-nosed and big brained, Rhinox is a Bot with a resounding passion for life...',
    icon_link: 'icon-rhinox.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Maximals').first.id
  },
  {
    name: 'Shockwave',
    description: 'Truly one of the most feared and powerful of all Decepticons, Shockwave\'s existence is driven solely by one thing: logic...',
    icon_link: 'icon-shockwave.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Sideswipe',
    description: 'Forged with the spark of a fighter and a cerebral circuits of a jock, Sideswipe is always down for a fight...',
    icon_link: 'icon-sideswipe.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Soundwave',
    description: 'Who is superior? Soundwave and his trusty minions Laserbeak and Ravage, that\'s who!...',
    icon_link: 'icon-soundwave.jpg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Starscream',
    description: 'Starscream is the treacherous Decepticon Air Commander and the deadliest of the Seekers...',
    icon_link: 'icon-starscream.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id
  },
  {
    name: 'Ultra Magnus',
    description: 'Galvatron\'s avowed enemy, Ultra Magnus epitomizes what it means to be a loyal soldier...',
    icon_link: 'icon-ultra_magnus.jpg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  },
  {
    name: 'Waspinator',
    description: 'Despite his loyalty to the Predacon cause, the stalwart Waspinator never gets the respect he deserves from both his team mates or the universe...',
    icon_link: 'icon-waspinator.jpg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Predacons').first.id
  },
  {
    name: 'Winblade',
    description: 'Hailing from the planet Caminus, this agile Scout is as adept with her swords as she is at "Cityspeaking" with gigantic Titans...',
    icon_link: 'icon-winblade.jpg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id
  }
].each do |bot|
  Bot.upsert! bot
end
