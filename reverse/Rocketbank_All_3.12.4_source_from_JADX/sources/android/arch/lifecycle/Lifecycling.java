package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestrictTo
public final class Lifecycling {
    private static Map<Class, Integer> sCallbackCache = new HashMap();
    private static Map<Class, List<Constructor<? extends GeneratedAdapter>>> sClassToAdapters = new HashMap();

    static GenericLifecycleObserver getCallback(Object obj) {
        if (obj instanceof FullLifecycleObserver) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj);
        }
        if (obj instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) obj;
        }
        Class cls = obj.getClass();
        if (getObserverConstructorType(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List list = (List) sClassToAdapters.get(cls);
        int i = 0;
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(createGeneratedAdapter((Constructor) list.get(0), obj));
        }
        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[list.size()];
        while (i < list.size()) {
            generatedAdapterArr[i] = createGeneratedAdapter((Constructor) list.get(i), obj);
            i++;
        }
        return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
    }

    private static GeneratedAdapter createGeneratedAdapter(Constructor<? extends GeneratedAdapter> constructor, Object obj) {
        try {
            return (GeneratedAdapter) constructor.newInstance(new Object[]{obj});
        } catch (Constructor<? extends GeneratedAdapter> constructor2) {
            throw new RuntimeException(constructor2);
        } catch (Constructor<? extends GeneratedAdapter> constructor22) {
            throw new RuntimeException(constructor22);
        } catch (Constructor<? extends GeneratedAdapter> constructor222) {
            throw new RuntimeException(constructor222);
        }
    }

    private static java.lang.reflect.Constructor<? extends android.arch.lifecycle.GeneratedAdapter> generatedConstructor(java.lang.Class<?> r6) {
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
        r0 = r6.getPackage();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = r6.getCanonicalName();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        if (r0 == 0) goto L_0x000f;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x000a:
        r0 = r0.getName();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        goto L_0x0011;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x000f:
        r0 = "";	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0011:
        r2 = r0.isEmpty();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r3 = 1;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        if (r2 == 0) goto L_0x0019;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0018:
        goto L_0x0022;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0019:
        r2 = r0.length();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2 = r2 + r3;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = r1.substring(r2);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0022:
        r2 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.<init>();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r4 = ".";	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r5 = "_";	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = r1.replace(r4, r5);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.append(r1);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = "_LifecycleAdapter";	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.append(r1);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = r2.toString();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2 = r0.isEmpty();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        if (r2 == 0) goto L_0x0042;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0041:
        goto L_0x0056;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0042:
        r2 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.<init>();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.append(r0);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r0 = ".";	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.append(r0);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2.append(r1);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = r2.toString();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0056:
        r0 = java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r2 = 0;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r1[r2] = r6;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r6 = r0.getDeclaredConstructor(r1);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        r0 = r6.isAccessible();	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
        if (r0 != 0) goto L_0x006c;	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x0069:
        r6.setAccessible(r3);	 Catch:{ ClassNotFoundException -> 0x0074, NoSuchMethodException -> 0x006d }
    L_0x006c:
        return r6;
    L_0x006d:
        r6 = move-exception;
        r0 = new java.lang.RuntimeException;
        r0.<init>(r6);
        throw r0;
    L_0x0074:
        r6 = 0;
        return r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.arch.lifecycle.Lifecycling.generatedConstructor(java.lang.Class):java.lang.reflect.Constructor<? extends android.arch.lifecycle.GeneratedAdapter>");
    }

    private static int getObserverConstructorType(Class<?> cls) {
        if (sCallbackCache.containsKey(cls)) {
            return ((Integer) sCallbackCache.get(cls)).intValue();
        }
        int resolveObserverCallbackType = resolveObserverCallbackType(cls);
        sCallbackCache.put(cls, Integer.valueOf(resolveObserverCallbackType));
        return resolveObserverCallbackType;
    }

    private static int resolveObserverCallbackType(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor generatedConstructor = generatedConstructor(cls);
        if (generatedConstructor != null) {
            sClassToAdapters.put(cls, Collections.singletonList(generatedConstructor));
            return 2;
        } else if (ClassesInfoCache.sInstance.hasLifecycleMethods(cls)) {
            return 1;
        } else {
            Class superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            int i = (superclass == null || !LifecycleObserver.class.isAssignableFrom(superclass)) ? 0 : 1;
            if (i != 0) {
                if (getObserverConstructorType(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList((Collection) sClassToAdapters.get(superclass));
            }
            Object obj = arrayList;
            for (Class cls2 : cls.getInterfaces()) {
                int i2 = (cls2 == null || !LifecycleObserver.class.isAssignableFrom(cls2)) ? 0 : 1;
                if (i2 != 0) {
                    if (getObserverConstructorType(cls2) == 1) {
                        return 1;
                    }
                    if (obj == null) {
                        obj = new ArrayList();
                    }
                    obj.addAll((Collection) sClassToAdapters.get(cls2));
                }
            }
            if (obj == null) {
                return 1;
            }
            sClassToAdapters.put(cls, obj);
            return 2;
        }
    }
}
