# Botodex menu
$('.botodex-menu').on 'click', ->
  me = $(this)
  me.parent('nav').children('a').removeClass 'nav-bot-active active'
  me.addClass 'nav-bot-active active'
  bots = me.parent('nav').next().children()
  bots.show()
  return unless me.data('bot_class')
  klass = '.card-' + me.data('bot_class').toLowerCase()
  bots.not(klass).each  ->
    $(@).hide()
    return
