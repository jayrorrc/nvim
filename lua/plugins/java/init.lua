return {
	"nvim-java/nvim-java",
	config = false,
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					jdtls = {
						java = {
							configuration = {
								runtimes = {
									{
										name = "Java-21",
										path = "/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home",
										default = true,
									},
									{
										name = "Java-11",
										path = "/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home",
									},
									{
										name = "Java-8",
										path = "/Library/Java/JavaVirtualMachines/jdk-1.8.jdk/Contents/Home",
									},
									{
										name = "Java-7",
										path = "/Library/Java/JavaVirtualMachines/jdk1.7.0_351.jdk/Contents/Home",
									},
									{
										name = "Open-JDK-11",
										path = "/Users/jayrorrc/Dev/dataprev/java/jdk-11.0.2.jdk/Contents/Home",
									},
								},
							},
						},
					},
				},
				-- setup = {
				-- 	jdtls = function()
				-- 		require("java").setup({})
				-- 		require("lspconfig").jdtls.setup({})
				-- 	end,
				-- },
			},
		},
	},
}
