package com.nineoldandroids.util;

public abstract class Property<T, V> {
    private final String mName;
    private final Class<V> mType;

    public abstract V get(T t);

    public Property(Class<V> cls, String str) {
        this.mName = str;
        this.mType = cls;
    }

    public void set(T t, V v) {
        v = new StringBuilder("Property ");
        v.append(this.mName);
        v.append(" is read-only");
        throw new UnsupportedOperationException(v.toString());
    }

    public final String getName() {
        return this.mName;
    }
}
