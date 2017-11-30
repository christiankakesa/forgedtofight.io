# frozen_string_literal: true

# Relic.unscoped.delete_all
[
  {
    name: 'Dark Energon ORB',
    type: :relic_xp_boost,
    description: 'Increase Commander XP gains by +5 XP.',
    tier: nil,
    icon_url: '/assets/relics/dark-energon-orb.jpeg',
    image_url: '/assets/relics/dark-energon-orb_768x768.jpeg'
  },
  {
    name: 'Hot Rod relic',
    type: :relic_boost,
    description: nil,
    tier: { two: '+2% attack and health in Special Missions.' },
    icon_url: '/assets/relics/hot-rod-relic.jpeg',
    image_url: '/assets/relics/hot-rod-relic_768x768.jpeg'
  },
  {
    name: 'Matrix of leadership',
    type: :relic_xp_boost,
    description: nil,
    tier: { one: '+5% XP in Story and Special Missions.' },
    icon_url: '/assets/relics/matrix-of-leadership.jpeg',
    image_url: '/assets/relics/matrix-of-leadership_768x768.jpeg'
  },
  {
    name: 'Megatron relic',
    type: :relic_boost,
    description: nil,
    tier: { three: '+4% attack and health in Alliance Missions.' },
    icon_url: '/assets/relics/megatron-relic.jpeg',
    image_url: '/assets/relics/megatron-relic_768x768.jpeg'
  },
  {
    name: 'Paralyzer',
    type: :relic_xp_boost,
    description: 'Increase Commander XP gains by +5 XP.',
    tier: nil,
    icon_url: '/assets/relics/paralyzer.jpeg',
    image_url: '/assets/relics/paralyzer_768x768.jpeg'
  },
  {
    name: 'Silver Galvatron relic',
    type: :relic_boost,
    description: '+3% attack and health in Alliance Missions.',
    tier: nil,
    icon_url: '/assets/relics/silver-galvatron-relic.jpeg',
    image_url: '/assets/relics/silver-galvatron-relic_768x768.jpeg'
  },
  {
    name: 'Silver shattered disk',
    type: :relic_boost,
    description: '+3% attack and health in Special Missions.',
    tier: nil,
    icon_url: '/assets/relics/silver-shattered-disk.jpeg',
    image_url: '/assets/relics/silver-shattered-disk_768x768.jpeg'
  },
  {
    name: 'The covenant of primus',
    type: :relic_xp_boost,
    description: 'Increase Commander XP gains by +5 XP.',
    tier: nil,
    icon_url: '/assets/relics/the-covenant-of-primus.jpeg',
    image_url: '/assets/relics/the-covenant-of-primus_768x768.jpeg'
  },
  {
    name: 'Unstable Energon cube',
    type: :relic_xp_boost,
    description: nil,
    tier: { three: '+10% XP in Story and Special Missions.', four: '+15% XP in Story and Special Missions.' },
    icon_url: '/assets/relics/unstable-energon-cube.jpeg',
    image_url: '/assets/relics/unstable-energon-cube_768x768.jpeg'
  }
].each do |relic|
  Relic.upsert! relic
end
