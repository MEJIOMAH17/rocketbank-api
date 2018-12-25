package com.google.maps.android.clustering.algo;

import android.support.v7.appcompat.C0219R.color;
import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.Cluster;
import com.google.maps.android.clustering.ClusterItem;
import com.google.maps.android.projection.SphericalMercatorProjection;
import com.google.maps.android.quadtree.PointQuadTree;
import com.google.maps.android.quadtree.PointQuadTree.Item;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

public final class NonHierarchicalDistanceBasedAlgorithm<T extends ClusterItem> implements Algorithm<T> {
    private static final SphericalMercatorProjection PROJECTION = new SphericalMercatorProjection(1.0d);
    private final Collection<QuadItem<T>> mItems = new ArrayList();
    private final PointQuadTree<QuadItem<T>> mQuadTree = new PointQuadTree();

    static class QuadItem<T extends ClusterItem> implements Cluster<T>, Item {
        private final T mClusterItem;
        private final color mPoint$607e0554;
        private final LatLng mPosition;
        private Set<T> singletonSet;

        public final int getSize() {
            return 1;
        }

        private QuadItem(T t) {
            this.mClusterItem = t;
            this.mPosition = t.getPosition();
            this.mPoint$607e0554 = NonHierarchicalDistanceBasedAlgorithm.PROJECTION.toPoint(this.mPosition);
            this.singletonSet = Collections.singleton(this.mClusterItem);
        }

        public final color getPoint$4cf92aad() {
            return this.mPoint$607e0554;
        }

        public final LatLng getPosition() {
            return this.mPosition;
        }

        public final int hashCode() {
            return this.mClusterItem.hashCode();
        }

        public final boolean equals(Object obj) {
            if (obj instanceof QuadItem) {
                return ((QuadItem) obj).mClusterItem.equals(this.mClusterItem);
            }
            return null;
        }

        public final /* bridge */ /* synthetic */ Collection getItems() {
            return this.singletonSet;
        }
    }

