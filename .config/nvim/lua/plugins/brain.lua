return {
	"Xetius/brain.nvim",
	config = function()
		require("brain").setup({
			default_provider = "ollama", -- FREE local option!
			providers = {
				-- Cloud providers (require API keys)
				openai = { api_key = vim.env.OPENAI_API_KEY },
				anthropic = { api_key = vim.env.ANTHROPIC_API_KEY },
				google = { api_key = vim.env.GOOGLE_API_KEY },
				groq = { api_key = vim.env.GROQ_API_KEY },
				deepseek = { api_key = vim.env.DEEPSEEK_API_KEY }, -- Very affordable
				moonshot = { api_key = vim.env.MOONSHOT_API_KEY }, -- Kimi models
				opencode_zen = { api_key = vim.env.OPENCODE_ZEN_API_KEY }, -- Curated models
				github_copilot = {}, -- GitHub Copilot (uses existing auth)

				-- Local providers (FREE - no API keys needed!)
				ollama = {}, -- Make sure Ollama is running: http://localhost:11434
				lmstudio = {}, -- Make sure LM Studio server is running: http://localhost:1234
			},
		})
	end,
}
