package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

public final class ConstructorConstructor {
    private final Map<Type, InstanceCreator<?>> instanceCreators;

    /* renamed from: com.google.gson.internal.ConstructorConstructor$4 */
    class C12274 implements ObjectConstructor<T> {
        C12274() {
        }

        public final T construct() {
            return new TreeSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$6 */
    class C12296 implements ObjectConstructor<T> {
        C12296() {
        }

        public final T construct() {
            return new LinkedHashSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$7 */
    class C12307 implements ObjectConstructor<T> {
        C12307() {
        }

        public final T construct() {
            return new ArrayDeque();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$8 */
    class C12318 implements ObjectConstructor<T> {
        C12318() {
        }

        public final T construct() {
            return new ArrayList();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$9 */
    class C12329 implements ObjectConstructor<T> {
        C12329() {
        }

        public final T construct() {
            return new ConcurrentSkipListMap();
        }
    }

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.instanceCreators = map;
    }

    public final <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        final Type type = typeToken.getType();
        typeToken = typeToken.getRawType();
        final InstanceCreator instanceCreator = (InstanceCreator) this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>() {
                public final T construct() {
                    return instanceCreator.createInstance$6d6ddcce();
                }
            };
        }
        instanceCreator = (InstanceCreator) this.instanceCreators.get(typeToken);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>() {
                public final T construct() {
                    return instanceCreator.createInstance$6d6ddcce();
                }
            };
        }
        ObjectConstructor<T> newDefaultConstructor = newDefaultConstructor(typeToken);
        if (newDefaultConstructor != null) {
            return newDefaultConstructor;
        }
        newDefaultConstructor = Collection.class.isAssignableFrom(typeToken) ? SortedSet.class.isAssignableFrom(typeToken) ? new C12274() : EnumSet.class.isAssignableFrom(typeToken) ? new ObjectConstructor<T>() {
            public final T construct() {
                if (type instanceof ParameterizedType) {
                    Type type = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type instanceof Class) {
                        return EnumSet.noneOf((Class) type);
                    }
                    StringBuilder stringBuilder = new StringBuilder("Invalid EnumSet type: ");
                    stringBuilder.append(type.toString());
                    throw new JsonIOException(stringBuilder.toString());
                }
                stringBuilder = new StringBuilder("Invalid EnumSet type: ");
                stringBuilder.append(type.toString());
                throw new JsonIOException(stringBuilder.toString());
            }
        } : Set.class.isAssignableFrom(typeToken) ? new C12296() : Queue.class.isAssignableFrom(typeToken) ? new C12307() : new C12318() : Map.class.isAssignableFrom(typeToken) ? ConcurrentNavigableMap.class.isAssignableFrom(typeToken) ? new C12329() : ConcurrentMap.class.isAssignableFrom(typeToken) ? new ObjectConstructor<T>() {
            public final T construct() {
                return new ConcurrentHashMap();
            }
        } : SortedMap.class.isAssignableFrom(typeToken) ? new ObjectConstructor<T>() {
            public final T construct() {
                return new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new ObjectConstructor<T>() {
            public final T construct() {
                return new LinkedTreeMap();
            }
        } : new ObjectConstructor<T>() {
            public final T construct() {
                return new LinkedHashMap();
            }
        } : null;
        return newDefaultConstructor != null ? newDefaultConstructor : new ObjectConstructor<T>() {
            private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();

            public final T construct() {
                try {
                    return this.unsafeAllocator.newInstance(typeToken);
                } catch (Throwable e) {
                    StringBuilder stringBuilder = new StringBuilder("Unable to invoke no-args constructor for ");
                    stringBuilder.append(type);
                    stringBuilder.append(". Registering an InstanceCreator with Gson for this type may fix this problem.");
                    throw new RuntimeException(stringBuilder.toString(), e);
                }
            }
        };
    }

    private <T> com.google.gson.internal.ObjectConstructor<T> newDefaultConstructor(java.lang.Class<? super T> r2) {
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
        r1 = this;
        r0 = 0;
        r0 = new java.lang.Class[r0];	 Catch:{ NoSuchMethodException -> 0x0017 }
        r2 = r2.getDeclaredConstructor(r0);	 Catch:{ NoSuchMethodException -> 0x0017 }
        r0 = r2.isAccessible();	 Catch:{ NoSuchMethodException -> 0x0017 }
        if (r0 != 0) goto L_0x0011;	 Catch:{ NoSuchMethodException -> 0x0017 }
    L_0x000d:
        r0 = 1;	 Catch:{ NoSuchMethodException -> 0x0017 }
        r2.setAccessible(r0);	 Catch:{ NoSuchMethodException -> 0x0017 }
    L_0x0011:
        r0 = new com.google.gson.internal.ConstructorConstructor$3;	 Catch:{ NoSuchMethodException -> 0x0017 }
        r0.<init>(r2);	 Catch:{ NoSuchMethodException -> 0x0017 }
        return r0;
    L_0x0017:
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ConstructorConstructor.newDefaultConstructor(java.lang.Class):com.google.gson.internal.ObjectConstructor<T>");
    }

    public final String toString() {
        return this.instanceCreators.toString();
    }
}
