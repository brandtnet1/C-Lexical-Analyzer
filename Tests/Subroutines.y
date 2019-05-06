{ Example of calling subroutines }

{ The basic language supports only global variables
  and no subroutine arguments }

program Subroutines:

    sub double():
        a := a * 2  { a is a global variable }
    end

    sub quadruple():
        double()
        double()
    end

    a := 10
    quadruple()
    print a

end