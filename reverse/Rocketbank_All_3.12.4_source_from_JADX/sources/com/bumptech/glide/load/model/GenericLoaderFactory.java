package com.bumptech.glide.load.model;

import android.content.Context;
import com.bumptech.glide.load.data.DataFetcher;
import java.util.HashMap;
import java.util.Map;

public final class GenericLoaderFactory {
    private static final ModelLoader NULL_MODEL_LOADER = new C09841();
    private final Map<Class, Map<Class, ModelLoader>> cachedModelLoaders = new HashMap();
    private final Context context;
    private final Map<Class, Map<Class, ModelLoaderFactory>> modelClassToResourceFactories = new HashMap();

    /* renamed from: com.bumptech.glide.load.model.GenericLoaderFactory$1 */
    static class C09841 implements ModelLoader {
        public final String toString() {
            return "NULL_MODEL_LOADER";
        }

        C09841() {
        }

        public final DataFetcher getResourceFetcher(Object obj, int i, int i2) {
            throw new NoSuchMethodError("This should never be called!");
        }
    }

    public GenericLoaderFactory(Context context) {
        this.context = context.getApplicationContext();
    }

    public final synchronized <T, Y> ModelLoaderFactory<T, Y> register(Class<T> cls, Class<Y> cls2, ModelLoaderFactory<T, Y> modelLoaderFactory) {
        this.cachedModelLoaders.clear();
        Map map = (Map) this.modelClassToResourceFactories.get(cls);
        if (map == null) {
            map = new HashMap();
            this.modelClassToResourceFactories.put(cls, map);
        }
        cls = (ModelLoaderFactory) map.put(cls2, modelLoaderFactory);
        if (cls != null) {
            for (Y containsValue : this.modelClassToResourceFactories.values()) {
                if (containsValue.containsValue(cls) != null) {
                    cls = null;
                    break;
                }
            }
        }
        return cls;
    }

    private <T, Y> void cacheModelLoader(Class<T> cls, Class<Y> cls2, ModelLoader<T, Y> modelLoader) {
        Map map = (Map) this.cachedModelLoaders.get(cls);
        if (map == null) {
            map = new HashMap();
            this.cachedModelLoaders.put(cls, map);
        }
        map.put(cls2, modelLoader);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized <T, Y> com.bumptech.glide.load.model.ModelLoader<T, Y> buildModelLoader(java.lang.Class<T> r6, java.lang.Class<Y> r7) {
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.cachedModelLoaders;	 Catch:{ all -> 0x0076 }
        r0 = r0.get(r6);	 Catch:{ all -> 0x0076 }
        r0 = (java.util.Map) r0;	 Catch:{ all -> 0x0076 }
        r1 = 0;
        if (r0 == 0) goto L_0x0013;
    L_0x000c:
        r0 = r0.get(r7);	 Catch:{ all -> 0x0076 }
        r0 = (com.bumptech.glide.load.model.ModelLoader) r0;	 Catch:{ all -> 0x0076 }
        goto L_0x0014;
    L_0x0013:
        r0 = r1;
    L_0x0014:
        if (r0 == 0) goto L_0x0022;
    L_0x0016:
        r6 = NULL_MODEL_LOADER;	 Catch:{ all -> 0x0076 }
        r6 = r6.equals(r0);	 Catch:{ all -> 0x0076 }
        if (r6 == 0) goto L_0x0020;
    L_0x001e:
        monitor-exit(r5);
        return r1;
    L_0x0020:
        monitor-exit(r5);
        return r0;
    L_0x0022:
        r2 = r5.modelClassToResourceFactories;	 Catch:{ all -> 0x0076 }
        r2 = r2.get(r6);	 Catch:{ all -> 0x0076 }
        r2 = (java.util.Map) r2;	 Catch:{ all -> 0x0076 }
        if (r2 == 0) goto L_0x0032;
    L_0x002c:
        r1 = r2.get(r7);	 Catch:{ all -> 0x0076 }
        r1 = (com.bumptech.glide.load.model.ModelLoaderFactory) r1;	 Catch:{ all -> 0x0076 }
    L_0x0032:
        if (r1 != 0) goto L_0x0063;
    L_0x0034:
        r2 = r5.modelClassToResourceFactories;	 Catch:{ all -> 0x0076 }
        r2 = r2.keySet();	 Catch:{ all -> 0x0076 }
        r2 = r2.iterator();	 Catch:{ all -> 0x0076 }
    L_0x003e:
        r3 = r2.hasNext();	 Catch:{ all -> 0x0076 }
        if (r3 == 0) goto L_0x0063;
    L_0x0044:
        r3 = r2.next();	 Catch:{ all -> 0x0076 }
        r3 = (java.lang.Class) r3;	 Catch:{ all -> 0x0076 }
        r4 = r3.isAssignableFrom(r6);	 Catch:{ all -> 0x0076 }
        if (r4 == 0) goto L_0x003e;
    L_0x0050:
        r4 = r5.modelClassToResourceFactories;	 Catch:{ all -> 0x0076 }
        r3 = r4.get(r3);	 Catch:{ all -> 0x0076 }
        r3 = (java.util.Map) r3;	 Catch:{ all -> 0x0076 }
        if (r3 == 0) goto L_0x003e;
    L_0x005a:
        r1 = r3.get(r7);	 Catch:{ all -> 0x0076 }
        r1 = (com.bumptech.glide.load.model.ModelLoaderFactory) r1;	 Catch:{ all -> 0x0076 }
        if (r1 != 0) goto L_0x0063;
    L_0x0062:
        goto L_0x003e;
    L_0x0063:
        if (r1 == 0) goto L_0x006f;
    L_0x0065:
        r0 = r5.context;	 Catch:{ all -> 0x0076 }
        r0 = r1.build(r0, r5);	 Catch:{ all -> 0x0076 }
        r5.cacheModelLoader(r6, r7, r0);	 Catch:{ all -> 0x0076 }
        goto L_0x0074;
    L_0x006f:
        r1 = NULL_MODEL_LOADER;	 Catch:{ all -> 0x0076 }
        r5.cacheModelLoader(r6, r7, r1);	 Catch:{ all -> 0x0076 }
    L_0x0074:
        monitor-exit(r5);
        return r0;
    L_0x0076:
        r6 = move-exception;
        monitor-exit(r5);
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.model.GenericLoaderFactory.buildModelLoader(java.lang.Class, java.lang.Class):com.bumptech.glide.load.model.ModelLoader<T, Y>");
    }
}
