package android.support.constraint.solver.widgets;

import java.util.HashSet;
import java.util.Iterator;
import javax.inject.Provider;
import retrofit2.Retrofit;
import ru.rocketbank.core.dagger.RetrofitModule;
import ru.rocketbank.core.manager.HeaderManager;

public class Chain implements Provider<Retrofit> {
    HashSet<Chain> dependents = new HashSet(2);
    private final Provider<HeaderManager> headerManagerProvider;
    int state = 0;

    public void resolve() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer r51, android.support.constraint.solver.LinearSystem r52, int r53) {
        /*
        r0 = r51;
        r10 = r52;
        r11 = r53;
        r12 = 2;
        if (r11 != 0) goto L_0x0011;
    L_0x0009:
        r1 = r0.mHorizontalChainsSize;
        r2 = r0.mHorizontalChainsArray;
        r9 = r1;
        r14 = r2;
        r15 = 0;
        goto L_0x0018;
    L_0x0011:
        r1 = r0.mVerticalChainsSize;
        r2 = r0.mVerticalChainsArray;
        r9 = r1;
        r14 = r2;
        r15 = r12;
    L_0x0018:
        r8 = 0;
    L_0x0019:
        if (r8 >= r9) goto L_0x057b;
    L_0x001b:
        r7 = r14[r8];
        r1 = 4;
        r1 = r0.optimizeFor(r1);
        if (r1 == 0) goto L_0x0030;
    L_0x0024:
        r1 = android.support.constraint.solver.widgets.Optimizer.applyChainOptimized(r0, r10, r11, r15, r7);
        if (r1 != 0) goto L_0x002b;
    L_0x002a:
        goto L_0x0030;
    L_0x002b:
        r0 = r8;
        r18 = r9;
        goto L_0x0570;
    L_0x0030:
        r2 = r0.mListDimensionBehaviors;
        r2 = r2[r11];
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        r4 = 1;
        if (r2 != r3) goto L_0x003b;
    L_0x0039:
        r2 = r4;
        goto L_0x003c;
    L_0x003b:
        r2 = 0;
    L_0x003c:
        r16 = 0;
        if (r11 != 0) goto L_0x0070;
    L_0x0040:
        r3 = r51.isRtl();
        if (r3 == 0) goto L_0x0070;
    L_0x0046:
        r5 = r7;
        r3 = 0;
    L_0x0048:
        if (r3 != 0) goto L_0x0071;
    L_0x004a:
        r6 = r5.mListAnchors;
        r17 = r15 + 1;
        r6 = r6[r17];
        r6 = r6.mTarget;
        if (r6 == 0) goto L_0x0068;
    L_0x0054:
        r6 = r6.mOwner;
        r1 = r6.mListAnchors;
        r1 = r1[r15];
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x0068;
    L_0x005e:
        r1 = r6.mListAnchors;
        r1 = r1[r15];
        r1 = r1.mTarget;
        r1 = r1.mOwner;
        if (r1 == r5) goto L_0x006a;
    L_0x0068:
        r6 = r16;
    L_0x006a:
        if (r6 == 0) goto L_0x006e;
    L_0x006c:
        r5 = r6;
        goto L_0x0048;
    L_0x006e:
        r3 = r4;
        goto L_0x0048;
    L_0x0070:
        r5 = r7;
    L_0x0071:
        if (r11 != 0) goto L_0x009d;
    L_0x0073:
        r1 = r5.mHorizontalChainStyle;
        if (r1 != 0) goto L_0x0079;
    L_0x0077:
        r1 = r4;
        goto L_0x007a;
    L_0x0079:
        r1 = 0;
    L_0x007a:
        r3 = r5.mHorizontalChainStyle;
        if (r3 != r4) goto L_0x0080;
    L_0x007e:
        r3 = r4;
        goto L_0x0081;
    L_0x0080:
        r3 = 0;
    L_0x0081:
        r6 = r5.mHorizontalChainStyle;
        if (r6 != r12) goto L_0x0087;
    L_0x0085:
        r6 = r4;
        goto L_0x0088;
    L_0x0087:
        r6 = 0;
    L_0x0088:
        r20 = r1;
        r21 = r3;
        r19 = r6;
        r6 = r7;
        r31 = r9;
        r3 = r16;
        r4 = r3;
        r12 = r4;
        r18 = r12;
        r1 = 0;
        r17 = 0;
        r30 = 0;
        goto L_0x00b0;
    L_0x009d:
        r1 = r5.mVerticalChainStyle;
        if (r1 != 0) goto L_0x00a3;
    L_0x00a1:
        r1 = r4;
        goto L_0x00a4;
    L_0x00a3:
        r1 = 0;
    L_0x00a4:
        r3 = r5.mVerticalChainStyle;
        if (r3 != r4) goto L_0x00aa;
    L_0x00a8:
        r3 = r4;
        goto L_0x00ab;
    L_0x00aa:
        r3 = 0;
    L_0x00ab:
        r6 = r5.mVerticalChainStyle;
        if (r6 != r12) goto L_0x0087;
    L_0x00af:
        goto L_0x0085;
    L_0x00b0:
        if (r1 != 0) goto L_0x01a8;
    L_0x00b2:
        r13 = r6.mListNextVisibleWidget;
        r13[r11] = r16;
        r13 = r6.getVisibility();
        r9 = 8;
        if (r13 == r9) goto L_0x00c8;
    L_0x00be:
        if (r3 == 0) goto L_0x00c4;
    L_0x00c0:
        r3 = r3.mListNextVisibleWidget;
        r3[r11] = r6;
    L_0x00c4:
        if (r12 != 0) goto L_0x00c7;
    L_0x00c6:
        r12 = r6;
    L_0x00c7:
        r3 = r6;
    L_0x00c8:
        r13 = r6.mListAnchors;
        r13 = r13[r15];
        r22 = r13.getMargin();
        r9 = r13.mTarget;
        if (r9 == 0) goto L_0x00e9;
    L_0x00d4:
        if (r6 == r7) goto L_0x00e9;
    L_0x00d6:
        r9 = r6.getVisibility();
        r32 = r1;
        r1 = 8;
        if (r9 == r1) goto L_0x00eb;
    L_0x00e0:
        r1 = r13.mTarget;
        r1 = r1.getMargin();
        r22 = r22 + r1;
        goto L_0x00eb;
    L_0x00e9:
        r32 = r1;
    L_0x00eb:
        r1 = r22;
        if (r19 == 0) goto L_0x00f5;
    L_0x00ef:
        if (r6 == r7) goto L_0x00f5;
    L_0x00f1:
        if (r6 == r12) goto L_0x00f5;
    L_0x00f3:
        r9 = 6;
        goto L_0x00f6;
    L_0x00f5:
        r9 = 1;
    L_0x00f6:
        if (r6 != r12) goto L_0x0109;
    L_0x00f8:
        r33 = r3;
        r3 = r13.mSolverVariable;
        r34 = r8;
        r8 = r13.mTarget;
        r8 = r8.mSolverVariable;
        r35 = r12;
        r12 = 5;
        r10.addGreaterThan(r3, r8, r1, r12);
        goto L_0x0119;
    L_0x0109:
        r33 = r3;
        r34 = r8;
        r35 = r12;
        r3 = r13.mSolverVariable;
        r8 = r13.mTarget;
        r8 = r8.mSolverVariable;
        r12 = 6;
        r10.addGreaterThan(r3, r8, r1, r12);
    L_0x0119:
        r3 = r13.mSolverVariable;
        r8 = r13.mTarget;
        r8 = r8.mSolverVariable;
        r10.addEquality(r3, r8, r1, r9);
        r1 = r6.mListNextMatchConstraintsWidget;
        r1[r11] = r16;
        r1 = r6.getVisibility();
        r3 = 8;
        if (r1 == r3) goto L_0x015d;
    L_0x012e:
        r1 = r6.mListDimensionBehaviors;
        r1 = r1[r11];
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r1 != r3) goto L_0x015d;
    L_0x0136:
        r17 = r17 + 1;
        r1 = r6.mWeight;
        r1 = r1[r11];
        r30 = r30 + r1;
        if (r18 != 0) goto L_0x0143;
    L_0x0140:
        r18 = r6;
        goto L_0x0147;
    L_0x0143:
        r1 = r4.mListNextMatchConstraintsWidget;
        r1[r11] = r6;
    L_0x0147:
        if (r2 == 0) goto L_0x015c;
    L_0x0149:
        r1 = r6.mListAnchors;
        r3 = r15 + 1;
        r1 = r1[r3];
        r1 = r1.mSolverVariable;
        r3 = r6.mListAnchors;
        r3 = r3[r15];
        r3 = r3.mSolverVariable;
        r4 = 0;
        r8 = 6;
        r10.addGreaterThan(r1, r3, r4, r8);
    L_0x015c:
        r4 = r6;
    L_0x015d:
        if (r2 == 0) goto L_0x0171;
    L_0x015f:
        r1 = r6.mListAnchors;
        r1 = r1[r15];
        r1 = r1.mSolverVariable;
        r3 = r0.mListAnchors;
        r3 = r3[r15];
        r3 = r3.mSolverVariable;
        r8 = 6;
        r13 = 0;
        r10.addGreaterThan(r1, r3, r13, r8);
        goto L_0x0172;
    L_0x0171:
        r13 = 0;
    L_0x0172:
        r1 = r6.mListAnchors;
        r3 = r15 + 1;
        r1 = r1[r3];
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x0190;
    L_0x017c:
        r1 = r1.mOwner;
        r3 = r1.mListAnchors;
        r3 = r3[r15];
        r3 = r3.mTarget;
        if (r3 == 0) goto L_0x0190;
    L_0x0186:
        r3 = r1.mListAnchors;
        r3 = r3[r15];
        r3 = r3.mTarget;
        r3 = r3.mOwner;
        if (r3 == r6) goto L_0x0192;
    L_0x0190:
        r1 = r16;
    L_0x0192:
        if (r1 == 0) goto L_0x019f;
    L_0x0194:
        r6 = r1;
        r1 = r32;
        r3 = r33;
        r8 = r34;
        r12 = r35;
        goto L_0x00b0;
    L_0x019f:
        r3 = r33;
        r8 = r34;
        r12 = r35;
        r1 = 1;
        goto L_0x00b0;
    L_0x01a8:
        r34 = r8;
        r13 = 0;
        if (r3 == 0) goto L_0x01cf;
    L_0x01ad:
        r1 = r6.mListAnchors;
        r4 = r15 + 1;
        r1 = r1[r4];
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01cf;
    L_0x01b7:
        r1 = r3.mListAnchors;
        r1 = r1[r4];
        r8 = r1.mSolverVariable;
        r9 = r6.mListAnchors;
        r4 = r9[r4];
        r4 = r4.mTarget;
        r4 = r4.mSolverVariable;
        r1 = r1.getMargin();
        r1 = -r1;
        r9 = 5;
        r10.addLowerThan(r8, r4, r1, r9);
        goto L_0x01d0;
    L_0x01cf:
        r9 = 5;
    L_0x01d0:
        if (r2 == 0) goto L_0x01ec;
    L_0x01d2:
        r1 = r0.mListAnchors;
        r2 = r15 + 1;
        r1 = r1[r2];
        r1 = r1.mSolverVariable;
        r4 = r6.mListAnchors;
        r4 = r4[r2];
        r4 = r4.mSolverVariable;
        r8 = r6.mListAnchors;
        r2 = r8[r2];
        r2 = r2.getMargin();
        r8 = 6;
        r10.addGreaterThan(r1, r4, r2, r8);
    L_0x01ec:
        if (r17 <= 0) goto L_0x0257;
    L_0x01ee:
        r1 = r18;
    L_0x01f0:
        if (r1 == 0) goto L_0x0257;
    L_0x01f2:
        r2 = r1.mListNextMatchConstraintsWidget;
        r2 = r2[r11];
        if (r2 == 0) goto L_0x024e;
    L_0x01f8:
        r4 = r1.mWeight;
        r23 = r4[r11];
        r4 = r2.mWeight;
        r25 = r4[r11];
        r4 = r1.mListAnchors;
        r4 = r4[r15];
        r4 = r4.mSolverVariable;
        r8 = r1.mListAnchors;
        r17 = r15 + 1;
        r8 = r8[r17];
        r8 = r8.mSolverVariable;
        r9 = r2.mListAnchors;
        r9 = r9[r15];
        r9 = r9.mSolverVariable;
        r13 = r2.mListAnchors;
        r13 = r13[r17];
        r13 = r13.mSolverVariable;
        if (r11 != 0) goto L_0x0223;
    L_0x021c:
        r1 = r1.mMatchConstraintDefaultWidth;
        r0 = r2.mMatchConstraintDefaultWidth;
    L_0x0220:
        r36 = r2;
        goto L_0x0228;
    L_0x0223:
        r1 = r1.mMatchConstraintDefaultHeight;
        r0 = r2.mMatchConstraintDefaultHeight;
        goto L_0x0220;
    L_0x0228:
        r2 = 3;
        if (r1 == 0) goto L_0x022d;
    L_0x022b:
        if (r1 != r2) goto L_0x0232;
    L_0x022d:
        if (r0 == 0) goto L_0x0234;
    L_0x022f:
        if (r0 != r2) goto L_0x0232;
    L_0x0231:
        goto L_0x0234;
    L_0x0232:
        r0 = 0;
        goto L_0x0235;
    L_0x0234:
        r0 = 1;
    L_0x0235:
        if (r0 == 0) goto L_0x0250;
    L_0x0237:
        r0 = r52.createRow();
        r22 = r0;
        r24 = r30;
        r26 = r4;
        r27 = r8;
        r28 = r9;
        r29 = r13;
        r22.createRowEqualMatchDimensions(r23, r24, r25, r26, r27, r28, r29);
        r10.addConstraint(r0);
        goto L_0x0250;
    L_0x024e:
        r36 = r2;
    L_0x0250:
        r1 = r36;
        r0 = r51;
        r9 = 5;
        r13 = 0;
        goto L_0x01f0;
    L_0x0257:
        if (r12 == 0) goto L_0x02da;
    L_0x0259:
        if (r12 == r3) goto L_0x025d;
    L_0x025b:
        if (r19 == 0) goto L_0x02da;
    L_0x025d:
        r0 = r7.mListAnchors;
        r0 = r0[r15];
        r1 = r6.mListAnchors;
        r2 = r15 + 1;
        r1 = r1[r2];
        r4 = r7.mListAnchors;
        r4 = r4[r15];
        r4 = r4.mTarget;
        if (r4 == 0) goto L_0x0278;
    L_0x026f:
        r4 = r7.mListAnchors;
        r4 = r4[r15];
        r4 = r4.mTarget;
        r4 = r4.mSolverVariable;
        goto L_0x027a;
    L_0x0278:
        r4 = r16;
    L_0x027a:
        r7 = r6.mListAnchors;
        r7 = r7[r2];
        r7 = r7.mTarget;
        if (r7 == 0) goto L_0x028b;
    L_0x0282:
        r7 = r6.mListAnchors;
        r7 = r7[r2];
        r7 = r7.mTarget;
        r7 = r7.mSolverVariable;
        goto L_0x028d;
    L_0x028b:
        r7 = r16;
    L_0x028d:
        if (r12 != r3) goto L_0x0297;
    L_0x028f:
        r0 = r12.mListAnchors;
        r0 = r0[r15];
        r1 = r12.mListAnchors;
        r1 = r1[r2];
    L_0x0297:
        if (r4 == 0) goto L_0x02cd;
    L_0x0299:
        if (r7 == 0) goto L_0x02cd;
    L_0x029b:
        if (r11 != 0) goto L_0x02a0;
    L_0x029d:
        r5 = r5.mHorizontalBiasPercent;
        goto L_0x02a2;
    L_0x02a0:
        r5 = r5.mVerticalBiasPercent;
    L_0x02a2:
        r8 = r0.getMargin();
        if (r3 != 0) goto L_0x02aa;
    L_0x02a8:
        r13 = r6;
        goto L_0x02ab;
    L_0x02aa:
        r13 = r3;
    L_0x02ab:
        r3 = r13.mListAnchors;
        r2 = r3[r2];
        r9 = r2.getMargin();
        r2 = r0.mSolverVariable;
        r0 = r1.mSolverVariable;
        r17 = 5;
        r1 = r10;
        r3 = r4;
        r4 = r8;
        r8 = r6;
        r6 = r7;
        r7 = r0;
        r37 = r13;
        r0 = r34;
        r13 = r8;
        r8 = r9;
        r18 = r31;
        r9 = r17;
        r1.addCentering(r2, r3, r4, r5, r6, r7, r8, r9);
        goto L_0x02d4;
    L_0x02cd:
        r13 = r6;
        r18 = r31;
        r0 = r34;
        r37 = r3;
    L_0x02d4:
        r50 = r13;
        r6 = r37;
        goto L_0x051c;
    L_0x02da:
        r13 = r6;
        r18 = r31;
        r0 = r34;
        if (r20 == 0) goto L_0x03e1;
    L_0x02e1:
        if (r12 == 0) goto L_0x03e1;
    L_0x02e3:
        r1 = r12;
        r9 = r1;
    L_0x02e5:
        if (r9 == 0) goto L_0x03dc;
    L_0x02e7:
        r2 = r9.mListNextVisibleWidget;
        r8 = r2[r11];
        if (r8 != 0) goto L_0x02fa;
    L_0x02ed:
        if (r9 != r3) goto L_0x02f0;
    L_0x02ef:
        goto L_0x02fa;
    L_0x02f0:
        r43 = r3;
        r42 = r7;
        r22 = r8;
        r17 = r9;
        goto L_0x03d2;
    L_0x02fa:
        r2 = r9.mListAnchors;
        r2 = r2[r15];
        r4 = r2.mSolverVariable;
        r5 = r2.mTarget;
        if (r5 == 0) goto L_0x0309;
    L_0x0304:
        r5 = r2.mTarget;
        r5 = r5.mSolverVariable;
        goto L_0x030b;
    L_0x0309:
        r5 = r16;
    L_0x030b:
        if (r1 == r9) goto L_0x0316;
    L_0x030d:
        r5 = r1.mListAnchors;
        r6 = r15 + 1;
        r5 = r5[r6];
        r5 = r5.mSolverVariable;
        goto L_0x032d;
    L_0x0316:
        if (r9 != r12) goto L_0x032d;
    L_0x0318:
        if (r1 != r9) goto L_0x032d;
    L_0x031a:
        r5 = r7.mListAnchors;
        r5 = r5[r15];
        r5 = r5.mTarget;
        if (r5 == 0) goto L_0x032b;
    L_0x0322:
        r5 = r7.mListAnchors;
        r5 = r5[r15];
        r5 = r5.mTarget;
        r5 = r5.mSolverVariable;
        goto L_0x032d;
    L_0x032b:
        r5 = r16;
    L_0x032d:
        r2 = r2.getMargin();
        r6 = r9.mListAnchors;
        r17 = r15 + 1;
        r6 = r6[r17];
        r6 = r6.getMargin();
        if (r8 == 0) goto L_0x0355;
    L_0x033d:
        r38 = r7;
        r7 = r8.mListAnchors;
        r7 = r7[r15];
        r39 = r8;
        r8 = r7.mSolverVariable;
        r40 = r8;
        r8 = r7.mTarget;
        if (r8 == 0) goto L_0x0352;
    L_0x034d:
        r8 = r7.mTarget;
        r8 = r8.mSolverVariable;
        goto L_0x0375;
    L_0x0352:
        r8 = r16;
        goto L_0x0375;
    L_0x0355:
        r38 = r7;
        r39 = r8;
        r7 = r13.mListAnchors;
        r7 = r7[r17];
        r7 = r7.mTarget;
        if (r7 == 0) goto L_0x0366;
    L_0x0361:
        r8 = r7.mSolverVariable;
        r41 = r7;
        goto L_0x036a;
    L_0x0366:
        r41 = r7;
        r8 = r16;
    L_0x036a:
        r7 = r9.mListAnchors;
        r7 = r7[r17];
        r7 = r7.mSolverVariable;
        r40 = r8;
        r8 = r7;
        r7 = r41;
    L_0x0375:
        if (r7 == 0) goto L_0x037c;
    L_0x0377:
        r7 = r7.getMargin();
        r6 = r6 + r7;
    L_0x037c:
        if (r1 == 0) goto L_0x0387;
    L_0x037e:
        r1 = r1.mListAnchors;
        r1 = r1[r17];
        r1 = r1.getMargin();
        r2 = r2 + r1;
    L_0x0387:
        if (r4 == 0) goto L_0x03ca;
    L_0x0389:
        if (r5 == 0) goto L_0x03ca;
    L_0x038b:
        if (r40 == 0) goto L_0x03ca;
    L_0x038d:
        if (r8 == 0) goto L_0x03ca;
    L_0x038f:
        if (r9 != r12) goto L_0x039b;
    L_0x0391:
        r1 = r12.mListAnchors;
        r1 = r1[r15];
        r1 = r1.getMargin();
        r7 = r1;
        goto L_0x039c;
    L_0x039b:
        r7 = r2;
    L_0x039c:
        if (r9 != r3) goto L_0x03a9;
    L_0x039e:
        r1 = r3.mListAnchors;
        r1 = r1[r17];
        r1 = r1.getMargin();
        r17 = r1;
        goto L_0x03ab;
    L_0x03a9:
        r17 = r6;
    L_0x03ab:
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r19 = 4;
        r1 = r10;
        r2 = r4;
        r4 = r3;
        r3 = r5;
        r5 = r4;
        r4 = r7;
        r7 = r5;
        r5 = r6;
        r6 = r40;
        r43 = r7;
        r42 = r38;
        r7 = r8;
        r22 = r39;
        r8 = r17;
        r17 = r9;
        r9 = r19;
        r1.addCentering(r2, r3, r4, r5, r6, r7, r8, r9);
        goto L_0x03d2;
    L_0x03ca:
        r43 = r3;
        r17 = r9;
        r42 = r38;
        r22 = r39;
    L_0x03d2:
        r1 = r17;
        r9 = r22;
        r7 = r42;
        r3 = r43;
        goto L_0x02e5;
    L_0x03dc:
        r50 = r13;
        r13 = r3;
        goto L_0x051b;
    L_0x03e1:
        r43 = r3;
        r42 = r7;
        if (r21 == 0) goto L_0x0517;
    L_0x03e7:
        if (r12 == 0) goto L_0x0517;
    L_0x03e9:
        r1 = r12;
        r9 = r1;
    L_0x03eb:
        if (r9 == 0) goto L_0x049f;
    L_0x03ed:
        r2 = r9.mListNextVisibleWidget;
        r2 = r2[r11];
        if (r9 == r12) goto L_0x0491;
    L_0x03f3:
        r8 = r43;
        if (r9 == r8) goto L_0x048c;
    L_0x03f7:
        if (r2 == 0) goto L_0x048c;
    L_0x03f9:
        if (r2 != r8) goto L_0x03fe;
    L_0x03fb:
        r7 = r16;
        goto L_0x03ff;
    L_0x03fe:
        r7 = r2;
    L_0x03ff:
        r2 = r9.mListAnchors;
        r2 = r2[r15];
        r3 = r2.mSolverVariable;
        r4 = r1.mListAnchors;
        r5 = r15 + 1;
        r4 = r4[r5];
        r4 = r4.mSolverVariable;
        r2 = r2.getMargin();
        r6 = r9.mListAnchors;
        r6 = r6[r5];
        r6 = r6.getMargin();
        if (r7 == 0) goto L_0x0433;
    L_0x041b:
        r44 = r8;
        r8 = r7.mListAnchors;
        r8 = r8[r15];
        r45 = r7;
        r7 = r8.mSolverVariable;
        r46 = r7;
        r7 = r8.mTarget;
        if (r7 == 0) goto L_0x0430;
    L_0x042b:
        r7 = r8.mTarget;
        r7 = r7.mSolverVariable;
        goto L_0x044e;
    L_0x0430:
        r7 = r16;
        goto L_0x044e;
    L_0x0433:
        r45 = r7;
        r44 = r8;
        r7 = r9.mListAnchors;
        r7 = r7[r5];
        r8 = r7.mTarget;
        if (r8 == 0) goto L_0x0444;
    L_0x043f:
        r7 = r8.mSolverVariable;
        r47 = r7;
        goto L_0x0446;
    L_0x0444:
        r47 = r16;
    L_0x0446:
        r7 = r9.mListAnchors;
        r7 = r7[r5];
        r7 = r7.mSolverVariable;
        r46 = r47;
    L_0x044e:
        if (r8 == 0) goto L_0x0455;
    L_0x0450:
        r8 = r8.getMargin();
        r6 = r6 + r8;
    L_0x0455:
        r8 = r6;
        if (r1 == 0) goto L_0x0461;
    L_0x0458:
        r1 = r1.mListAnchors;
        r1 = r1[r5];
        r1 = r1.getMargin();
        r2 = r2 + r1;
    L_0x0461:
        r5 = r2;
        if (r3 == 0) goto L_0x0482;
    L_0x0464:
        if (r4 == 0) goto L_0x0482;
    L_0x0466:
        if (r46 == 0) goto L_0x0482;
    L_0x0468:
        if (r7 == 0) goto L_0x0482;
    L_0x046a:
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r17 = 4;
        r1 = r10;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r46;
        r19 = r45;
        r48 = r44;
        r22 = r9;
        r11 = 5;
        r9 = r17;
        r1.addCentering(r2, r3, r4, r5, r6, r7, r8, r9);
        goto L_0x0489;
    L_0x0482:
        r22 = r9;
        r48 = r44;
        r19 = r45;
        r11 = 5;
    L_0x0489:
        r9 = r19;
        goto L_0x0497;
    L_0x048c:
        r48 = r8;
        r22 = r9;
        goto L_0x0495;
    L_0x0491:
        r22 = r9;
        r48 = r43;
    L_0x0495:
        r11 = 5;
        r9 = r2;
    L_0x0497:
        r1 = r22;
        r43 = r48;
        r11 = r53;
        goto L_0x03eb;
    L_0x049f:
        r48 = r43;
        r11 = 5;
        r1 = r12.mListAnchors;
        r1 = r1[r15];
        r2 = r42;
        r2 = r2.mListAnchors;
        r2 = r2[r15];
        r2 = r2.mTarget;
        r9 = r48;
        r3 = r9.mListAnchors;
        r4 = r15 + 1;
        r8 = r3[r4];
        r3 = r13.mListAnchors;
        r3 = r3[r4];
        r7 = r3.mTarget;
        if (r2 == 0) goto L_0x04fd;
    L_0x04be:
        if (r12 == r9) goto L_0x04cc;
    L_0x04c0:
        r3 = r1.mSolverVariable;
        r2 = r2.mSolverVariable;
        r1 = r1.getMargin();
        r10.addEquality(r3, r2, r1, r11);
        goto L_0x04fd;
    L_0x04cc:
        if (r7 == 0) goto L_0x04fd;
    L_0x04ce:
        r3 = r1.mSolverVariable;
        r4 = r2.mSolverVariable;
        r5 = r1.getMargin();
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r2 = r8.mSolverVariable;
        r1 = r7.mSolverVariable;
        r17 = r8.getMargin();
        r19 = 5;
        r22 = r1;
        r1 = r10;
        r23 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r23;
        r11 = r7;
        r7 = r22;
        r49 = r8;
        r8 = r17;
        r50 = r13;
        r13 = r9;
        r9 = r19;
        r1.addCentering(r2, r3, r4, r5, r6, r7, r8, r9);
        goto L_0x0503;
    L_0x04fd:
        r11 = r7;
        r49 = r8;
        r50 = r13;
        r13 = r9;
    L_0x0503:
        if (r11 == 0) goto L_0x051b;
    L_0x0505:
        if (r12 == r13) goto L_0x051b;
    L_0x0507:
        r1 = r49;
        r2 = r1.mSolverVariable;
        r3 = r11.mSolverVariable;
        r1 = r1.getMargin();
        r1 = -r1;
        r4 = 5;
        r10.addEquality(r2, r3, r1, r4);
        goto L_0x051b;
    L_0x0517:
        r50 = r13;
        r13 = r43;
    L_0x051b:
        r6 = r13;
    L_0x051c:
        if (r20 != 0) goto L_0x0520;
    L_0x051e:
        if (r21 == 0) goto L_0x0570;
    L_0x0520:
        if (r12 == 0) goto L_0x0570;
    L_0x0522:
        r1 = r12.mListAnchors;
        r1 = r1[r15];
        r2 = r6.mListAnchors;
        r3 = r15 + 1;
        r2 = r2[r3];
        r4 = r1.mTarget;
        if (r4 == 0) goto L_0x0535;
    L_0x0530:
        r4 = r1.mTarget;
        r4 = r4.mSolverVariable;
        goto L_0x0537;
    L_0x0535:
        r4 = r16;
    L_0x0537:
        r5 = r2.mTarget;
        if (r5 == 0) goto L_0x0541;
    L_0x053b:
        r5 = r2.mTarget;
        r5 = r5.mSolverVariable;
        r16 = r5;
    L_0x0541:
        if (r12 != r6) goto L_0x054b;
    L_0x0543:
        r1 = r12.mListAnchors;
        r1 = r1[r15];
        r2 = r12.mListAnchors;
        r2 = r2[r3];
    L_0x054b:
        if (r4 == 0) goto L_0x0570;
    L_0x054d:
        if (r16 == 0) goto L_0x0570;
    L_0x054f:
        r5 = r1.getMargin();
        if (r6 != 0) goto L_0x0557;
    L_0x0555:
        r6 = r50;
    L_0x0557:
        r6 = r6.mListAnchors;
        r3 = r6[r3];
        r8 = r3.getMargin();
        r3 = r1.mSolverVariable;
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r7 = r2.mSolverVariable;
        r9 = 5;
        r1 = r10;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r16;
        r1.addCentering(r2, r3, r4, r5, r6, r7, r8, r9);
    L_0x0570:
        r8 = r0 + 1;
        r9 = r18;
        r0 = r51;
        r11 = r53;
        r12 = 2;
        goto L_0x0019;
    L_0x057b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Chain.applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.LinearSystem, int):void");
    }

    public void reset() {
        this.state = 0;
        this.dependents.clear();
    }

    public final void invalidate() {
        this.state = 0;
        Iterator it = this.dependents.iterator();
        while (it.hasNext()) {
            ((Chain) it.next()).invalidate();
        }
    }

    public final void didResolve() {
        this.state = 1;
        Iterator it = this.dependents.iterator();
        while (it.hasNext()) {
            ((Chain) it.next()).resolve();
        }
    }

    public final boolean isResolved() {
        return this.state == 1;
    }

    public /* bridge */ /* synthetic */ Object get() {
        Retrofit provideRetrofitAdapterNoAuth = RetrofitModule.provideRetrofitAdapterNoAuth((HeaderManager) this.headerManagerProvider.get());
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideRetrofitAdapterNoAuth != null) {
            return provideRetrofitAdapterNoAuth;
        }
        throw new NullPointerException(str);
    }
}
