-- lua/jun/plugins/houdini.lua
return {
  'TheBlob42/houdini.nvim',
  event = 'InsertEnter',
  config = function()
    require('houdini').setup {
      -- Two-key escape mapping(s)
      mappings = { 'jk' }, -- can add more: { 'jk', 'jj', 'kk' }

      -- Time (ms) in which both keys must be pressed
      timeout = vim.o.timeoutlen,

      -- Try to avoid marking the buffer as modified if nothing actually changed
      check_modified = true,

      -- Filetypes where houdini is disabled
      excluded_filetypes = {
        -- 'TelescopePrompt',
        -- 'neo-tree',
      },

      -- one can omit escape_sequences to use the defaults from the README,
      -- but for now keep it simple
      escape_sequences = {
        ['i'] = '<BS><BS><ESC>',
        ['ic'] = '<BS><BS><ESC>',
        ['ix'] = '<BS><BS><ESC>',
        ['R'] = '<BS><BS><RIGHT><ESC>',
        ['Rc'] = '<BS><BS><ESC>',
        ['Rx'] = '<BS><BS><ESC>',
        ['Rv'] = '<BS><BS><RIGHT><ESC>',
        ['Rvc'] = '<BS><BS><ESC>',
        ['Rvx'] = '<BS><BS><ESC>',

        -- visual / operator / select modes use the built-in helper
        ['v'] = 'escape_and_undo',
        ['vs'] = 'escape_and_undo',
        ['V'] = 'escape_and_undo',
        ['Vs'] = 'escape_and_undo',
        ['^V'] = 'escape_and_undo',
        ['^Vs'] = 'escape_and_undo',
        ['no'] = 'escape_and_undo',
        ['nov'] = 'escape_and_undo',
        ['noV'] = 'escape_and_undo',
        ['no^V'] = 'escape_and_undo',

        -- select mode
        ['s'] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',
        ['S'] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',
        ['^S'] = '<BS><BS><ESC>:u! | call histdel("cmd", -1) | echo ""<CR>',

        -- terminal mode
        ['t'] = '<BS><BS><C-\\><C-n>',

        -- command-line mode
        ['c'] = '<BS><BS><C-c>',
      },
    }
  end,
}
