package generated;

 class SymInfo {
    public String name;
    public SymKind kind;
    public int line;
    public int column;

    public SymInfo(String name, SymKind kind, int line, int column) {
        this.name = name;
        this.kind = kind;
        this.line = line;
        this.column = column;
    }

    @Override
    public String toString() {
        return kind + " " + name +
                " (línea " + line + ", col " + column + ")";
    }
}


enum SymKind {
    FUNCTION,
    PARAM,
    LOCAL_VAR,
    GLOBAL_VAR,
    GLOBAL_ARRAY,
    LOCAL_ARRAY
}