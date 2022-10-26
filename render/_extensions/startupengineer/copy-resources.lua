-- copy resources hack until Quarto devs fix the issue

local function copyResource(file)

  path = quarto.utils.resolvePath(file)
  
  quarto.doc.addFormatResource(path)

end

function Header(el)

  --- copyResource('src/assets/images/logo.svg')
  --- copyResource('public/favicon.svg')
  --- copyResource('public/favicon.html')
  --- copyResource('logo.png')

  return el

end