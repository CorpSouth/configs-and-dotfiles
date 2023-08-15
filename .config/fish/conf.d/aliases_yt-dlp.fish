#############################################################
#Yt-dlp, the command line interface YouTube video downloader#
#############################################################

if status is-interactive

    if type -q yt-dlp
        alias ytmp4='yt-dlp -f "bestvideo&#91;ext=mp4]+bestaudio&#91;ext=m4a]/best&#91;ext=mp4]/best"'
        alias ytmkv='yt-dlp -f "bestvideo&#91;ext=mkv]+bestaudio&#91;ext=mka]/best&#91;ext=mkv]/best"'    	
    end

end


