# Botodex menu
$('.botodex-menu').on 'click', ->
  me = $(this)
  me.parent('nav').children('a').removeClass 'nav-bot-active active'
  me.addClass 'nav-bot-active active'
  bots = me.parent('nav').nextAll('.card-deck').children()
  bots.show()
  # We have done if user push "all" button
  return unless me.data('bot_type')
  my_type = '.card-bot-' + me.data('bot_type')
  bots.not(my_type).each  ->
    $(@).hide()
    return

# Mod menu
$('.mod-menu').on 'click', ->
  me = $(this)
  me.parent('nav').children('a').removeClass 'nav-mod-active active'
  me.addClass 'nav-mod-active active'
  mods = me.parent('nav').nextAll('.card-deck').children()
  mods.show()
  # We have done if user push "all" button
  return unless me.data('mod_type')
  my_type = '.card-mod-' + me.data('mod_type')
  mods.not(my_type).each  ->
    $(@).hide()
    return

# Relic menu
$('.relic-menu').on 'click', ->
  me = $(this)
  me.parent('nav').children('a').removeClass 'nav-relic-active active'
  me.addClass 'nav-relic-active active'
  relics = me.parent('nav').nextAll('.card-deck').children()
  relics.show()
  # We have done if user push "all" button
  return unless me.data('relic_type')
  my_type = '.card-relic-' + me.data('relic_type')
  relics.not(my_type).each  ->
    $(@).hide()
    return

# Localized Time for user
( ->
  $('[data-localized-time]').each ->
    localized_timestamp = Date.parse($(@).data('localized-time'))
    localized_date = new Date(localized_timestamp)
    $(@).text(localized_date.toLocaleString())
)()
