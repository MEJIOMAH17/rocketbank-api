package com.google.gson.internal;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class Primitives {
    private static final Map<Class<?>, Class<?>> PRIMITIVE_TO_WRAPPER_TYPE;
    private static final Map<Class<?>, Class<?>> WRAPPER_TO_PRIMITIVE_TYPE;

    static {
        Map hashMap = new HashMap(16);
        Map hashMap2 = new HashMap(16);
        Class cls = Boolean.TYPE;
        Class cls2 = Boolean.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Byte.TYPE;
        cls2 = Byte.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Character.TYPE;
        cls2 = Character.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Double.TYPE;
        cls2 = Double.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Float.TYPE;
        cls2 = Float.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Integer.TYPE;
        cls2 = Integer.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Long.TYPE;
        cls2 = Long.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Short.TYPE;
        cls2 = Short.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        cls = Void.TYPE;
        cls2 = Void.class;
        hashMap.put(cls, cls2);
        hashMap2.put(cls2, cls);
        PRIMITIVE_TO_WRAPPER_TYPE = Collections.unmodifiableMap(hashMap);
        WRAPPER_TO_PRIMITIVE_TYPE = Collections.unmodifiableMap(hashMap2);
    }

    public static boolean isPrimitive(Type type) {
        return PRIMITIVE_TO_WRAPPER_TYPE.containsKey(type);
    }

    public static <T> Class<T> wrap(Class<T> cls) {
        Map map = PRIMITIVE_TO_WRAPPER_TYPE;
        if (cls == null) {
            throw new NullPointerException();
        }
        Class<T> cls2 = (Class) map.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
