return {
	{
		"Civitasv/cmake-tools.nvim",
		dependencies = { "stevearc/overseer.nvim", "akinsho/toggleterm.nvim" },
		config = function()
			require("cmake-tools").setup({
				cmake_executor = { -- executor to use
					name = "quickfix", -- name of the executor
					opts = {}, -- the options the executor will get, possible values depend on the executor type. See `default_opts` for possible values.
					default_opts = { -- a list of default and possible values for executors
						quickfix = {
							show = "always", -- "always", "only_on_error"
							position = "belowright", -- "bottom", "top"
							size = 10,
						},
						toggleterm = {
							direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
							close_on_exit = false, -- whether close the terminal when exit
							auto_scroll = true, -- whether auto scroll to the bottom
						},
						overseer = {
							new_task_opts = {
								strategy = {
									"toggleterm",
									direction = "horizontal",
									autos_croll = true,
									quit_on_exit = "success",
								},
							}, -- options to pass into the `overseer.new_task` command
							on_new_task = function(_) end, -- a function that gets overseer.Task when it is created, before calling `task:start`
						},
						terminal = {
							name = "Main Terminal",
							prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
							split_direction = "horizontal", -- "horizontal", "vertical"
							split_size = 11,

							-- Window handling
							single_terminal_per_instance = true, -- Single instance, multiple windows
							single_terminal_per_tab = true, -- Single instance per tab
							keep_terminal_static_location = true, -- Static location of the viewport if avialable

							-- Running Tasks
							start_insert = false, -- If you want to enter terminal with :startinsert
							focus = false, -- Focus on cmake terminal when cmake task is launched.
							do_not_add_newline = false, -- Do not hit enter on the command inserted when using :CMakeRun, allowing a chance to review or modify the command before hitting enter.
						}, -- terminal executor uses the values in cmake_terminal
					},
				},
				cmake_runner = { -- runner to use
					name = "overseer", -- name of the runner
					opts = {}, -- the options the runner will get, possible values depend on the runner type. See `default_opts` for possible values.
					default_opts = { -- a list of default and possible values for runners
						quickfix = {
							show = "always", -- "always", "only_on_error"
							position = "belowright", -- "bottom", "top"
							size = 10,
							encoding = "utf-8",
							auto_close_when_success = false, -- typically, you can use it with the "always" option; it will auto-close the quickfix buffer if the execution is successful.
						},
						toggleterm = {
							direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
							close_on_exit = false, -- whether close the terminal when exit
							auto_scroll = true, -- whether auto scroll to the bottom
						},
						overseer = {
							new_task_opts = {
								strategy = {
									"toggleterm",
									direction = "float",
									autos_croll = true,
								},
							}, -- options to pass into the `overseer.new_task` command
							on_new_task = function(_) end, -- a function that gets overseer.Task when it is created, before calling `task:start`
						},
						terminal = {
							name = "Runner Terminal",
							prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
							split_direction = "horizontal", -- "horizontal", "vertical"
							split_size = 10,

							-- Window handling
							single_terminal_per_instance = true, -- Single instance, multiple windows
							single_terminal_per_tab = true, -- Single instance per tab
							keep_terminal_static_location = true, -- Static location of the viewport if avialable

							-- Running Tasks
							start_insert = true, -- If you want to enter terminal with :startinsert
							focus = true, -- Focus on cmake terminal when cmake task is launched.
							do_not_add_newline = false, -- Do not hit enter on the command inserted when using :CMakeRun, allowing a chance to review or modify the command before hitting enter.
						},
					},
				},
			})
		end,
	},
	{
		"p00f/clangd_extensions.nvim",
		config = function()
			require("clangd_extensions").setup()
		end,
	},
}
