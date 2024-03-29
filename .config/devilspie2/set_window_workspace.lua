-----------------------------------------------------------
--I like to have applications open on specific workspace,--
--to make it easier to categorize my tasks-----------------
-----------------------------------------------------------
--Workspace #1: BrowserMail--
-----------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "firefox") then
    set_window_workspace(1);
end

if (get_window_class() == "thunderbird") then
    set_window_workspace(1);
end

if (get_window_class() == "Tor Browser") then
    set_window_workspace(1);
end

--------------------------------
--Workspace #2: Communications--
--------------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "discord") then
    set_window_workspace(2);
end

if (get_window_class() == "TelegramDesktop") then
    set_window_workspace(2);
end

-------------------------------
--Workspace #3: Entertainment--
-------------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Exfalso") then
    set_window_workspace(3);
end

if (get_window_class() == "FreeTube") then
    set_window_workspace(3);
end 

if (get_window_class() == "mpv") then
    set_window_workspace(3);                                                                                                                                   
end

if (get_window_class() == "Parole") then
    set_window_workspace(3);
end

if (get_window_class() == "Quodlibet") then
    set_window_workspace(3);
end

------------------------------
--Workspace #4: Productivity--
------------------------------
--APPLICATION NAME--
--------------------
                                                                                                                                                               
if (get_application_name() == "LibreOffice 7.6") then
    set_window_workspace(4);                                                                                                                                   
end   

----------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Evince") then
    set_window_workspace(4);                                                                                                                                   
end

if (get_window_class() == "Mousepad") then
    set_window_workspace(4);
end

if (get_window_class() == "Qalculate-gtk") then
    set_window_workspace(4);
end

---------------------------
--Workspace #5: Utilities--
---------------------------
--WINDOW CLASS--
----------------

if (get_window_class() == "Blueman-adapters") then
    set_window_workspace(5);
end

if (get_window_class() == "Blueman-applet") then
    set_window_workspace(5);
end

if (get_window_class() == "Blueman-manager") then
    set_window_workspace(5);
end

if (get_window_class() == "Blueman-services") then
    set_window_workspace(5);
end

if (get_window_class() == "File-roller") then
    set_window_workspace(5);
end

if (get_window_class() == "MenuLibre") then
    set_window_workspace(5);
end

if (get_window_class() == "Nm-connection-editor") then
    set_window_workspace(5);
end

if (get_window_class() == "Ristretto") then  
    set_window_workspace(5);
end

if (get_window_class() == "Simple-scan") then
    maximize();
    set_window_workspace(5);
end

if (get_window_class() == "Thunar") then
    set_window_workspace(5);
end

if (get_window_class() == "Thunar-volman-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Timeshift-gtk") then
    set_window_workspace(5);
end

if (get_window_class() == "transmission-gtk") then
    set_window_workspace(5);
end

if (get_window_class() == "Usbimager") then
    set_window_workspace(5);
end

if (get_window_class() == "Xarchiver") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-about") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-accessibility-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-appearance-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-color-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-display-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-keyboard-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-mime-settings") then
    set_window_workspace(5);
end

if  (get_window_class() == "Xfce4-mouse-settings") then
     set_window_workspace(5);
end

if (get_window_class() == "Xfce4-notifyd-config") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-power-manager-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-session-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-settings-editor") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-settings-manager") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfce4-taskmanager") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfdesktop-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfwm4-settings") then
    set_window_workspace(5);
end

if (get_window_class() == "Xfwm4-tweaks-settings") then
    set_window_workspace(5);
end 

if (get_window_class() == "Xfwm4-workspace-settings") then
    set_window_workspace(5);
end

---------------
--WINDOW NAME--
---------------

if (get_window_name() == "Panel Preferences") then
    set_window_workspace(5);
end

--------------------------------
--Workspace #6: Virtualization--
--------------------------------
--WINDOW CLASS--
----------------

if (get_window_name() == "Boxes") then
    set_window_workspace(6);
end
