package com.google.gson.internal;

import android.arch.lifecycle.GeneratedAdapter;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private List<GeneratedAdapter> deserializationStrategies = Collections.emptyList();
    private int modifiers = 136;
    private List<GeneratedAdapter> serializationStrategies = Collections.emptyList();
    private boolean serializeInnerClasses = true;
    private double version = -1.0d;

    private Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class rawType = typeToken.getRawType();
        final boolean excludeClass = excludeClass(rawType, true);
        final boolean excludeClass2 = excludeClass(rawType, false);
        if (!excludeClass && !excludeClass2) {
            return null;
        }
        final Gson gson2 = gson;
        final TypeToken<T> typeToken2 = typeToken;
        return new TypeAdapter<T>() {
            private TypeAdapter<T> delegate;

            public final T read(JsonReader jsonReader) throws IOException {
                if (excludeClass2) {
                    jsonReader.skipValue();
                    return null;
                }
                TypeAdapter typeAdapter = this.delegate;
                if (typeAdapter == null) {
                    typeAdapter = gson2.getDelegateAdapter(Excluder.this, typeToken2);
                    this.delegate = typeAdapter;
                }
                return typeAdapter.read(jsonReader);
            }

            public final void write(JsonWriter jsonWriter, T t) throws IOException {
                if (excludeClass) {
                    jsonWriter.nullValue();
                    return;
                }
                TypeAdapter typeAdapter = this.delegate;
                if (typeAdapter == null) {
                    typeAdapter = gson2.getDelegateAdapter(Excluder.this, typeToken2);
                    this.delegate = typeAdapter;
                }
                typeAdapter.write(jsonWriter, t);
            }
        };
    }

    public final boolean excludeField(java.lang.reflect.Field r9, boolean r10) {
        /* JADX: method processing error */
/*
Error: java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:410)
	at jadx.core.dex.visitors.regions.LoopRegionVisitor.fixIterableType(LoopRegionVisitor.java:308)
	at jadx.core.dex.visitors.regions.LoopRegionVisitor.checkIterableForEach(LoopRegionVisitor.java:249)
	at jadx.core.dex.visitors.regions.LoopRegionVisitor.processLoopRegion(LoopRegionVisitor.java:68)
	at jadx.core.dex.visitors.regions.LoopRegionVisitor.enterRegion(LoopRegionVisitor.java:52)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:56)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:58)
	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:18)
	at jadx.core.dex.visitors.regions.LoopRegionVisitor.visit(LoopRegionVisitor.java:46)
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
        r8 = this;
        r0 = r8.modifiers;
        r1 = r9.getModifiers();
        r0 = r0 & r1;
        r1 = 1;
        if (r0 == 0) goto L_0x000b;
    L_0x000a:
        return r1;
    L_0x000b:
        r2 = r8.version;
        r4 = -4616189618054758400; // 0xbff0000000000000 float:0.0 double:-1.0;
        r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        r2 = 0;
        if (r0 == 0) goto L_0x004c;
    L_0x0014:
        r0 = com.google.gson.annotations.Since.class;
        r0 = r9.getAnnotation(r0);
        r0 = (com.google.gson.annotations.Since) r0;
        r3 = com.google.gson.annotations.Until.class;
        r3 = r9.getAnnotation(r3);
        r3 = (com.google.gson.annotations.Until) r3;
        if (r0 == 0) goto L_0x0032;
    L_0x0026:
        r4 = r0.value();
        r6 = r8.version;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 <= 0) goto L_0x0032;
    L_0x0030:
        r0 = r2;
        goto L_0x0033;
    L_0x0032:
        r0 = r1;
    L_0x0033:
        if (r0 == 0) goto L_0x0048;
    L_0x0035:
        if (r3 == 0) goto L_0x0043;
    L_0x0037:
        r3 = r3.value();
        r5 = r8.version;
        r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r0 > 0) goto L_0x0043;
    L_0x0041:
        r0 = r2;
        goto L_0x0044;
    L_0x0043:
        r0 = r1;
    L_0x0044:
        if (r0 == 0) goto L_0x0048;
    L_0x0046:
        r0 = r1;
        goto L_0x0049;
    L_0x0048:
        r0 = r2;
    L_0x0049:
        if (r0 != 0) goto L_0x004c;
    L_0x004b:
        return r1;
    L_0x004c:
        r0 = r9.isSynthetic();
        if (r0 == 0) goto L_0x0053;
    L_0x0052:
        return r1;
    L_0x0053:
        r0 = r8.serializeInnerClasses;
        if (r0 != 0) goto L_0x0074;
    L_0x0057:
        r0 = r9.getType();
        r3 = r0.isMemberClass();
        if (r3 == 0) goto L_0x0070;
    L_0x0061:
        r0 = r0.getModifiers();
        r0 = r0 & 8;
        if (r0 == 0) goto L_0x006b;
    L_0x0069:
        r0 = r1;
        goto L_0x006c;
    L_0x006b:
        r0 = r2;
    L_0x006c:
        if (r0 != 0) goto L_0x0070;
    L_0x006e:
        r0 = r1;
        goto L_0x0071;
    L_0x0070:
        r0 = r2;
    L_0x0071:
        if (r0 == 0) goto L_0x0074;
    L_0x0073:
        return r1;
    L_0x0074:
        r0 = r9.getType();
        r3 = java.lang.Enum.class;
        r3 = r3.isAssignableFrom(r0);
        if (r3 != 0) goto L_0x008e;
    L_0x0080:
        r3 = r0.isAnonymousClass();
        if (r3 != 0) goto L_0x008c;
    L_0x0086:
        r0 = r0.isLocalClass();
        if (r0 == 0) goto L_0x008e;
    L_0x008c:
        r0 = r1;
        goto L_0x008f;
    L_0x008e:
        r0 = r2;
    L_0x008f:
        if (r0 == 0) goto L_0x0092;
    L_0x0091:
        return r1;
    L_0x0092:
        if (r10 == 0) goto L_0x0097;
    L_0x0094:
        r10 = r8.serializationStrategies;
        goto L_0x0099;
    L_0x0097:
        r10 = r8.deserializationStrategies;
    L_0x0099:
        r0 = r10.isEmpty();
        if (r0 != 0) goto L_0x00bb;
    L_0x009f:
        r0 = new android.support.v7.appcompat.R;
        r0.<init>(r9);
        r9 = r10.iterator();
    L_0x00a8:
        r10 = r9.hasNext();
        if (r10 == 0) goto L_0x00bb;
    L_0x00ae:
        r10 = r9.next();
        r10 = (android.arch.lifecycle.GeneratedAdapter) r10;
        r10 = r10.shouldSkipField$6e8224bb();
        if (r10 == 0) goto L_0x00a8;
    L_0x00ba:
        return r1;
    L_0x00bb:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.Excluder.excludeField(java.lang.reflect.Field, boolean):boolean");
    }

    public final boolean excludeClass(Class<?> cls, boolean z) {
        boolean z2;
        if (this.version != -1.0d) {
            Since since = (Since) cls.getAnnotation(Since.class);
            Until until = (Until) cls.getAnnotation(Until.class);
            z2 = since == null || since.value() <= this.version;
            if (z2) {
                z2 = until == null || until.value() > this.version;
                if (z2) {
                    z2 = true;
                    if (!z2) {
                        return true;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return true;
            }
        }
        if (!this.serializeInnerClasses) {
            if (cls.isMemberClass()) {
                if (!((cls.getModifiers() & 8) != 0)) {
                    z2 = true;
                    if (z2) {
                        return true;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return true;
            }
        }
        cls = (Enum.class.isAssignableFrom(cls) || (!cls.isAnonymousClass() && cls.isLocalClass() == null)) ? null : 1;
        if (cls != null) {
            return true;
        }
        cls = (z ? this.serializationStrategies : this.deserializationStrategies).iterator();
        while (cls.hasNext()) {
            if (((GeneratedAdapter) cls.next()).shouldSkipClass$1b2d8b94()) {
                return true;
            }
        }
        return false;
    }
}
