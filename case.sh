#!/bin/bash
case $1 in
    alma | korte | barack )
        echo Gyümölcs!
        ;;
    paprika | uborka )
        echo Zöldség!
        ;;
    *)
        echo "Ezt nem ismerem!"
        ;;
esac
