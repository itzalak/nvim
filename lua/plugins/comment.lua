local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    return
end

comment.setup({

    padding = true, -- Add a space b/w comment and the line
    sticky = true, -- Whether the cursor should stay at its position

    toggler = {
        line = 'gcc'
    },

    -- NORMAL+VISUAL mode operator mappings
    opleader = {
        line = 'gc',
    },

    mappings = {
        basic = true, -- Includes `gcc`, `gbb`, `gc[count]{motion}` and `gb[count]{motion}`
        extended = false, -- Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
    },
})
