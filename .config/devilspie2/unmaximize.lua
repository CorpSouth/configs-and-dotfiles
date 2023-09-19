--------------------------------------------------------------------------------
--The rule set in $HOME/.config/devilspie2/maximize.lua is enforced by default,-
--but you may not want EVERY window maximized. This file is to set exceptions.--
--There is probably a code-correct way to deal with this, but I dunno.----------
--------------------------------------------------------------------------------
--APPLICATION NAME--
--------------------

if (get_application_name() == "wrapper-2.0") then
    unmaximize();
end

if (get_application_name() == "xfce4-panel") then
    unmaximize();
end

----------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Pavucontrol") then
    unmaximize();
end

if (get_window_class() == "Xfce4-appfinder") then
    unmaximize();
end

---------------
--WINDOW ROLE--
---------------

if (get_window_role() == "About") then
    unmaximize();
end