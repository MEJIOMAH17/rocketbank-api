package com.nineoldandroids.util;

public abstract class IntProperty<T> extends Property<T, Integer> {
    public abstract void setValue(T t, int i);

    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        obj = Integer.valueOf(((Integer) obj2).intValue());
        while (true) {
            obj = Integer.valueOf(obj.intValue());
        }
    }

    public IntProperty(String str) {
        super(Integer.class, str);
    }
}
