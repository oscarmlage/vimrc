let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['svg'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['elm'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

