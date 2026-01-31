package generated;

import java.util.ArrayList;
import java.util.List;

class SymInfo {
    public String name;
    public String type;
    public SymKind kind;
    public int line;
    public int column;

    public int offset;          // Desplazamiento en la pila
    public int paramCount;      // Número de parámetros (para funciones)
    public List<String> paramTypes; // Tipos de parámetros

    public SymInfo(String name, String type, SymKind kind, int line, int column) {
        this.name = name;
        this.type = type;
        this.kind = kind;
        this.line = line;
        this.column = column;
        this.offset = 0;
        this.paramCount = 0;
        this.paramTypes = new ArrayList<>();
    }

    @Override
    public String toString() {
        return type + " " + kind + " " + name +
                " (línea " + line + ", col " + column + ")";
    }
}


enum SymKind {
    FUNCTION,
    PARAM,
    LOCAL_VAR,
    GLOBAL_VAR,
    GLOBAL_ARRAY,
    LOCAL_ARRAY,
    FOR_VAR
}

