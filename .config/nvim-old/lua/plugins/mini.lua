return {
  'nvim-mini/mini.nvim',
  version = false,
  config = function()
    -- mini.animate config
    require('mini.animate').setup()
    -- mini.ai config
    require('mini.ai').setup()
    -- mini.align config
    -- require('mini.align').setup()
    -- mini.base16 config
    -- require('mini.base16').setup(MiniBase16)
    -- mini.basics config
    require('mini.basics').setup()
    -- mini.bracketed config
    require('mini.bracketed').setup()
    -- mini.bufremove config
    -- require('mini.bufremove').setup()
    -- mini.clue config
    require('mini.clue').setup()
    -- mini.cmdline config
    require('mini.cmdline').setup()
    -- mini.colors config
    -- require('mini.colors').setup()
    -- mini.comment config
    require('mini.comment').setup()
    -- mini.completion config
    -- require('mini.completion').setup()
    -- mini.cursorword config
    require('mini.cursorword').setup()
    -- mini.deps config
    require('mini.deps').setup()
    -- mini.diff config
    require('mini.diff').setup()
    -- mini.doc config
    -- require('mini.doc').setup()
    -- mini.extra config
    require('mini.extra').setup()
    -- mini.files config
    require('mini.files').setup()
    -- mini.fuzzy config
    require('mini.fuzzy').setup()
    -- mini.git config
    require('mini.git').setup()
    -- mini.hipatterns config
    require('mini.hipatterns').setup()
    -- mini.icons config
    require('mini.icons').setup()
    -- mini.indentscope config
    require('mini.indentscope').setup()
    -- mini.jump config
    require('mini.jump').setup()
    -- mini.jump2d config
    require('mini.jump2d').setup()
    -- mini.keymap config
    require('mini.keymap').setup()
    -- mini.map config
    require('mini.map').setup()
    -- mini.misc config
    require('mini.misc').setup()
    -- mini.move config
    -- require('mini.move').setup()
    -- mini.notify config
    require('mini.notify').setup()
    -- mini.operators config
    -- require('mini.operators').setup()
    -- mini.pairs config
    require('mini.pairs').setup()
    -- mini.pick config
    -- require('mini.pick').setup()
    -- mini.sessions config
    -- require('mini.sessions').setup()
    -- mini.snippets config
    -- require('mini.snippets').setup()
    -- mini.splitjoin config
    -- require('mini.splitjoin').setup()
    -- mini.starter config
    -- require('mini.starter').setup()
    -- mini.statusline config
    -- require('mini.statusline').setup()
    -- mini.surround config
    require('mini.surround').setup()
    -- mini.tabline config
    -- require('mini.tabline').setup()
    -- mini.test config
    -- require('mini.test').setup()
    -- mini.trailspace config
    -- require('mini.trailspace').setup()
    -- mini.visits config
    require('mini.visits').setup()
  end,
}
