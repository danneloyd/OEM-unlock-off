{
    until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
        sleep 1
    done

    su -c resetprop -n sys.oem_unlock_allowed 0
}&
