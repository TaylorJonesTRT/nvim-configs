require("conduct").setup({
    -- define function that you bind to a key in a project config
    functions = {},

    -- define presets for projects
    presets = {},

    hooks = {
        before_session_save = function() end,
        before_session_load = function() end,
        after_session_load = function() end,
        before_project_load = function() end,
        after_project_load = function() end,
    }
})
