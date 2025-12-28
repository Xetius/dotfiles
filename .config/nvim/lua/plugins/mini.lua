return {
	{ 'nvim-mini/mini.icons', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.basics', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.statusline', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.files', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.ai', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.comment', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.pairs', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.surround', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.clue', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.diff', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.extra', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.pick', version = false, opts = {silent = true} },
    { 'nvim-mini/mini-git', version = false, 
        config = function() 
            require('mini.git').setup()
        end,
    },
	{ 'nvim-mini/mini.animate', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.indentscope', version = false, opts = {silent = true} },
	{ 'nvim-mini/mini.notify', version = false, opts = {silent = true} },
}

