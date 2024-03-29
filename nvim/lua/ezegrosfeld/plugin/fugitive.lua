return {
    'tpope/vim-fugitive',

    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

        local EzeGrosfeld_Fugitive = vim.api.nvim_create_augroup("EzeGrosfeld_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = EzeGrosfeld_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }
                vim.keymap.set("n", "<leader>p", ":Git push ", opts)

                -- rebase always
                vim.keymap.set("n", "<leader>P", ":Git pull --rebase ", opts)

                -- NOTE: It allows me to easily set the branch i am pushing and any tracking
                -- needed if i did not set the branch up correctly
                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
            end,
        })

        vim.keymap.set("n", "gu", "<cmd>diffget //2<cr>")
        vim.keymap.set("n", "gh", "<cmd>diffget //3<cr>")
    end
}
