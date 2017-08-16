# frozen_string_literal: true

[
  {
    name: 'E.M.I. module',
    description: 'E.M.I. module...',
    icon_link: 'emi-module.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Exo-filter',
    description: 'Exo-filter...',
    icon_link: 'exo-filter.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Harm accelerator',
    description: 'Harm accelerator...',
    icon_link: 'harm-accelerator.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Laser guidance module',
    description: 'Laser guidance module...',
    icon_link: 'laser-guidance-module.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Nightbird\'s mark',
    description: 'Nightbird\'s mark...',
    icon_link: 'nightbirds-mark.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Paralyzer',
    description: 'Paralyzer...',
    icon_link: 'paralyzer.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Repair module',
    description: 'Repair module...',
    icon_link: 'repair-module.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Robot resource',
    description: 'Robot resource...',
    icon_link: 'robot-resource.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Security module',
    description: 'Security module...',
    icon_link: 'security-module.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Strange refractor',
    description: 'Strange refractor...',
    icon_link: 'strange-refractor.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  }
].each do |mod|
  Mod.upsert! mod
end
