# Botodex menu
$('.botodex-menu').on 'click', ->
  me = $(this)
  me.parent('nav').children('a').removeClass 'nav-bot-active active'
  me.addClass 'nav-bot-active active'
  bots = me.parent('nav').nextAll('.card-deck').children()
  bots.show()
  # We have done if user push "all" button
  return unless me.data('bot_class')
  klass = '.card-' + me.data('bot_class').toLowerCase()
  bots.not(klass).each  ->
    $(@).hide()
    return

# Localized Time for user
( ->
  $('[data-localized-time]').each ->
    localized_timestamp = Date.parse($(@).data('localized-time'))
    localized_date = new Date(localized_timestamp)
    $(@).text(localized_date.toLocaleString())
)()
