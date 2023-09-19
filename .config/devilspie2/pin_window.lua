--------------------------------------------
--Pinned windows persist across workspaces--
--------------------------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Pavucontrol") then
    pin_window();
end

if (get_window_class() == "Xfce4-appfinder") then
    pin_window();
end
