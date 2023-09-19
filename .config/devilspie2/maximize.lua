-------------------------------------------
--Maximize windows by default, this makes--
--window management much easier for me.----
-------------------------------------------

if (get_window_type() == "WINDOW_TYPE_NORMAL" and not string.match(get_window_property("_NET_WM_STATE"),"_NET_WM_STATE_SKIP_PAGER") ) then
    maximize();
end
