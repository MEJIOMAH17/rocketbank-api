package android.support.constraint.solver;

public final class Cache {
    Pool<ArrayRow> arrayRowPool = new SimplePool();
    SolverVariable[] mIndexedVariables = new SolverVariable[32];
    Pool<SolverVariable> solverVariablePool = new SimplePool();
}
