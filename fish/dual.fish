function dual --description 'Turn on/off dual displays'
    switch (count $argv)
	case 0
            usage
	    return 0
	case 2
            usage
	    return 1
    end

    set main eDP-1
    set secondary DVI-I-1-1
    switch $argv[1]
	case off
	    xrandr --output $secondary --off
	case right
	    xrandr --setprovideroutputsource 1 0;
	    and xrandr --output $secondary --auto --right-of $main;
	case left
	    xrandr --setprovideroutputsource 1 0;
	    and xrandr --output $secondary --auto --left-of $main;
	case above
	    xrandr --setprovideroutputsource 1 0;
	    and xrandr --output $secondary --auto --above $main;
	case below
	    xrandr --setprovideroutputsource 1 0;
	    and xrandr --output $secondary --auto --below $main;
	case "*"
            usage
	    return 1
    end

    return 0
end

function usage
    echo "dual off|right|left|above|below"
end
