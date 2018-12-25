package android.support.constraint.solver;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.fabric.sdk.android.services.common.IdManager;

public class ArrayRow implements Row {
    float constantValue = BitmapDescriptorFactory.HUE_RED;
    boolean isSimpleDefinition = false;
    boolean used = false;
    SolverVariable variable = null;
    public final ArrayLinkedVariables variables;

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public final ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        Object obj = null;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                obj = 1;
            }
            this.constantValue = (float) i;
        }
        if (obj == null) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public final ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        Object obj = null;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                obj = 1;
            }
            this.constantValue = (float) i;
        }
        if (obj == null) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public final ArrayRow createRowEqualMatchDimensions(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            if (f != f3) {
                f = (f / f2) / (f3 / f2);
                this.constantValue = BitmapDescriptorFactory.HUE_RED;
                this.variables.put(solverVariable, 1.0f);
                this.variables.put(solverVariable2, -1.0f);
                this.variables.put(solverVariable4, f);
                this.variables.put(solverVariable3, -f);
                return this;
            }
        }
        this.constantValue = BitmapDescriptorFactory.HUE_RED;
        this.variables.put(solverVariable, 1.0f);
        this.variables.put(solverVariable2, -1.0f);
        this.variables.put(solverVariable4, 1.0f);
        this.variables.put(solverVariable3, -1.0f);
        return this;
    }

    public final ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public final ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    final void pivot(SolverVariable solverVariable) {
        if (this.variable != null) {
            this.variables.put(this.variable, -1.0f);
            this.variable = null;
        }
        float f = -this.variables.remove(solverVariable, true);
        this.variable = solverVariable;
        if (f != 1.0f) {
            this.constantValue /= f;
            this.variables.divideByAmount(f);
        }
    }

    public final SolverVariable getPivotCandidate$117e7e87(boolean[] zArr) {
        return this.variables.getPivotCandidate(zArr, null);
    }

    public final void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = BitmapDescriptorFactory.HUE_RED;
    }

    public final void initFromRow(Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i = 0; i < arrayRow.variables.currentSize; i++) {
                this.variables.add(arrayRow.variables.getVariable(i), arrayRow.variables.getVariableValue(i), true);
            }
        }
    }

    public void addError(SolverVariable solverVariable) {
        float f = 1.0f;
        if (solverVariable.strength != 1) {
            if (solverVariable.strength == 2) {
                f = 1000.0f;
            } else if (solverVariable.strength == 3) {
                f = 1000000.0f;
            } else if (solverVariable.strength == 4) {
                f = 1.0E9f;
            } else if (solverVariable.strength == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    public final SolverVariable getKey() {
        return this.variable;
    }

    public String toString() {
        StringBuilder stringBuilder;
        String stringBuilder2;
        int i;
        String str = "";
        if (this.variable == null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            str = stringBuilder.toString();
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(this.variable);
            str = stringBuilder.toString();
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" = ");
        str = stringBuilder.toString();
        int i2 = 0;
        if (this.constantValue != BitmapDescriptorFactory.HUE_RED) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(this.constantValue);
            stringBuilder2 = stringBuilder.toString();
            i = 1;
        } else {
            stringBuilder2 = str;
            i = 0;
        }
        int i3 = this.variables.currentSize;
        while (i2 < i3) {
            StringBuilder stringBuilder3;
            SolverVariable variable = this.variables.getVariable(i2);
            if (variable != null) {
                float variableValue = this.variables.getVariableValue(i2);
                if (variableValue != BitmapDescriptorFactory.HUE_RED) {
                    String solverVariable = variable.toString();
                    if (i == 0) {
                        if (variableValue < BitmapDescriptorFactory.HUE_RED) {
                            stringBuilder3 = new StringBuilder();
                            stringBuilder3.append(stringBuilder2);
                            stringBuilder3.append("- ");
                            stringBuilder2 = stringBuilder3.toString();
                            variableValue = -variableValue;
                        }
                    } else if (variableValue > BitmapDescriptorFactory.HUE_RED) {
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(stringBuilder2);
                        stringBuilder3.append(" + ");
                        stringBuilder2 = stringBuilder3.toString();
                    } else {
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(stringBuilder2);
                        stringBuilder3.append(" - ");
                        stringBuilder2 = stringBuilder3.toString();
                        variableValue = -variableValue;
                    }
                    if (variableValue == 1.0f) {
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(stringBuilder2);
                        stringBuilder3.append(solverVariable);
                        str = stringBuilder3.toString();
                    } else {
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append(stringBuilder2);
                        stringBuilder3.append(variableValue);
                        stringBuilder3.append(" ");
                        stringBuilder3.append(solverVariable);
                        str = stringBuilder3.toString();
                    }
                    stringBuilder2 = str;
                    i = 1;
                }
            }
            i2++;
        }
        if (i != 0) {
            return stringBuilder2;
        }
        stringBuilder3 = new StringBuilder();
        stringBuilder3.append(stringBuilder2);
        stringBuilder3.append(IdManager.DEFAULT_VERSION_NAME);
        return stringBuilder3.toString();
    }
}
