package android.support.constraint.solver;

import android.support.compat.C0886R;
import android.support.constraint.solver.SolverVariable.Type;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintWidget;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;

public final class LinearSystem {
    private static int POOL_SIZE = 1000;
    public static C0886R sMetrics$4d61556e;
    private int TABLE_SIZE;
    public boolean graphOptimizer;
    private boolean[] mAlreadyTestedCandidates;
    final Cache mCache;
    private Row mGoal;
    private int mMaxColumns;
    private int mMaxRows;
    int mNumColumns;
    int mNumRows;
    private SolverVariable[] mPoolVariables;
    private int mPoolVariablesCount;
    ArrayRow[] mRows;
    private final Row mTempGoal;
    private HashMap<String, SolverVariable> mVariables;
    int mVariablesID;
    private ArrayRow[] tempClientsCopy;

    interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate$117e7e87(boolean[] zArr);

        void initFromRow(Row row);
    }

    public static C0886R getMetrics$51a36633() {
        return null;
    }

    public LinearSystem() {
        this.mVariablesID = 0;
        this.mVariables = null;
        this.TABLE_SIZE = 32;
        this.mMaxColumns = this.TABLE_SIZE;
        this.mRows = null;
        this.graphOptimizer = false;
        this.mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
        this.mNumColumns = 1;
        this.mNumRows = 0;
        this.mMaxRows = this.TABLE_SIZE;
        this.mPoolVariables = new SolverVariable[POOL_SIZE];
        this.mPoolVariablesCount = 0;
        this.tempClientsCopy = new ArrayRow[this.TABLE_SIZE];
        this.mRows = new ArrayRow[this.TABLE_SIZE];
        releaseRows();
        this.mCache = new Cache();
        this.mGoal = new GoalRow(this.mCache);
        this.mTempGoal = new ArrayRow(this.mCache);
    }

    private void increaseTableSize() {
        this.TABLE_SIZE <<= 1;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, this.TABLE_SIZE);
        this.mCache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(this.mCache.mIndexedVariables, this.TABLE_SIZE);
        this.mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
        this.mMaxColumns = this.TABLE_SIZE;
        this.mMaxRows = this.TABLE_SIZE;
    }

    private void releaseRows() {
        for (int i = 0; i < this.mRows.length; i++) {
            Object obj = this.mRows[i];
            if (obj != null) {
                this.mCache.arrayRowPool.release(obj);
            }
            this.mRows[i] = null;
        }
    }

    public final void reset() {
        int i;
        for (SolverVariable solverVariable : this.mCache.mIndexedVariables) {
            if (solverVariable != null) {
                solverVariable.reset();
            }
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, null);
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (i = 0; i < this.mNumRows; i++) {
            this.mRows[i].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
    }

    public final SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable$3da49f8c();
                solverVariable = constraintAnchor.getSolverVariable();
            }
            if (solverVariable.id == -1 || solverVariable.id > this.mVariablesID || this.mCache.mIndexedVariables[solverVariable.id] == null) {
                if (solverVariable.id != -1) {
                    solverVariable.reset();
                }
                this.mVariablesID++;
                this.mNumColumns++;
                solverVariable.id = this.mVariablesID;
                solverVariable.mType = Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
            }
        }
        return solverVariable;
    }

    public final ArrayRow createRow() {
        ArrayRow arrayRow = (ArrayRow) this.mCache.arrayRowPool.acquire();
        if (arrayRow == null) {
            arrayRow = new ArrayRow(this.mCache);
        } else {
            arrayRow.variable = null;
            arrayRow.variables.clear();
            arrayRow.constantValue = BitmapDescriptorFactory.HUE_RED;
            arrayRow.isSimpleDefinition = false;
        }
        SolverVariable.increaseErrorId();
        return arrayRow;
    }

    private SolverVariable createSlackVariable() {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable$530b569b = acquireSolverVariable$530b569b(Type.SLACK);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable$530b569b.id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable$530b569b;
        return acquireSolverVariable$530b569b;
    }

    private SolverVariable createErrorVariable$2069e034(int i) {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable$530b569b = acquireSolverVariable$530b569b(Type.ERROR);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable$530b569b.id = this.mVariablesID;
        acquireSolverVariable$530b569b.strength = i;
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable$530b569b;
        this.mGoal.addError(acquireSolverVariable$530b569b);
        return acquireSolverVariable$530b569b;
    }

    private SolverVariable acquireSolverVariable$530b569b(Type type) {
        SolverVariable solverVariable = (SolverVariable) this.mCache.solverVariablePool.acquire();
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type);
            solverVariable.mType = type;
        } else {
            solverVariable.reset();
            solverVariable.mType = type;
        }
        if (this.mPoolVariablesCount >= POOL_SIZE) {
            POOL_SIZE <<= 1;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, POOL_SIZE);
        }
        type = this.mPoolVariables;
        int i = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i + 1;
        type[i] = solverVariable;
        return solverVariable;
    }

    public static int getObjectVariableValue(Object obj) {
        obj = ((ConstraintAnchor) obj).getSolverVariable();
        return obj != null ? (int) (obj.computedValue + 0.5f) : null;
    }

    public final void minimize() throws Exception {
        if (this.graphOptimizer) {
            Object obj = null;
            for (int i = 0; i < this.mNumRows; i++) {
                if (!this.mRows[i].isSimpleDefinition) {
                    break;
                }
            }
            obj = 1;
            if (obj == null) {
                Row row = this.mGoal;
                updateRowFromVariables((ArrayRow) row);
                enforceBFS$4e0f517d();
                optimize$73da29c9(row);
                computeValues();
                return;
            }
            computeValues();
            return;
        }
        row = this.mGoal;
        updateRowFromVariables((ArrayRow) row);
        enforceBFS$4e0f517d();
        optimize$73da29c9(row);
        computeValues();
    }

    private final void updateRowFromVariables(ArrayRow arrayRow) {
        if (this.mNumRows > 0) {
            arrayRow.variables.updateFromSystem(arrayRow, this.mRows);
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
            }
        }
    }

    public final void addConstraint(ArrayRow arrayRow) {
        if (arrayRow != null) {
            boolean z;
            boolean z2 = true;
            if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
                increaseTableSize();
            }
            if (arrayRow.isSimpleDefinition) {
                z = false;
            } else {
                updateRowFromVariables(arrayRow);
                z = arrayRow.variable == null && arrayRow.constantValue == BitmapDescriptorFactory.HUE_RED && arrayRow.variables.currentSize == 0;
                if (!z) {
                    if (arrayRow.constantValue < BitmapDescriptorFactory.HUE_RED) {
                        arrayRow.constantValue = -arrayRow.constantValue;
                        arrayRow.variables.invert();
                    }
                    SolverVariable chooseSubject$74f079fa = arrayRow.variables.chooseSubject$74f079fa();
                    if (chooseSubject$74f079fa == null) {
                        z = true;
                    } else {
                        arrayRow.pivot(chooseSubject$74f079fa);
                        z = false;
                    }
                    if (arrayRow.variables.currentSize == 0) {
                        arrayRow.isSimpleDefinition = true;
                    }
                    if (z) {
                        if (this.mNumColumns + 1 >= this.mMaxColumns) {
                            increaseTableSize();
                        }
                        chooseSubject$74f079fa = acquireSolverVariable$530b569b(Type.SLACK);
                        this.mVariablesID++;
                        this.mNumColumns++;
                        chooseSubject$74f079fa.id = this.mVariablesID;
                        this.mCache.mIndexedVariables[this.mVariablesID] = chooseSubject$74f079fa;
                        arrayRow.variable = chooseSubject$74f079fa;
                        addRow(arrayRow);
                        this.mTempGoal.initFromRow(arrayRow);
                        optimize$73da29c9(this.mTempGoal);
                        if (chooseSubject$74f079fa.definitionId == -1) {
                            if (arrayRow.variable == chooseSubject$74f079fa) {
                                chooseSubject$74f079fa = arrayRow.variables.getPivotCandidate(null, chooseSubject$74f079fa);
                                if (chooseSubject$74f079fa != null) {
                                    arrayRow.pivot(chooseSubject$74f079fa);
                                }
                            }
                            if (!arrayRow.isSimpleDefinition) {
                                arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
                            }
                            this.mNumRows--;
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                    if (arrayRow.variable != null) {
                        if (arrayRow.variable.mType != Type.UNRESTRICTED) {
                            if (arrayRow.constantValue >= BitmapDescriptorFactory.HUE_RED) {
                            }
                        }
                        if (!z2) {
                            return;
                        }
                    }
                    z2 = false;
                    if (z2) {
                        return;
                    }
                }
                return;
            }
            if (!z) {
                addRow(arrayRow);
            }
        }
    }

    private final void addRow(ArrayRow arrayRow) {
        if (this.mRows[this.mNumRows] != null) {
            this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
        }
        this.mRows[this.mNumRows] = arrayRow;
        arrayRow.variable.definitionId = this.mNumRows;
        this.mNumRows++;
        arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
    }

    private final int optimize$73da29c9(Row row) {
        for (int i = 0; i < this.mNumColumns; i++) {
            this.mAlreadyTestedCandidates[i] = false;
        }
        boolean z = false;
        int i2 = z;
        while (!z) {
            i2++;
            if (i2 >= 2 * this.mNumColumns) {
                return i2;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().id] = true;
            }
            SolverVariable pivotCandidate$117e7e87 = row.getPivotCandidate$117e7e87(this.mAlreadyTestedCandidates);
            if (pivotCandidate$117e7e87 != null) {
                if (this.mAlreadyTestedCandidates[pivotCandidate$117e7e87.id]) {
                    return i2;
                }
                this.mAlreadyTestedCandidates[pivotCandidate$117e7e87.id] = true;
            }
            if (pivotCandidate$117e7e87 != null) {
                float f = Float.MAX_VALUE;
                int i3 = -1;
                for (int i4 = 0; i4 < this.mNumRows; i4++) {
                    ArrayRow arrayRow = this.mRows[i4];
                    if (!(arrayRow.variable.mType == Type.UNRESTRICTED || arrayRow.isSimpleDefinition || !arrayRow.variables.containsKey(pivotCandidate$117e7e87))) {
                        float f2 = arrayRow.variables.get(pivotCandidate$117e7e87);
                        if (f2 < BitmapDescriptorFactory.HUE_RED) {
                            float f3 = (-arrayRow.constantValue) / f2;
                            if (f3 < f) {
                                i3 = i4;
                                f = f3;
                            }
                        }
                    }
                }
                if (i3 >= 0) {
                    ArrayRow arrayRow2 = this.mRows[i3];
                    arrayRow2.variable.definitionId = -1;
                    arrayRow2.pivot(pivotCandidate$117e7e87);
                    arrayRow2.variable.definitionId = i3;
                    arrayRow2.variable.updateReferencesWithNewDefinition(arrayRow2);
                }
            }
            z = true;
        }
        return i2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int enforceBFS$4e0f517d() throws java.lang.Exception {
        /*
        r19 = this;
        r0 = r19;
        r2 = 0;
    L_0x0003:
        r3 = r0.mNumRows;
        r4 = 0;
        r5 = 1;
        if (r2 >= r3) goto L_0x0024;
    L_0x0009:
        r3 = r0.mRows;
        r3 = r3[r2];
        r3 = r3.variable;
        r3 = r3.mType;
        r6 = android.support.constraint.solver.SolverVariable.Type.UNRESTRICTED;
        if (r3 == r6) goto L_0x0021;
    L_0x0015:
        r3 = r0.mRows;
        r3 = r3[r2];
        r3 = r3.constantValue;
        r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1));
        if (r3 >= 0) goto L_0x0021;
    L_0x001f:
        r2 = r5;
        goto L_0x0025;
    L_0x0021:
        r2 = r2 + 1;
        goto L_0x0003;
    L_0x0024:
        r2 = 0;
    L_0x0025:
        if (r2 == 0) goto L_0x00b9;
    L_0x0027:
        r2 = 0;
        r3 = 0;
    L_0x0029:
        if (r2 != 0) goto L_0x00b6;
    L_0x002b:
        r3 = r3 + 1;
        r6 = 2139095039; // 0x7f7fffff float:3.4028235E38 double:1.056853372E-314;
        r7 = -1;
        r10 = r6;
        r8 = r7;
        r9 = r8;
        r6 = 0;
        r11 = 0;
    L_0x0036:
        r12 = r0.mNumRows;
        if (r6 >= r12) goto L_0x0095;
    L_0x003a:
        r12 = r0.mRows;
        r12 = r12[r6];
        r13 = r12.variable;
        r13 = r13.mType;
        r14 = android.support.constraint.solver.SolverVariable.Type.UNRESTRICTED;
        if (r13 == r14) goto L_0x0091;
    L_0x0046:
        r13 = r12.isSimpleDefinition;
        if (r13 != 0) goto L_0x0091;
    L_0x004a:
        r13 = r12.constantValue;
        r13 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1));
        if (r13 >= 0) goto L_0x0091;
    L_0x0050:
        r13 = r11;
        r11 = r10;
        r10 = r9;
        r9 = r8;
        r8 = r5;
    L_0x0055:
        r14 = r0.mNumColumns;
        if (r8 >= r14) goto L_0x008d;
    L_0x0059:
        r14 = r0.mCache;
        r14 = r14.mIndexedVariables;
        r14 = r14[r8];
        r15 = r12.variables;
        r15 = r15.get(r14);
        r16 = (r15 > r4 ? 1 : (r15 == r4 ? 0 : -1));
        if (r16 <= 0) goto L_0x0089;
    L_0x0069:
        r1 = r13;
        r13 = r11;
        r11 = r10;
        r10 = r9;
        r9 = 0;
    L_0x006e:
        r4 = 7;
        if (r9 >= r4) goto L_0x0085;
    L_0x0071:
        r4 = r14.strengthVector;
        r4 = r4[r9];
        r4 = r4 / r15;
        r16 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1));
        if (r16 >= 0) goto L_0x007c;
    L_0x007a:
        if (r9 == r1) goto L_0x007e;
    L_0x007c:
        if (r9 <= r1) goto L_0x0082;
    L_0x007e:
        r13 = r4;
        r10 = r6;
        r11 = r8;
        r1 = r9;
    L_0x0082:
        r9 = r9 + 1;
        goto L_0x006e;
    L_0x0085:
        r9 = r10;
        r10 = r11;
        r11 = r13;
        r13 = r1;
    L_0x0089:
        r8 = r8 + 1;
        r4 = 0;
        goto L_0x0055;
    L_0x008d:
        r8 = r9;
        r9 = r10;
        r10 = r11;
        r11 = r13;
    L_0x0091:
        r6 = r6 + 1;
        r4 = 0;
        goto L_0x0036;
    L_0x0095:
        if (r8 == r7) goto L_0x00b4;
    L_0x0097:
        r1 = r0.mRows;
        r1 = r1[r8];
        r4 = r1.variable;
        r4.definitionId = r7;
        r4 = r0.mCache;
        r4 = r4.mIndexedVariables;
        r4 = r4[r9];
        r1.pivot(r4);
        r4 = r1.variable;
        r4.definitionId = r8;
        r4 = r1.variable;
        r4.updateReferencesWithNewDefinition(r1);
    L_0x00b1:
        r4 = 0;
        goto L_0x0029;
    L_0x00b4:
        r2 = r5;
        goto L_0x00b1;
    L_0x00b6:
        r17 = r3;
        goto L_0x00bb;
    L_0x00b9:
        r17 = 0;
    L_0x00bb:
        return r17;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.LinearSystem.enforceBFS$4e0f517d():int");
    }

    private void computeValues() {
        for (int i = 0; i < this.mNumRows; i++) {
            ArrayRow arrayRow = this.mRows[i];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public final Cache getCache() {
        return this.mCache;
    }

    public final void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 6) {
            solverVariable = (int) (-1082130432 * createRow.variables.get(createSlackVariable));
            createRow.variables.put(createErrorVariable$2069e034(i2), (float) solverVariable);
        }
        addConstraint(createRow);
    }

    public final void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, 0);
        if (z) {
            solverVariable = (int) (-1082130432 * createRow.variables.get(createSlackVariable));
            createRow.variables.put(createErrorVariable$2069e034(1), (float) solverVariable);
        }
        addConstraint(createRow);
    }

    public final void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 6) {
            solverVariable = (int) (-1082130432 * createRow.variables.get(createSlackVariable));
            createRow.variables.put(createErrorVariable$2069e034(i2), (float) solverVariable);
        }
        addConstraint(createRow);
    }

    public final void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, 0);
        if (z) {
            solverVariable = (int) (-1082130432 * createRow.variables.get(createSlackVariable));
            createRow.variables.put(createErrorVariable$2069e034(1), (float) solverVariable);
        }
        addConstraint(createRow);
    }

    public final void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow createRow = createRow();
        if (solverVariable2 == solverVariable3) {
            createRow.variables.put(solverVariable, 1.0f);
            createRow.variables.put(solverVariable4, 1.0f);
            createRow.variables.put(solverVariable2, -1073741824);
        } else if (f == 0.5f) {
            createRow.variables.put(solverVariable, 1.0f);
            createRow.variables.put(solverVariable2, -1.0f);
            createRow.variables.put(solverVariable3, -1.0f);
            createRow.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                createRow.constantValue = (float) ((-i) + i2);
            }
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            createRow.variables.put(solverVariable, -1.0f);
            createRow.variables.put(solverVariable2, 1.0f);
            createRow.constantValue = (float) i;
        } else if (f >= 1.0f) {
            createRow.variables.put(solverVariable3, -1.0f);
            createRow.variables.put(solverVariable4, 1.0f);
            createRow.constantValue = (float) i2;
        } else {
            float f2 = 1.0f - f;
            createRow.variables.put(solverVariable, 1.0f * f2);
            createRow.variables.put(solverVariable2, -1.0f * f2);
            createRow.variables.put(solverVariable3, -1082130432 * f);
            createRow.variables.put(solverVariable4, f);
            if (i > 0 || i2 > 0) {
                createRow.constantValue = (((float) (-i)) * f2) + (((float) i2) * f);
            }
        }
        if (i3 != 6) {
            createRow.variables.put(createErrorVariable$2069e034(i3), 1.0f);
            createRow.variables.put(createErrorVariable$2069e034(i3), -1.0f);
        }
        addConstraint(createRow);
    }

    public final void addRatio$76df2730(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        ArrayRow createRow = createRow();
        createRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        addConstraint(createRow);
    }

    public final ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        Object obj = null;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                obj = 1;
            }
            createRow.constantValue = (float) i;
        }
        if (obj == null) {
            createRow.variables.put(solverVariable, -1.0f);
            createRow.variables.put(solverVariable2, 1.0f);
        } else {
            createRow.variables.put(solverVariable, 1.0f);
            createRow.variables.put(solverVariable2, -1.0f);
        }
        if (i2 != 6) {
            createRow.variables.put(createErrorVariable$2069e034(i2), 1.0f);
            createRow.variables.put(createErrorVariable$2069e034(i2), -1.0f);
        }
        addConstraint(createRow);
        return createRow;
    }

    public final void addEquality(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.definitionId;
        ArrayRow arrayRow;
        if (solverVariable.definitionId != -1) {
            arrayRow = this.mRows[i2];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = (float) i;
                return;
            } else if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
                arrayRow.constantValue = (float) i;
                return;
            } else {
                arrayRow = createRow();
                if (i < 0) {
                    arrayRow.constantValue = (float) (-1 * i);
                    arrayRow.variables.put(solverVariable, 1.0f);
                } else {
                    arrayRow.constantValue = (float) i;
                    arrayRow.variables.put(solverVariable, -1.0f);
                }
                addConstraint(arrayRow);
                return;
            }
        }
        arrayRow = createRow();
        arrayRow.variable = solverVariable;
        i = (float) i;
        solverVariable.computedValue = i;
        arrayRow.constantValue = i;
        arrayRow.isSimpleDefinition = true;
        addConstraint(arrayRow);
    }

    public static ArrayRow createRowDimensionPercent$16ecd2a2(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f) {
        linearSystem = linearSystem.createRow();
        linearSystem.variables.put(solverVariable, -1.0f);
        linearSystem.variables.put(solverVariable2, 1.0f - f);
        linearSystem.variables.put(solverVariable3, f);
        return linearSystem;
    }

    public final void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        ConstraintWidget constraintWidget3 = constraintWidget;
        ConstraintWidget constraintWidget4 = constraintWidget2;
        SolverVariable createObjectVariable = createObjectVariable(constraintWidget3.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable createObjectVariable2 = createObjectVariable(constraintWidget3.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable createObjectVariable3 = createObjectVariable(constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable createObjectVariable4 = createObjectVariable(constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM));
        SolverVariable createObjectVariable5 = createObjectVariable(constraintWidget4.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable createObjectVariable6 = createObjectVariable(constraintWidget4.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable createObjectVariable7 = createObjectVariable(constraintWidget4.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable createObjectVariable8 = createObjectVariable(constraintWidget4.getAnchor(ConstraintAnchor.Type.BOTTOM));
        ArrayRow createRow = createRow();
        double d = (double) f;
        SolverVariable solverVariable = createObjectVariable3;
        double d2 = (double) i;
        SolverVariable solverVariable2 = createObjectVariable7;
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (Math.sin(d) * d2));
        addConstraint(createRow);
        createRow = createRow();
        createRow.createRowWithAngle(createObjectVariable, solverVariable, createObjectVariable5, solverVariable2, (float) (Math.cos(d) * d2));
        addConstraint(createRow);
    }
}
