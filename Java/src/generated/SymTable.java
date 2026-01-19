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


    public void print() {
        System.out.println("===== TABLA DE SÍMBOLOS (SINTÁCTICA) =====");
        for (Map<String, SymInfo> scope : scopes) {
            System.out.println(scope);
            for (SymInfo s : scope.values()) {
                System.out.println(s);
            }
        }
    }


}
