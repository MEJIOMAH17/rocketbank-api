package android.support.v7.util;

import com.google.maps.android.clustering.ClusterManager.OnClusterInfoWindowClickListener;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

public final class SortedList<T> {
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mSize;
    private final Class<T> mTClass;

    public static abstract class Callback<T2> implements OnClusterInfoWindowClickListener, Comparator<T2> {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        public abstract int compare(T2 t2, T2 t22);

        public Object getChangePayload(T2 t2, T2 t22) {
            return null;
        }

        public abstract void onChanged(int i, int i2);

        public void onChanged(int i, int i2, Object obj) {
            onChanged(i, i2);
        }
    }

    public static class BatchedCallback<T2> extends Callback<T2> {
        private final BatchingListUpdateCallback mBatchingListUpdateCallback = new BatchingListUpdateCallback(this.mWrappedCallback);
        final Callback<T2> mWrappedCallback;

        public BatchedCallback(Callback<T2> callback) {
            this.mWrappedCallback = callback;
        }

        public final int compare(T2 t2, T2 t22) {
            return this.mWrappedCallback.compare(t2, t22);
        }

        public final void onInserted(int i, int i2) {
            this.mBatchingListUpdateCallback.onInserted(i, i2);
        }

        public final void onRemoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onRemoved(i, i2);
        }

