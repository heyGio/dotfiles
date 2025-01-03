return {
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		dependencies = {
			{ "rafamadriz/friendly-snippets" },
			{
				"iurimateus/luasnip-latex-snippets.nvim",
				requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
				config = function()
					require("luasnip-latex-snippets").setup({ allow_on_markdown = true })
					require("luasnip").config.setup({ enable_autosnippets = true })
				end,
			},
		},
	},
	{
		"saghen/blink.cmp",
		dependencies = {},

		version = "v0.*",

		opts = {
			keymap = { preset = "default" },

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			signature = { enabled = true },

			completion = {
				-- -- Display a preview of the selected item on the current line
				-- ghost_text = { enabled = true },

				menu = {
					-- nvim-cmp style menu
					draw = {
						columns = {
							{ "label", "label_description", gap = 1 },
							{ "kind_icon", "kind" },
						},
					},
				},

				-- Show documentation when selecting a completion item
				documentation = { auto_show = true, auto_show_delay_ms = 500 },
			},

			-- Snippets with luasnip
			snippets = {
				expand = function(snippet)
					require("luasnip").lsp_expand(snippet)
				end,
				active = function(filter)
					if filter and filter.direction then
						return require("luasnip").jumpable(filter.direction)
					end
					return require("luasnip").in_snippet()
				end,
				jump = function(direction)
					require("luasnip").jump(direction)
				end,
			},
			sources = {
				default = { "lsp", "path", "snippets", "luasnip", "buffer" },
			},
		},
	},
}
