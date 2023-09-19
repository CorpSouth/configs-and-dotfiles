-----------------------------------------------------
--Keeps selected windows on top regardless of focus--
-----------------------------------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Pavucontrol") then
    set_window_above();
end

if (get_window_class() == "Xfce4-appfinder") then
    set_window_above();
end