        public final void onMoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onMoved(i, i2);
        }

        public final void onChanged(int i, int i2) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, null);
        }

        public final void onChanged(int i, int i2, Object obj) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, obj);
        }

        public final boolean areContentsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areContentsTheSame(t2, t22);
        }

        public final boolean areItemsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areItemsTheSame(t2, t22);
        }

        public final Object getChangePayload(T2 t2, T2 t22) {
            return this.mWrappedCallback.getChangePayload(t2, t22);
        }

        public final void dispatchLastEvent() {
            this.mBatchingListUpdateCallback.dispatchLastEvent();
        }
    }

    public SortedList(Class<T> cls, Callback<T> callback) {
        this(cls, callback, (byte) 0);
    }

    private SortedList(Class<T> cls, Callback<T> callback, byte b) {
        this.mTClass = cls;
        this.mData = (Object[]) Array.newInstance(cls, (byte) 10);
        this.mCallback = callback;
        this.mSize = null;
    }

    public final int size() {
        return this.mSize;
    }

    public final int add(T t) {
        return add(t, true);
    }

    public final void beginBatchedUpdates() {
        if (!(this.mCallback instanceof BatchedCallback)) {
            if (this.mBatchedCallback == null) {
                this.mBatchedCallback = new BatchedCallback(this.mCallback);
            }
            this.mCallback = this.mBatchedCallback;
        }
    }

    public final void endBatchedUpdates() {
        if (this.mCallback instanceof BatchedCallback) {
            ((BatchedCallback) this.mCallback).dispatchLastEvent();
        }
        if (this.mCallback == this.mBatchedCallback) {
            this.mCallback = this.mBatchedCallback.mWrappedCallback;
        }
    }

    private int add(T t, boolean z) {
        int findIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 1);
        if (findIndexOf == -1) {
            findIndexOf = 0;
        } else if (findIndexOf < this.mSize) {
            Object obj = this.mData[findIndexOf];
            if (this.mCallback.areItemsTheSame(obj, t)) {
                if (this.mCallback.areContentsTheSame(obj, t)) {
                    this.mData[findIndexOf] = t;
                    return findIndexOf;
                }
                this.mData[findIndexOf] = t;
                this.mCallback.onChanged(findIndexOf, 1, this.mCallback.getChangePayload(obj, t));
                return findIndexOf;
            }
        }
        addToData(findIndexOf, t);
        if (z) {
            this.mCallback.onInserted(findIndexOf, 1);
        }
        return findIndexOf;
    }

    public final T removeItemAt(int i) {
        T t = get(i);
        removeItemAtIndex(i, true);
        return t;
    }

    private void removeItemAtIndex(int i, boolean z) {
        System.arraycopy(this.mData, i + 1, this.mData, i, (this.mSize - i) - 1);
        this.mSize--;
        this.mData[this.mSize] = null;
        if (z) {
            this.mCallback.onRemoved(i, 1);
        }
    }

    public final void updateItemAt(int i, T t) {
        boolean z;
        T t2 = get(i);
        if (t2 != t) {
            if (this.mCallback.areContentsTheSame(t2, t)) {
                z = false;
                if (t2 == t && this.mCallback.compare(t2, t) == 0) {
                    this.mData[i] = t;
                    if (z) {
                        this.mCallback.onChanged(i, 1, this.mCallback.getChangePayload(t2, t));
                    }
                    return;
                }
                if (z) {
                    this.mCallback.onChanged(i, 1, this.mCallback.getChangePayload(t2, t));
                }
                removeItemAtIndex(i, false);
                t = add(t, false);
                if (i != t) {
                    this.mCallback.onMoved(i, t);
                }
            }
        }
        z = true;
        if (t2 == t) {
        }
        if (z) {
            this.mCallback.onChanged(i, 1, this.mCallback.getChangePayload(t2, t));
        }
        removeItemAtIndex(i, false);
        t = add(t, false);
        if (i != t) {
            this.mCallback.onMoved(i, t);
        }
    }

    public final T get(int i) throws IndexOutOfBoundsException {
        if (i < this.mSize) {
            if (i >= 0) {
                return this.mData[i];
            }
        }
        StringBuilder stringBuilder = new StringBuilder("Asked to get item at ");
        stringBuilder.append(i);
        stringBuilder.append(" but size is ");
        stringBuilder.append(this.mSize);
        throw new IndexOutOfBoundsException(stringBuilder.toString());
    }

    public final int indexOf(T t) {
        return findIndexOf(t, this.mData, 0, this.mSize, 4);
    }

    private int findIndexOf(T t, T[] tArr, int i, int i2, int i3) {
        while (i < i2) {
            int i4 = (i + i2) / 2;
            Object obj = tArr[i4];
            int compare = this.mCallback.compare(obj, t);
            if (compare < 0) {
                i = i4 + 1;
            } else if (compare != 0) {
                i2 = i4;
            } else if (this.mCallback.areItemsTheSame(obj, t) != null) {
                return i4;
            } else {
                t = linearEqualitySearch(t, i4, i, i2);
                return (i3 == 1 && t == -1) ? i4 : t;
            }
        }
        if (i3 == 1) {
            return i;
        }
        return -1;
    }

    private int linearEqualitySearch(T t, int i, int i2, int i3) {
        int i4 = i - 1;
        while (i4 >= i2) {
            Object obj = this.mData[i4];
            if (this.mCallback.compare(obj, t) != 0) {
                break;
            } else if (this.mCallback.areItemsTheSame(obj, t)) {
                return i4;
            } else {
                i4--;
            }
        }
        do {
            i++;
            if (i < i3) {
                i2 = this.mData[i];
                if (this.mCallback.compare(i2, t) == 0) {
                }
            }
            return -1;
        } while (this.mCallback.areItemsTheSame(i2, t) == 0);
        return i;
    }

    private void addToData(int i, T t) {
        if (i > this.mSize) {
            StringBuilder stringBuilder = new StringBuilder("cannot add item to ");
            stringBuilder.append(i);
            stringBuilder.append(" because size is ");
            stringBuilder.append(this.mSize);
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        }
        if (this.mSize == this.mData.length) {
            Object[] objArr = (Object[]) Array.newInstance(this.mTClass, this.mData.length + 10);
            System.arraycopy(this.mData, 0, objArr, 0, i);
            objArr[i] = t;
            System.arraycopy(this.mData, i, objArr, i + 1, this.mSize - i);
            this.mData = objArr;
        } else {
            Object obj = this.mData;
            System.arraycopy(obj, i, obj, i + 1, this.mSize - i);
            this.mData[i] = t;
        }
        this.mSize++;
    }

    public final void clear() {
        if (this.mSize != 0) {
            int i = this.mSize;
            Arrays.fill(this.mData, 0, i, null);
            this.mSize = 0;
            this.mCallback.onRemoved(0, i);
        }
    }

    public final boolean remove(T t) {
        t = findIndexOf(t, this.mData, 0, this.mSize, 2);
        if (t == -1) {
            return null;
        }
        removeItemAtIndex(t, true);
        return true;
    }
}
