return {
    "goolord/alpha-nvim",
    opts = function()
        local db = require("alpha.themes.dashboard")
        local logo = [[
    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    ███████▌▀██▌ ▐███████████████▀▀██▀▀██████████████░╙█████████████████▀███▀▀ ,▄"██
    ███▌ └█▌ '▀╜  ▐█████████████▌  ▐█▄,▄████████████▀  ▄████████████████ └▀  ▐███ ▐█
    ██████▄  ⁿ%  ▐██████████████  @' ]█████████████└  ▀▀▀╙▀▀████████████  ▄▄   ]█ ▐█
    █Ç ▀█▀  ▄█─ ƒ▀▀██████████▀▀┘  ,▄████████████▀" ╓≡  ▐▀ ▄▌ ]██████████  ╙   √█▌ ██
    ██▌▐█▀ ▄.└"╙▀█████████████    ]▀ █▀█████████▄▄▀▀ ▄▀ ,██▌ ██████████▌ ª`   ,,║ ██
    ██C┘┌██▌╒M╙C ▐██████████▀" ▄Ö  ╓███ ██████████▄@▀ ╓███▌ ▐█████████▀   ,   ███ ▐█
    █▀ ,███▌  ▀C █████████▌  ▄███ └███▀ '████████▌;,▄▀███▀ ▄█████████┘ ╓████  ███ j█
    ▄,▄███████┐,▄█████████████████▄▄▄▄▄▄█████████████▄▄  ╓██████████████████╖▄▄╙▀  █
    ████████████████████████████████████████████████████████████████████████████████]]

        db.section.header.type = "text"
        db.section.header.val = vim.split(logo, "\n")
        db.section.header.opts.position = "center"
        db.section.buttons.val = {
            db.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
            db.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
            db.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
            db.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
            db.button("q", " " .. " Quit", ":qa<CR>"),
        }
        db.section.buttons.opts.spacing = 1
        -- header spacing from the top
        db.opts.layout[1].val = 2
    end,
}
