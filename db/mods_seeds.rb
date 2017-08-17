# frozen_string_literal: true

Mod.delete_all
[
  {
    name: 'E.M.I. module',
    description: 'E.M.I. module...',
    icon_url: '/assets/mods/emi-module.jpeg',
    image_url: '/assets/mods/emi-module_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Exo-filter',
    description: 'Exo-filter...',
    icon_url: '/assets/mods/exo-filter.jpeg',
    image_url: '/assets/mods/exo-filter_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Harm accelerator',
    description: 'Harm accelerator...',
    icon_url: '/assets/mods/harm-accelerator.jpeg',
    image_url: '/assets/mods/harm-accelerator_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Laser guidance module',
    description: 'Laser guidance module...',
    icon_url: '/assets/mods/laser-guidance-module.jpeg',
    image_url: '/assets/mods/laser-guidance-module_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Nightbird\'s mark',
    description: 'Nightbird\'s mark...',
    icon_url: '/assets/mods/nightbirds-mark.jpeg',
    image_url: '/assets/mods/nightbirds-mark_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Paralyzer',
    description: 'Paralyzer...',
    icon_url: '/assets/mods/paralyzer.jpeg',
    image_url: '/assets/mods/paralyzer_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Repair module',
    description: 'Repair module...',
    icon_url: '/assets/mods/repair-module.jpeg',
    image_url: '/assets/mods/repair-module_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Robot resource',
    description: 'Robot resource...',
    icon_url: '/assets/mods/robot-resource.jpeg',
    image_url: '/assets/mods/robot-resource_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Security module',
    description: 'Security module...',
    icon_url: '/assets/mods/security-module.jpeg',
    image_url: '/assets/mods/security-module_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  },
  {
    name: 'Strange refractor',
    description: 'Strange refractor...',
    icon_url: '/assets/mods/strange-refractor.jpeg',
    image_url: '/assets/mods/strange-refractor_768x768.jpeg',
    power_index: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    health: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    attack: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil },
    signature_ability: { stars_1: nil, stars_2: nil, stars_3: nil, stars_4: nil }
  }
].each do |mod|
  Mod.upsert! mod
end
