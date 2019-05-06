{ Calculate square root by the Babylonian method }

program SquareRoot:

	{ Target value }
	n := 1024

	{ Terminate when change in solution is less than tolerance }
	tol := 0

	{ Initial guess }
	guess := 1
	old_guess := 0
	diff := guess - old_guess

	while diff > tol:
        old_guess := guess
        guess := (n / guess + guess) / 2
        print guess

        { Absolute value of change in solution }
        diff := guess - old_guess
        if diff < 0:
        	diff := -diff
        end
	end

	print guess
end