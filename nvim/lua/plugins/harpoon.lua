return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end)

        vim.keymap.set("n", "<leader><S-Q>", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<leader><S-W>", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<leader><S-E>", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<leader><S-R>", function()
            harpoon:list():select(4)
        end)

        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)
    end,
}
