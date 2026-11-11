return {
    "lervag/vimtex",
    lazy = false, 
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_quickfix_open_on_error = 1
        vim.g.vimtex_quickfix_mode = 1 -- auto-closes quickfix when errors are resolved
        vim.g.tex_flavor = 'latex'
        vim.g.vimtex_fold_enabled = 1
        -- vim.g.tex_conceal = 'abdmg'

        vim.g.vimtex_quickfix_ignore_filters = {
            'Underfull \\hbox',
            'Overfull \\hbox',
            'Specifying "filename" is obsolete',
            'LaTeX Warning: .*: page \\d\\+ positive',
        }

        -- TOC !!! (<leader>lt)
        vim.g.vimtex_toc_config = {
            name = "TOC",
            layers = { "content", "todo", "include" },
            split_width = 30,
            split_pos = "leftabove vertical",
            show_detail = 0,
        }
    end,
    config = function()
        vim.cmd("filetype plugin indent on")
        vim.cmd("syntax enable")

        vim.api.nvim_create_autocmd("User", {
            pattern = "VimtexEventQuit",
            callback = function()
                vim.cmd("VimtexClean")
            end,
        })

        --vim.opt.conceallevel = 1
    end
}
