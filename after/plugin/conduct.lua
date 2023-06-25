require("conduct").setup({
    hooks = {
        before_session_save = function() end,
        before_session_load = function() end,
        after_session_load = function() end,
        before_project_laod = function() end,
        after_project_load = function() end,
    }
})
