# frozen_string_literal: true

[
  {
    name: 'Arcee',
    description: 'She may be slight of frame, but she\'s stout on loyalty and devotion to protecting her fellow Autobots and their human allies...',
    icon_link: 'arcee.jpeg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 546, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1557, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 173, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Barricade',
    description: 'This Decepticons puts his own spin on good cop, bad cop...',
    icon_link: 'barricade.jpeg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 552, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 176, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bludgeon',
    description: 'A master of the Cybertronian martial art Metallikato...',
    icon_link: 'bludgeon.jpeg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Bonecrusher',
    description: 'A noted speed skater and general purveyor of hate, Bonecrusher oozes with disdain for everything and everyone, including himself...',
    icon_link: 'bonecrusher.jpeg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: 247, stars_2: 441, stars_3: 1204, stars_4: nil },
    health: { stars_1: 970, stars_2: 1767, stars_3: 4496, stars_4: nil },
    attack: { stars_1: 93, stars_2: 155, stars_3: 343, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 20, stars_4: nil }
  },
  {
    name: 'Bumblebee',
    description: 'Long known as Optimus Prime\'s faithful scout...',
    icon_link: 'bumblebee.jpeg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 538, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Drift',
    description: 'Though some may question Drift\'s loyalty to the Autobots, there\'s no denying his dedication to his "sensei" Optimus Prime...',
    icon_link: 'drift.jpeg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1732, stars_3: 4253, stars_4: 11_053 },
    attack: { stars_1: nil, stars_2: 152, stars_3: 325, stars_4: 843 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Grimlock',
    description: 'Widely regarded as one of the most skilled military tacticians, perhaps with an ego the size of Cybertron, Grimlock is the self-proclaimed "King" of the Dinobots.',
    icon_link: 'grimlock.jpeg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 441, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 2204, stars_3: 5412, stars_4: 14_067 },
    attack: { stars_1: nil, stars_2: 162, stars_3: 344, stars_4: 893 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Grindor',
    description: 'Although he\'s a brawling, close-combat specialist, Grindor lets his missiles do the talking in his helicopter alt mode...',
    icon_link: 'grindor.jpeg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 530, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 171, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Hot Rod',
    description: 'Long undercover on Earth with his brother in arms, Bumblebee, Hot Rod is a powerful and agile warrior with a unique Time Bubble Cannon that definitely packs a punch....',
    icon_link: 'hot-rod.jpeg',
    bot_class_id: BotClass.where(name: 'Warrior').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1697, stars_3: 4167, stars_4: 10_829 },
    attack: { stars_1: nil, stars_2: 158, stars_3: 337, stars_4: 876 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Ironhide',
    description: 'He may not like Earth rodents leaking lubricant on him, but he does have a fondness for blasters, more blasters, and heavy weaponry...',
    icon_link: 'ironhide.jpeg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 260, stars_2: 557, stars_3: 1152, stars_4: nil },
    health: { stars_1: 1009, stars_2: 1837, stars_3: 4581, stars_4: nil },
    attack: { stars_1: 89, stars_2: 147, stars_3: 314, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: 5, stars_4: nil }
  },
  {
    name: 'Megatron',
    description: 'All Hail Megatron! That pretty much sums up the Decepticon leader\'s ambition, and his minions\'fear-induced feelings...',
    icon_link: 'megatron.jpeg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 513, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1924, stars_3: 4725, stars_4: 12_281 },
    attack: { stars_1: nil, stars_2: 146, stars_3: 306, stars_4: 794 },
    signature_ability: { stars_1: nil, stars_2: 35, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Mirage',
    description: 'Now you see him, now you don\'t. Mirage is one high-class Autobot with some slick espionage skills...',
    icon_link: 'mirage.jpeg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 535, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1592, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 141, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Mixmaster',
    description: 'Aptly named for both his cement mixer alt form and his advanced skills in concocting chemical weapons for the Decepticons, Mixmaster has been linked to being a part of the mighty Devastator...',
    icon_link: 'mixmaster.jpeg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: 1076, stars_4: nil },
    health: { stars_1: nil, stars_2: 1837, stars_3: 4510, stars_4: 8966 },
    attack: { stars_1: nil, stars_2: 114, stars_3: 245, stars_4: 487 },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Motormaster',
    description: 'The self-proclaimed "True King of the Road" and leader of the Stunticons is huge, savage, and merciless...',
    icon_link: 'motormaster.jpeg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: 249, stars_2: 532, stars_3: 1133, stars_4: nil },
    health: { stars_1: 1076, stars_2: 1959, stars_3: 4811, stars_4: nil },
    attack: { stars_1: 103, stars_2: 171, stars_3: 363, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: 0, stars_4: nil }
  },
  {
    name: 'Optiminus Prime',
    description: 'From his humble beginnings as Orion Pax to his indusputable role as the greatest Autobot leader ever, Optimus Prime is the embodiment of heroic valor and rightousness...',
    icon_link: 'optimus-prime.jpeg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 267, stars_2: 537, stars_3: nil, stars_4: nil },
    health: { stars_1: 1066, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: 97, stars_2: 150, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Optiminus Prime MV1',
    description: 'He is the Cybertronian definition of altuism, sacrifice and leadership...',
    icon_link: 'optimus-prime-mv1.jpeg',
    bot_class_id: BotClass.where(name: 'Brawler').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 540, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1959, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 171, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Prowl',
    description: 'He may look like your friendly neighborhood cop on patrol, but check under the hood and he’s 100% military-trained police on a mission to serve and protect...',
    icon_link: 'prowl.jpeg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1714, stars_3: 4210, stars_4: 10_941 },
    attack: { stars_1: nil, stars_2: 152, stars_3: 322, stars_4: 835 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Ratchet',
    description: 'The Autobots veteran Chief Medical Officer has patched up his fair share of Bots over the years...',
    icon_link: 'ratchet.jpeg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 551, stars_3: 1140, stars_4: nil },
    health: { stars_1: nil, stars_2: 1592, stars_3: 3971, stars_4: nil },
    attack: { stars_1: nil, stars_2: 137, stars_3: 269, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: 5, stars_4: nil }
  },
  {
    name: 'Rhinox',
    description: 'Hard-nosed and big brained, Rhinox is a Bot with a resounding passion for life...',
    icon_link: 'rhinox.jpeg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Maximals').first.id,
    power_index: { stars_1: 256, stars_2: 549, stars_3: nil, stars_4: nil },
    health: { stars_1: 951, stars_2: 1732, stars_3: nil, stars_4: nil },
    attack: { stars_1: 81, stars_2: 135, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Shockwave',
    description: 'Truly one of the most feared and powerful of all Decepticons, Shockwave\'s existence is driven solely by one thing: logic...',
    icon_link: 'shockwave.jpeg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: 460, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1767, stars_3: 4339, stars_4: 11_276 },
    attack: { stars_1: nil, stars_2: 129, stars_3: 271, stars_4: 703 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Sideswipe',
    description: 'Forged with the spark of a fighter and a cerebral circuits of a jock, Sideswipe is always down for a fight...',
    icon_link: 'sideswipe.jpeg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: 271, stars_2: 568, stars_3: nil, stars_4: nil },
    health: { stars_1: 826, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: 106, stars_2: 176, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Soundwave',
    description: 'Who is superior? Soundwave and his trusty minions Laserbeak and Ravage, that\'s who!...',
    icon_link: 'soundwave.jpeg',
    bot_class_id: BotClass.where(name: 'Tech').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1802, stars_3: 4425, stars_4: 11_499 },
    attack: { stars_1: nil, stars_2: 141, stars_3: 296, stars_4: 769 },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Starscream',
    description: 'Starscream is the treacherous Decepticon Air Commander and the deadliest of the Seekers...',
    icon_link: 'starscream.jpeg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Decepticons').first.id,
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Ultra Magnus',
    description: 'Galvatron\'s avowed enemy, Ultra Magnus epitomizes what it means to be a loyal soldier...',
    icon_link: 'ultra-magnus.jpeg',
    bot_class_id: BotClass.where(name: 'Tactician').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 442, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1819, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 150, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 0, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Waspinator',
    description: 'Despite his loyalty to the Predacon cause, the stalwart Waspinator never gets the respect he deserves from both his team mates or the universe...',
    icon_link: 'waspinator.jpeg',
    bot_class_id: BotClass.where(name: 'Demolitions').first.id,
    bot_faction_id: BotFaction.where(name: 'Predacons').first.id,
    power_index: { stars_1: nil, stars_2: 540, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1662, stars_3: 4081, stars_4: 10_606 },
    attack: { stars_1: nil, stars_2: 144, stars_3: 302, stars_4: 785 },
    signature_ability: { stars_1: nil, stars_2: 50, stars_3: 0, stars_4: 0 }
  },
  {
    name: 'Windblade',
    description: 'Hailing from the planet Caminus, this agile Scout is as adept with her swords as she is at "Cityspeaking" with gigantic Titans...',
    icon_link: 'windblade.jpeg',
    bot_class_id: BotClass.where(name: 'Scout').first.id,
    bot_faction_id: BotFaction.where(name: 'Autobots').first.id,
    power_index: { stars_1: nil, stars_2: 556, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: 1505, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: 169, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: 100, stars_3: nil, stars_4: nil }
  }
].each do |bot|
  Bot.upsert! bot
end
