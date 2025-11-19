My personal LaTeX template for things like university notes, coupled with the neovim (nvim) configuration that i use to write them, including custom snippets and autocompletion. It's still a work in progress, as i just started using LaTeX this year.

---

## LaTeX template (`*.sty` files)

The template is divided in `.sty` modules, each one with a specific purpose.

The template is shown [here](https://raw.githubusercontent.com/AglaiaNorza/latex-setup/main/template.pdf).

--- 

## Neovim Setup (`*.lua` files)

This configuration uses the `nvim-cmp` and `LuaSnip` plugins to provide completion with snippets, in order to be able to write at a good speed.

The snippets themselves are in `tex.lua` and were created by me. Many are inspired by the [latex-suite](https://github.com/artisticat1/obsidian-latex-suite) plugin for obsidian. (I plan on adding more soon).

| file | description | deets |
| :--- | :--- | :--- |
| **`luasnip.lua`** | configuration for the `LuaSnip` plugin. | lazy-loads (amongst others) my custom snippets. defines keybindings for expansion (`<C-l>`), jumping forward (`<C-k>`), and jumping backward (`<C-j>`). |
| **`cmp.lua`** | configuration for the `nvim-cmp` autocompletion plugin. | integrates `luasnip` with the completion engine via `cmp-luasnip`. Custom mapping for confirmation via `Enter` or `Space`, selection + confirmation via `<C-Space>`. |
| **`tex.lua`** | custom LaTeX Snippets (for use with `LuaSnip`) written by me. | Includes common environment snippets (`beg`, `def`, `note`, `proof`), math delimiters (`mk` for inline, `dm` for display), and math symbols (`@a` for `\alpha`, `->` for `\to`, `sub=` for `\subseteq`) etc |

the nvim plugins include the entire configs i use, of which some pieces are latex-specific.

### usage in nvim

1.  Type a snippet trigger (e.g., `def` or `@a`).
2.  The completion menu will appear. You can either:
    - use `Tab` to jump through options and `Enter`/`Space` to expand.
    - use `<C-j>` or `<C-Space>` to auto-expand the first option, without using `Tab`

---

## usage
1.  **LaTeX:** Place the `*.sty` files into your document's directory or in a location where your LaTeX distribution can find them (and include them in your `.tex` files.
2.  **Neovim:** integrate the `*.lua` files into your Neovim configuration structure (likely under a `lua/plugins/` or `lua/` directory, depending on your setup) (or feel free to just steal the snippets if you need them).
