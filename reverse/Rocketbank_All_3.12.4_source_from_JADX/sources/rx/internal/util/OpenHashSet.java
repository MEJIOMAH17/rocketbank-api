package rx.internal.util;

import java.util.Arrays;
import rx.functions.Action1;
import rx.internal.util.unsafe.Pow2;

public final class OpenHashSet<T> {
    private static final int INT_PHI = -1640531527;
    T[] keys;
    final float loadFactor;
    int mask;
    int maxSize;
    int size;

    static int mix(int i) {
        i *= INT_PHI;
        return i ^ (i >>> 16);
    }

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public OpenHashSet(int i) {
        this(i, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.loadFactor = f;
        i = Pow2.roundToPowerOfTwo(i);
        this.mask = i - 1;
        this.maxSize = (int) (f * ((float) i));
        this.keys = (Object[]) new Object[i];
    }

    public final boolean add(T t) {
        Object[] objArr = this.keys;
        int i = this.mask;
        int mix = mix(t.hashCode()) & i;
        Object obj = objArr[mix];
        if (obj != null) {
            if (obj.equals(t)) {
                return false;
            }
            do {
                mix = (mix + 1) & i;
                obj = objArr[mix];
                if (obj != null) {
                }
            } while (!obj.equals(t));
            return false;
        }
        objArr[mix] = t;
        t = this.size + 1;
        this.size = t;
        if (t >= this.maxSize) {
            rehash();
        }
        return true;
    }

    public final boolean remove(T t) {
        Object[] objArr = this.keys;
        int i = this.mask;
        int mix = mix(t.hashCode()) & i;
        Object obj = objArr[mix];
        if (obj == null) {
            return false;
        }
        if (obj.equals(t)) {
            return removeEntry(mix, objArr, i);
        }
        do {
            mix = (mix + 1) & i;
            obj = objArr[mix];
            if (obj == null) {
                return false;
            }
        } while (!obj.equals(t));
        return removeEntry(mix, objArr, i);
    }

    final boolean removeEntry(int i, T[] tArr, int i2) {
        this.size--;
        while (true) {
            Object obj;
            int i3 = (i + 1) & i2;
            while (true) {
                obj = tArr[i3];
                if (obj == null) {
                    tArr[i] = 0;
                    return true;
                }
                int mix = mix(obj.hashCode()) & i2;
                if (i > i3) {
                    if (i >= mix) {
                        if (mix > i3) {
                            break;
                        }
                    } else {
                        continue;
                    }
                    i3 = (i3 + 1) & i2;
                } else if (i >= mix) {
                    break;
                } else if (mix > i3) {
                    break;
                } else {
                    i3 = (i3 + 1) & i2;
                }
            }
            tArr[i] = obj;
            i = i3;
        }
    }

    public final void clear(Action1<? super T> action1) {
        if (this.size != 0) {
            Object[] objArr = this.keys;
            for (Object obj : objArr) {
                if (obj != null) {
                    action1.call(obj);
                }
            }
            Arrays.fill(objArr, null);
            this.size = 0;
        }
    }

    public final void terminate() {
        this.size = 0;
        this.keys = new Object[0];
    }

    final void rehash() {
        Object[] objArr = this.keys;
        int length = objArr.length;
        int i = length << 1;
        int i2 = i - 1;
        Object[] objArr2 = new Object[i];
        int i3 = this.size;
        while (true) {
            int i4 = i3 - 1;
            if (i3 != 0) {
                do {
                    length--;
                } while (objArr[length] == null);
                i3 = mix(objArr[length].hashCode()) & i2;
                if (objArr2[i3] != null) {
                    do {
                        i3 = (i3 + 1) & i2;
                    } while (objArr2[i3] != null);
                }
                objArr2[i3] = objArr[length];
                i3 = i4;
            } else {
                this.mask = i2;
                this.maxSize = (int) (((float) i) * this.loadFactor);
                this.keys = objArr2;
                return;
            }
        }
    }

    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final T[] values() {
        return this.keys;
    }
}
