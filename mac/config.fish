if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch

    # ---------------------------------------------------
    # Everyday Navigation (Powered by lsd)
    # ---------------------------------------------------
    # Fast, heavily icon-based, respects traditional muscle memory
    abbr ls 'lsd'
    abbr ll 'lsd -l'
    abbr la 'lsd -a'
    abbr lla 'lsd -la'

    # ---------------------------------------------------
    # Developer & Git Views (Powered by eza)
    # ---------------------------------------------------
    # Deep inspection, intelligent coloring, and Git awareness
    abbr el 'eza -lh --icons'                 # Standard eza list
    abbr ea 'eza -lah --icons'                # All files, list format
    abbr eg 'eza -lah --git --icons'          # The ultimate Git view: shows file status (M, N, I)
    abbr tree 'eza --tree --icons'            # Replaces the standard 'tree' command
    abbr et 'eza --tree --level=2 --icons'    # Quick 2-level deep tree view
end
