# nvim config
```
nvim/
    init.lua
    lua/
        core/
            mappings.lua
            settings.lua
        lsp/
            autocmp/
                init.lua
                nvim-cmp.lua
            init.lua
            lspconfig.lua
            mason.lua
            ...
        plugins/
            init.lua        <-- plugins with little to no configuration go into init.lua
            telescope.lua   <-- plugins with more complicated configs get their own file (and sometimes folder)
            lualine.lua
            ...
        themes/
            init.lua
```
