local hooks = function(ev)
  -- Use available |event-data|
  local name, kind = ev.data.spec.name, ev.data.kind
  -- Run build script after plugin's code has changed
  if name == 'telescope-fzf-native' and (kind == 'install' or kind == 'update') then
    -- Append `:wait()` if you need synchronous execution
    local retobj = vim.system({ 'cmake', '-S.', '-Bbuild', '-DCMAKE_BUILD_TYPE=Release'}, { cwd = ev.data.path })
    if retobj.code == 0 then
      vim.system({ 'cmake', '--build', 'build', '--config', 'Release', '--target', 'install' }, { cwd = ev.data.path })
    end
  end
end

-- If hooks need to run on install, run this before `vim.pack.add()`
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

vim.pack.add({
  'https://github.com/Xetius/telescope.nvim',
  'https://github.com/Xetius/telescope-fzf-native.nvim',
})

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}
