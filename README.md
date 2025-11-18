My personal, **LaTeX template** for university lecture notes, coupled with the **neovim (nvim) configuration** that i use to write them, including custom snippets and autocompletion.

---

## LaTeX template (`*.sty` files)

The template is divided in `.sty` modules, each one with a specific purpose.

### `mainstyle.sty` - core style 

### box styles (`tcolorbox` definitions)

Boxes !!

(tbd)

### useful macros

### title page


## packages used

--- 

## Neovim Setup (`*.lua` files)

This configuration uses the `nvim-cmp` and `LuaSnip` plugins to provide completion with snippets, in order to be able to write at a good speed.

The snippets themselves are in `tex.lua` and were created by me. Many are inspired by the [latex-suite](https://github.com/artisticat1/obsidian-latex-suite) plugin for obsidian.

| file | description | deets |
| :--- | :--- | :--- |
| **`luasnip.lua`** | configuration for the `LuaSnip` plugin. | lazy-loads (amongst others) my custom snippets. defines keybindings for expansion (`<C-l>`), jumping forward (`<C-k>`), and jumping backward (`<C-j>`). |
| **`cmp.lua`** | configuration for the `nvim-cmp` autocompletion plugin. | Integrates `luasnip` with the completion engine via `cmp-luasnip`. Custom mapping for confirmation on `Enter` (`<CR>`) and **`Space`** or selection via **`<C-Space>`**. |
| **`tex.lua`** | **custom LaTeX Snippets** (for use with `LuaSnip`). | Includes common environment snippets (`beg`, `def`, `note`, `proof`), math delimiters (`mk` for inline, `dm` for display), and **math symbols** (`@a` for `\alpha`, `->` for `\to`, `iff` for `\iff`). Also includes a dynamic regex snippet to auto-create fractions: **`.../` expands to `\frac{...}{}`**. |

### usage in nvim

1.  Type a snippet trigger (e.g., `def` or `@a`).
2.  The completion menu will appear. You can either:
  - use `Tab` to jump through options and `Enter`/`Space` to expand.
  - use `<C-j>` or `<C-Space>` to auto-expand the first option, without using `Tab`

---

## usage

1.  Clone the repository into your preferred location.
2.  **LaTeX:** Place the `*.sty` files into your document's directory or in a location where your LaTeX distribution can find them.
3.  **Neovim:** Ensure the contents of the `*.lua` files are correctly integrated into your Neovim configuration structure (likely under a `lua/plugins/` or `lua/` directory, depending on your setup).
