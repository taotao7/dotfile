-- Seoul256 Theme Helper Configuration
-- Provides commands for switching between light and dark modes

return {
  -- Add Seoul256 theme configuration
  {
    "junegunn/seoul256.vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Seoul256 configuration
      -- Set Seoul256 background range (dark mode: 233-239, light mode: 252-256)
      vim.g.seoul256_background = 236  -- Default dark background
      vim.g.seoul256_light_background = 253  -- Default light background
      
      -- Enable Seoul256 solarized mode (optional)
      vim.g.seoul256_solarized = 0
    end,
  },

  -- User commands for Seoul theme switching
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      commands = {
        -- Command to switch to Seoul256 light mode
        SeoulLight = {
          function()
            vim.opt.background = "light"
            vim.cmd.colorscheme("seoul256-light")
            -- Force statusline refresh
            vim.cmd("redrawstatus!")
            vim.notify("Switched to Seoul256 Light mode", vim.log.levels.INFO)
          end,
          desc = "Switch to Seoul256 light mode",
        },
        
        -- Command to switch to Seoul256 dark mode  
        SeoulDark = {
          function()
            vim.opt.background = "dark"
            vim.cmd.colorscheme("seoul256")
            -- Force statusline refresh
            vim.cmd("redrawstatus!")
            vim.notify("Switched to Seoul256 Dark mode", vim.log.levels.INFO)
          end,
          desc = "Switch to Seoul256 dark mode",
        },
        
        -- Command to toggle between light and dark modes
        SeoulToggle = {
          function()
            if vim.opt.background:get() == "dark" then
              vim.opt.background = "light"
              vim.cmd.colorscheme("seoul256-light")
              vim.notify("Switched to Seoul256 Light mode", vim.log.levels.INFO)
            else
              vim.opt.background = "dark" 
              vim.cmd.colorscheme("seoul256")
              vim.notify("Switched to Seoul256 Dark mode", vim.log.levels.INFO)
            end
            -- Force statusline refresh
            vim.cmd("redrawstatus!")
          end,
          desc = "Toggle Seoul256 light/dark mode",
        },
      },
      
      mappings = {
        n = {
          -- Key mappings for Seoul theme switching
          ["<Leader>tl"] = {
            function()
              vim.opt.background = "light"
              vim.cmd.colorscheme("seoul256-light")
              vim.cmd("redrawstatus!")
              vim.notify("Seoul256 Light mode", vim.log.levels.INFO)
            end,
            desc = "Seoul256 Light mode",
          },
          
          ["<Leader>td"] = {
            function()
              vim.opt.background = "dark"
              vim.cmd.colorscheme("seoul256")
              vim.cmd("redrawstatus!")
              vim.notify("Seoul256 Dark mode", vim.log.levels.INFO)
            end,
            desc = "Seoul256 Dark mode",
          },
          
          ["<Leader>tt"] = {
            function()
              if vim.opt.background:get() == "dark" then
                vim.opt.background = "light"
                vim.cmd.colorscheme("seoul256-light")
                vim.notify("Seoul256 Light mode", vim.log.levels.INFO)
              else
                vim.opt.background = "dark"
                vim.cmd.colorscheme("seoul256")
                vim.notify("Seoul256 Dark mode", vim.log.levels.INFO)
              end
              vim.cmd("redrawstatus!")
            end,
            desc = "Toggle Seoul256 theme",
          },
        },
      },
    },
  },
} 