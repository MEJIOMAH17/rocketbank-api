package android.support.constraint.solver;

public final class GoalRow extends ArrayRow {
    public GoalRow(Cache cache) {
        super(cache);
    }

    public final void addError(SolverVariable solverVariable) {
        super.addError(solverVariable);
        solverVariable.usageInRowCount--;
    }
}
