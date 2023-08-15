##############
#Backup Files#
##############

function backup --argument filename
    cp $filename $filename.bak
end