    public final java.util.Set<? extends com.google.maps.android.clustering.Cluster<T>> getClusters(double r33) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 25, insn: 0x007c: MOVE  (r6 ?[long, double]) = (r25 ?[long, double]), block:B:10:0x006d, method: com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.getClusters(double):java.util.Set<? extends com.google.maps.android.clustering.Cluster<T>>
	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:168)
	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:197)
	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:197)
	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:197)
	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:197)
	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:132)
	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:52)
	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r32 = this;
        r1 = r32;
        r2 = r33;
        r2 = (int) r2;
        r2 = (double) r2;
        r4 = 4611686018427387904; // 0x4000000000000000 float:0.0 double:2.0;
        r2 = java.lang.Math.pow(r4, r2);
        r6 = 4636737291354636288; // 0x4059000000000000 float:0.0 double:100.0;
        r6 = r6 / r2;
        r2 = 4643211215818981376; // 0x4070000000000000 float:0.0 double:256.0;
        r6 = r6 / r2;
        r2 = new java.util.HashSet;
        r2.<init>();
        r3 = new java.util.HashSet;
        r3.<init>();
        r8 = new java.util.HashMap;
        r8.<init>();
        r9 = new java.util.HashMap;
        r9.<init>();
        r10 = r1.mQuadTree;
        monitor-enter(r10);
        r11 = r1.mItems;	 Catch:{ all -> 0x0123 }
        r11 = r11.iterator();	 Catch:{ all -> 0x0123 }
    L_0x002f:
        r12 = r11.hasNext();	 Catch:{ all -> 0x0123 }
        if (r12 == 0) goto L_0x011f;	 Catch:{ all -> 0x0123 }
    L_0x0035:
        r12 = r11.next();	 Catch:{ all -> 0x0123 }
        r12 = (com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.QuadItem) r12;	 Catch:{ all -> 0x0123 }
        r13 = r2.contains(r12);	 Catch:{ all -> 0x0123 }
        if (r13 != 0) goto L_0x011b;	 Catch:{ all -> 0x0123 }
    L_0x0041:
        r13 = r12.getPoint$4cf92aad();	 Catch:{ all -> 0x0123 }
        r14 = r6 / r4;	 Catch:{ all -> 0x0123 }
        r4 = new android.support.v7.appcompat.R$bool;	 Catch:{ all -> 0x0123 }
        r25 = r6;	 Catch:{ all -> 0x0123 }
        r5 = r13.f5x;	 Catch:{ all -> 0x0123 }
        r17 = r5 - r14;	 Catch:{ all -> 0x0123 }
        r5 = r13.f5x;	 Catch:{ all -> 0x0123 }
        r19 = r5 + r14;	 Catch:{ all -> 0x0123 }
        r5 = r13.f6y;	 Catch:{ all -> 0x0123 }
        r21 = r5 - r14;	 Catch:{ all -> 0x0123 }
        r5 = r13.f6y;	 Catch:{ all -> 0x0123 }
        r23 = r5 + r14;	 Catch:{ all -> 0x0123 }
        r16 = r4;	 Catch:{ all -> 0x0123 }
        r16.<init>(r17, r19, r21, r23);	 Catch:{ all -> 0x0123 }
        r5 = r1.mQuadTree;	 Catch:{ all -> 0x0123 }
        r4 = r5.search$1e128623(r4);	 Catch:{ all -> 0x0123 }
        r5 = r4.size();	 Catch:{ all -> 0x0123 }
        r6 = 1;	 Catch:{ all -> 0x0123 }
        if (r5 != r6) goto L_0x0081;	 Catch:{ all -> 0x0123 }
    L_0x006d:
        r3.add(r12);	 Catch:{ all -> 0x0123 }
        r2.add(r12);	 Catch:{ all -> 0x0123 }
        r4 = 0;	 Catch:{ all -> 0x0123 }
        r4 = java.lang.Double.valueOf(r4);	 Catch:{ all -> 0x0123 }
        r8.put(r12, r4);	 Catch:{ all -> 0x0123 }
        r6 = r25;	 Catch:{ all -> 0x0123 }
    L_0x007e:
        r4 = 4611686018427387904; // 0x4000000000000000 float:0.0 double:2.0;	 Catch:{ all -> 0x0123 }
        goto L_0x002f;	 Catch:{ all -> 0x0123 }
    L_0x0081:
        r5 = new com.google.maps.android.clustering.algo.StaticCluster;	 Catch:{ all -> 0x0123 }
        r6 = r12.mClusterItem;	 Catch:{ all -> 0x0123 }
        r6 = r6.getPosition();	 Catch:{ all -> 0x0123 }
        r5.<init>(r6);	 Catch:{ all -> 0x0123 }
        r3.add(r5);	 Catch:{ all -> 0x0123 }
        r6 = r4.iterator();	 Catch:{ all -> 0x0123 }
    L_0x0095:
        r7 = r6.hasNext();	 Catch:{ all -> 0x0123 }
        if (r7 == 0) goto L_0x0107;	 Catch:{ all -> 0x0123 }
    L_0x009b:
        r7 = r6.next();	 Catch:{ all -> 0x0123 }
        r7 = (com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.QuadItem) r7;	 Catch:{ all -> 0x0123 }
        r13 = r8.get(r7);	 Catch:{ all -> 0x0123 }
        r13 = (java.lang.Double) r13;	 Catch:{ all -> 0x0123 }
        r14 = r7.getPoint$4cf92aad();	 Catch:{ all -> 0x0123 }
        r15 = r12.getPoint$4cf92aad();	 Catch:{ all -> 0x0123 }
        r27 = r11;	 Catch:{ all -> 0x0123 }
        r28 = r12;	 Catch:{ all -> 0x0123 }
        r11 = r14.f5x;	 Catch:{ all -> 0x0123 }
        r29 = r2;	 Catch:{ all -> 0x0123 }
        r1 = r15.f5x;	 Catch:{ all -> 0x0123 }
        r11 = r11 - r1;	 Catch:{ all -> 0x0123 }
        r1 = r14.f5x;	 Catch:{ all -> 0x0123 }
        r30 = r3;	 Catch:{ all -> 0x0123 }
        r31 = r4;	 Catch:{ all -> 0x0123 }
        r3 = r15.f5x;	 Catch:{ all -> 0x0123 }
        r1 = r1 - r3;	 Catch:{ all -> 0x0123 }
        r11 = r11 * r1;	 Catch:{ all -> 0x0123 }
        r1 = r14.f6y;	 Catch:{ all -> 0x0123 }
        r3 = r15.f6y;	 Catch:{ all -> 0x0123 }
        r1 = r1 - r3;	 Catch:{ all -> 0x0123 }
        r3 = r14.f6y;	 Catch:{ all -> 0x0123 }
        r14 = r15.f6y;	 Catch:{ all -> 0x0123 }
        r3 = r3 - r14;	 Catch:{ all -> 0x0123 }
        r1 = r1 * r3;	 Catch:{ all -> 0x0123 }
        r11 = r11 + r1;	 Catch:{ all -> 0x0123 }
        if (r13 == 0) goto L_0x00f5;	 Catch:{ all -> 0x0123 }
    L_0x00d2:
        r1 = r13.doubleValue();	 Catch:{ all -> 0x0123 }
        r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1));	 Catch:{ all -> 0x0123 }
        if (r3 < 0) goto L_0x00e8;	 Catch:{ all -> 0x0123 }
    L_0x00da:
        r1 = r9.get(r7);	 Catch:{ all -> 0x0123 }
        r1 = (com.google.maps.android.clustering.algo.StaticCluster) r1;	 Catch:{ all -> 0x0123 }
        r2 = r7.mClusterItem;	 Catch:{ all -> 0x0123 }
        r1.remove(r2);	 Catch:{ all -> 0x0123 }
        goto L_0x00f5;	 Catch:{ all -> 0x0123 }
    L_0x00e8:
        r11 = r27;	 Catch:{ all -> 0x0123 }
        r12 = r28;	 Catch:{ all -> 0x0123 }
        r2 = r29;	 Catch:{ all -> 0x0123 }
        r3 = r30;	 Catch:{ all -> 0x0123 }
        r4 = r31;	 Catch:{ all -> 0x0123 }
        r1 = r32;	 Catch:{ all -> 0x0123 }
        goto L_0x0095;	 Catch:{ all -> 0x0123 }
    L_0x00f5:
        r1 = java.lang.Double.valueOf(r11);	 Catch:{ all -> 0x0123 }
        r8.put(r7, r1);	 Catch:{ all -> 0x0123 }
        r1 = r7.mClusterItem;	 Catch:{ all -> 0x0123 }
        r5.add(r1);	 Catch:{ all -> 0x0123 }
        r9.put(r7, r5);	 Catch:{ all -> 0x0123 }
        goto L_0x00e8;	 Catch:{ all -> 0x0123 }
    L_0x0107:
        r1 = r2;	 Catch:{ all -> 0x0123 }
        r30 = r3;	 Catch:{ all -> 0x0123 }
        r2 = r4;	 Catch:{ all -> 0x0123 }
        r27 = r11;	 Catch:{ all -> 0x0123 }
        r1.addAll(r2);	 Catch:{ all -> 0x0123 }
        r2 = r1;	 Catch:{ all -> 0x0123 }
        r6 = r25;	 Catch:{ all -> 0x0123 }
        r11 = r27;	 Catch:{ all -> 0x0123 }
        r3 = r30;	 Catch:{ all -> 0x0123 }
        r1 = r32;	 Catch:{ all -> 0x0123 }
        goto L_0x007e;	 Catch:{ all -> 0x0123 }
    L_0x011b:
        r1 = r32;	 Catch:{ all -> 0x0123 }
        goto L_0x002f;	 Catch:{ all -> 0x0123 }
    L_0x011f:
        r30 = r3;	 Catch:{ all -> 0x0123 }
        monitor-exit(r10);	 Catch:{ all -> 0x0123 }
        return r30;	 Catch:{ all -> 0x0123 }
    L_0x0123:
        r0 = move-exception;	 Catch:{ all -> 0x0123 }
        r1 = r0;	 Catch:{ all -> 0x0123 }
        monitor-exit(r10);	 Catch:{ all -> 0x0123 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.getClusters(double):java.util.Set<? extends com.google.maps.android.clustering.Cluster<T>>");
    }

    public final void addItems(Collection<T> collection) {
        for (T quadItem : collection) {
            Item quadItem2 = new QuadItem(quadItem);
            synchronized (this.mQuadTree) {
                this.mItems.add(quadItem2);
                this.mQuadTree.add(quadItem2);
            }
        }
    }

    public final void clearItems() {
        synchronized (this.mQuadTree) {
            this.mItems.clear();
            this.mQuadTree.clear();
        }
    }
}
