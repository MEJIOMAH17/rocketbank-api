package com.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.Map;

public abstract class Animator implements Cloneable {
    ArrayList<AnimatorListener> mListeners = null;

    public interface AnimatorListener {
        void onInstallConversionDataLoaded(Map<String, String> map);
    }

    public void start() {
    }

    public final void addListener$386121c3() {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(null);
    }

    public com.nineoldandroids.animation.Animator clone() {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r6 = this;
        r0 = super.clone();	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r0 = (com.nineoldandroids.animation.Animator) r0;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r1 = r6.mListeners;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        if (r1 == 0) goto L_0x0026;	 Catch:{ CloneNotSupportedException -> 0x0027 }
    L_0x000a:
        r1 = r6.mListeners;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r2 = new java.util.ArrayList;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r2.<init>();	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r0.mListeners = r2;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r2 = r1.size();	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r3 = 0;	 Catch:{ CloneNotSupportedException -> 0x0027 }
    L_0x0018:
        if (r3 >= r2) goto L_0x0026;	 Catch:{ CloneNotSupportedException -> 0x0027 }
    L_0x001a:
        r4 = r0.mListeners;	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r5 = r1.get(r3);	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r4.add(r5);	 Catch:{ CloneNotSupportedException -> 0x0027 }
        r3 = r3 + 1;
        goto L_0x0018;
    L_0x0026:
        return r0;
    L_0x0027:
        r0 = new java.lang.AssertionError;
        r0.<init>();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.animation.Animator.clone():com.nineoldandroids.animation.Animator");
    }
}
