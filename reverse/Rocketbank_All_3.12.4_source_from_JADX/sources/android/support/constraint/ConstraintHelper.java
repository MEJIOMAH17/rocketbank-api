package android.support.constraint;

import android.content.Context;
import android.graphics.Canvas;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.support.constraint.solver.widgets.Helper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.Arrays;

public abstract class ConstraintHelper extends View {
    protected int mCount = 0;
    protected Helper mHelperWidget = null;
    protected int[] mIds = new int[32];
    private String mReferenceIds;
    protected boolean mUseViewMeasure = false;
    protected Context myContext;

    public void onDraw(Canvas canvas) {
    }

    public void updatePostLayout$1127aab3() {
    }

    public ConstraintHelper(Context context) {
        super(context);
        this.myContext = context;
        init(null);
    }

    protected void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            attributeSet = getContext().obtainStyledAttributes(attributeSet, C0887R.styleable.ConstraintLayout_Layout);
            int indexCount = attributeSet.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = attributeSet.getIndex(i);
                if (index == C0887R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.mReferenceIds = attributeSet.getString(index);
                    setIds(this.mReferenceIds);
                }
            }
        }
    }

    public final int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    public final void setReferencedIds(int[] iArr) {
        int i = 0;
        this.mCount = 0;
        while (i < iArr.length) {
            setTag(iArr[i], null);
            i++;
        }
    }

    public void setTag(int i, Object obj) {
        if (this.mCount + 1 > this.mIds.length) {
            this.mIds = Arrays.copyOf(this.mIds, this.mIds.length << 1);
        }
        this.mIds[this.mCount] = i;
        this.mCount++;
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public final void validateParams() {
        if (this.mHelperWidget != null) {
            LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).widget = this.mHelperWidget;
            }
        }
    }

    private void addID(java.lang.String r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        if (r5 != 0) goto L_0x0003;
    L_0x0002:
        return;
    L_0x0003:
        r0 = r4.myContext;
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return;
    L_0x0008:
        r5 = r5.trim();
        r0 = 0;
        r1 = 0;
        r2 = android.support.constraint.C0887R.id.class;	 Catch:{ Exception -> 0x0019 }
        r2 = r2.getField(r5);	 Catch:{ Exception -> 0x0019 }
        r2 = r2.getInt(r1);	 Catch:{ Exception -> 0x0019 }
        r0 = r2;
    L_0x0019:
        if (r0 != 0) goto L_0x002d;
    L_0x001b:
        r0 = r4.myContext;
        r0 = r0.getResources();
        r2 = "id";
        r3 = r4.myContext;
        r3 = r3.getPackageName();
        r0 = r0.getIdentifier(r5, r2, r3);
    L_0x002d:
        if (r0 != 0) goto L_0x0053;
    L_0x002f:
        r2 = r4.isInEditMode();
        if (r2 == 0) goto L_0x0053;
    L_0x0035:
        r2 = r4.getParent();
        r2 = r2 instanceof android.support.constraint.ConstraintLayout;
        if (r2 == 0) goto L_0x0053;
    L_0x003d:
        r2 = r4.getParent();
        r2 = (android.support.constraint.ConstraintLayout) r2;
        r2 = r2.getDesignInformation$6ae075e8(r5);
        if (r2 == 0) goto L_0x0053;
    L_0x0049:
        r3 = r2 instanceof java.lang.Integer;
        if (r3 == 0) goto L_0x0053;
    L_0x004d:
        r2 = (java.lang.Integer) r2;
        r0 = r2.intValue();
    L_0x0053:
        if (r0 == 0) goto L_0x0059;
    L_0x0055:
        r4.setTag(r0, r1);
        return;
    L_0x0059:
        r0 = "ConstraintHelper";
        r1 = new java.lang.StringBuilder;
        r2 = "Could not find id of \"";
        r1.<init>(r2);
        r1.append(r5);
        r5 = "\"";
        r1.append(r5);
        r5 = r1.toString();
        android.util.Log.w(r0, r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.ConstraintHelper.addID(java.lang.String):void");
    }

    private void setIds(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    addID(str.substring(i));
                    return;
                } else {
                    addID(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        if (this.mHelperWidget != null) {
            this.mHelperWidget.removeAllIds();
            for (int i = 0; i < this.mCount; i++) {
                View findViewById = constraintLayout.findViewById(this.mIds[i]);
                if (findViewById != null) {
                    Helper helper = this.mHelperWidget;
                    ConstraintWidget constraintWidget = findViewById == constraintLayout ? constraintLayout.mLayoutWidget : findViewById == null ? null : ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).widget;
                    helper.add(constraintWidget);
                }
            }
        }
    }
}
