package generated;

import java.util.*;

public class SymTable {

    private Stack<Map<String, SymInfo>> scopes = new Stack<>();
    private ArrayList<Map<String, SymInfo>> todo = new ArrayList<>() ;
    public SymTable() {
        enterScope(); // ámbito global
    }

    public void enterScope() {
        scopes.push(new HashMap<>());
    }

    public int lenScopes(){
        return scopes.size();
    }
    public void exitScope() {
        if (!scopes.isEmpty()) {
            todo.add(scopes.pop());
        }
    }

    public Map<String, SymInfo> currentScope() {
        if (scopes.isEmpty()) return new HashMap<>();
        return scopes.peek();
    }
    //Busca solo en el scope actual
    public SymInfo lookupLocal(String name) {
        if (scopes.isEmpty()) return null;
        return scopes.peek().get(name);
    }

    public SymInfo lookup(String name) {
        for (int i = scopes.size() - 1; i >= 0; i--) {
            SymInfo sym = scopes.get(i).get(name);
            if (sym != null) return sym;
        }
        return null;
    }

    public boolean insert(SymInfo sym) {
        if (scopes.isEmpty()) {
            enterScope();
        }

        // Verificar duplicado en scope actual
        if (lookupLocal(sym.name) != null) {
            return false;
        }

        scopes.peek().put(sym.name, sym);
        return true;
    }


    public void print() {
        System.out.println("===== TABLA DE SÍMBOLOS =====");
        System.out.println("--- Scopes Activos ---");
        for (int i = 0; i < scopes.size(); i++) {
            System.out.println("  Scope nivel " + i + ":");
            for (SymInfo s : scopes.get(i).values()) {
                System.out.println("    " + s);
            }
        }
        System.out.println("--- Scopes Cerrados ---");
        for (int i = 0; i < todo.size(); i++) {
            System.out.println("  Scope histórico " + i + ":");
            for (SymInfo s : todo.get(i).values()) {
                System.out.println("    " + s);
            }
        }
    }
}



