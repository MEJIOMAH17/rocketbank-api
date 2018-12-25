package com.nineoldandroids.util;

public abstract class FloatProperty<T> extends Property<T, Float> {
    public abstract void setValue(T t, float f);

    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        setValue(obj, ((Float) obj2).floatValue());
    }

    public FloatProperty(String str) {
        super(Float.class, str);
    }
}
