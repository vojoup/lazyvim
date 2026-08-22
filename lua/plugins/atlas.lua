return {
  "emrearmagan/atlas.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional but recommended
    "MeanderingProgrammer/render-markdown.nvim", -- optional but recommended
    "esmuellert/codediff.nvim", -- optional (PullRequest diff)
    "sindrets/diffview.nvim", -- optional (PullRequest diff - alternative)
  },
  opts = {
    pulls = {
      providers = {
        github = {
          cache_ttl = 300,

          ---@type AtlasGitHubViewConfig[]
          views = {
            {
              name = "My PRs",
              key = "1",
              layout = "plain",
              search = "author:@me sort:updated-desc",
            },
            {
              name = "vcilabs",
              key = "2",
              layout = "compact",
              search = "org:vcilabs sort:updated-desc",
            },
            {
              name = "Team",
              key = "3",
              layout = "compact",
              search = "is:pr org:vcilabs sort:updated-desc team-review-requested-user:@me is:open",
            },
            -- {
            --   name = "Repo",
            --   key = "3",
            --   layout = "plain",
            --   search = "repo:your-org/your-repo",
            -- },
          },

          bookmarks = {
            key = "S", -- default
            label = "Search", -- default
            items = {
              ["Drafts"] = "is:pr is:draft author:@me",
              ["Recently merged"] = "is:pr is:merged team:vcilabs/toronto sort:updated-desc",
              ["Review requested"] = "is:pr is:open review-requested:@me",
            },
          },
        },
      },
    },
  },
}
