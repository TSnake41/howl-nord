
theme = howl.ui.theme

themes = {
  'Nord': bundle_file('nord.moon'),
}

for name,file in pairs themes
  theme.register(name, file)

unload = ->
  for name in pairs themes
    theme.unregister(name)

{
  info: {
    author: 'TSnake41',
    description: 'Nord theme for Howl',
    license: 'ISC',
  },
  :unload
}
