--vim.g.syntastic_always_populate_loc_list = 1
--vim.g.syntastic_auto_loc_list = 1
--vim.g.syntastic_check_on_open = 1
--vim.g.syntastic_check_on_wq = 1
    

require('telescope').load_extension 'remote-sshfs'

require('remote-sshfs').setup{
    connections = {
        ssh_configs = { -- which ssh configs to parse for hosts list
            vim.fn.expand "$HOME" .. "/.ssh/config",
            "/etc/ssh/ssh_config",
        },
        sshfs_args = { -- arguments to pass to the sshfs command
            "-o reconnect",
            "-o ConnectTimeout=5",
        },
    },
    mounts = {
        base_dir = vim.fn.expand "$HOME" .. "/.sshfs/", -- base directory for mount points
        unmount_on_exit = true, -- run sshfs as foreground, will unmount on vim exit
    },
    handlers = {
        on_connect = {
            change_dir = true, -- when connected change vim working directory to mount point
        },
        on_disconnect = {
            clean_mount_folders = false, -- remove mount point folder on disconnect/unmount
        },
        on_edit = {}, -- not yet implemented
    },
    ui = {
        confirm = {
            connect = true, -- prompt y/n when host is selected to connect to
            change_dir = false, -- prompt y/n to change working directory on connection (only applicable if handlers.on_connect.change_dir is enabled)
        },
    },
    log = {
        enable = false, -- enable logging
        truncate = false, -- truncate logs
        types = { -- enabled log types
            all = false,
            util = false,
            handler = false,
            sshfs = false,
        },
    },
}
