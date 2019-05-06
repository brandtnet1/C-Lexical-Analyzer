enum Tokens {
   AND,
   ASSIGN,
   COLON,
   COMMA,
   END,
   IF,
   LEFT_PAREN,
   MOD,
   NAME,
   NOT,
   FOR,
   OR,
   PRINT,
   PROGRAM,
   RETURN,
   RIGHT_PAREN,
   STRING,
   SUB,
   TO,
   WHILE,
   INTEGER,
   PLUS,
   MINUS,
   TIMES,
   DIVIDE,
   LESS_THAN,
   GREATER_THAN,
   LESS_THAN_OR_EQUAL,
   GREATER_THAN_OR_EQUAL,
   EQUAL,
   NOT_EQUAL,
   EOF,
   UNKNOWN
}

public class Token {
	
	Tokens type;
	
	// Some tokens have associated values:
	// NAME tokens have a string that is the name of the variable
	// STRING tokens have the string
	// NUMBER tokens have the value of the number
	Object value;
	
	int line;
	
	public Token(Tokens type, Object value, int line) {
		this.type = type;
		this.value = value;
		this.line = line;
	}
	
	public Token(Tokens type, int line) {
		this.type = type;
		this.value = null;
		this.line = line;
	}
	
    public String toString() {
        if (this.value != null)
            return "<" + this.type + ", " + this.value + ", " + this.line + ">";
        else
            return "<" + this.type + ", " + this.line + ">";

    }
}