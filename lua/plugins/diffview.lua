return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      {
        "<leader>g|",
        function()
          local ok, lib = pcall(require, "diffview.lib")
          if ok and lib.get_current_view() then
            vim.cmd("DiffviewClose")
          else
            vim.cmd("DiffviewOpen")
          end
        end,
        desc = "Toggle Diff View",
      },
      {
        "<leader>g\\",
        function()
          local refs = vim.fn.systemlist({
            "git",
            "for-each-ref",
            "--format=%(refname:short)",
            "refs/heads",
            "refs/remotes",
          })

          if vim.v.shell_error ~= 0 or #refs == 0 then
            vim.ui.input({ prompt = "Compare branch to HEAD: " }, function(branch)
              if not branch or vim.trim(branch) == "" then
                return
              end

              local rev = vim.trim(branch) .. "...HEAD"
              local ok, lib = pcall(require, "diffview.lib")

              if ok and lib.get_current_view() then
                vim.cmd("DiffviewClose")
              end

              vim.cmd({ cmd = "DiffviewOpen", args = { rev } })
            end)
            return
          end

          table.sort(refs)

          vim.ui.select(refs, { prompt = "Compare branch to HEAD" }, function(branch)
            if not branch or vim.trim(branch) == "" then
              return
            end

            local rev = vim.trim(branch) .. "...HEAD"
            local ok, lib = pcall(require, "diffview.lib")

            if ok and lib.get_current_view() then
              vim.cmd("DiffviewClose")
            end

            vim.cmd({ cmd = "DiffviewOpen", args = { rev } })
          end)
        end,
        desc = "Diff Branch vs HEAD",
      },
    },
  },
}
