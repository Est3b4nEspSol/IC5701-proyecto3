package generated;

import java.util.*;

public class SymTable {

    private Stack<Map<String, SymInfo>> scopes = new Stack<>();

    public SymTable() {
        enterScope(); // ámbito global
    }

    public void enterScope() {
        scopes.push(new HashMap<>());
    }

    public void exitScope() {
        scopes.pop();
    }

    public void insert(SymInfo sym) {
        scopes.peek().put(sym.name, sym);
    }

    public SymInfo lookup(String name) {
        for (int i = scopes.size() - 1; i >= 0; i--) {
            SymInfo s = scopes.get(i).get(name);
            if (s != null) return s;
        }
        return null;
    }

    public void print() {
        System.out.println("===== TABLA DE SÍMBOLOS (SINTÁCTICA) =====");
        for (Map<String, SymInfo> scope : scopes) {
            for (SymInfo s : scope.values()) {
                System.out.println(s);
            }
        }
    }


}
