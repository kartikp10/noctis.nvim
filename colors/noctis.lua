vim.opt.background = 'dark'
vim.g.colors_name = 'noctis'

package.loaded['lush_theme.noctis'] = nil
require('lush')(require('lush_theme.noctis'))

