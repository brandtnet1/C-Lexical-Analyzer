{ Return a function from a subroutine }

program FirstClassFunction:

    sub create():
        sub inner():
            print "Inner function."
        end

        return inner
    end

    f := create()
    f()
end