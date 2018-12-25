package android.databinding;

import android.databinding.ObservableList.OnListChangedCallback;
import java.util.ArrayList;
import java.util.Collection;

public class ObservableArrayList<T> extends ArrayList<T> implements ObservableList<T> {
    private transient ListChangeRegistry mListeners = new ListChangeRegistry();

    public void addOnListChangedCallback(OnListChangedCallback onListChangedCallback) {
        if (this.mListeners == null) {
            this.mListeners = new ListChangeRegistry();
        }
        this.mListeners.add(onListChangedCallback);
    }

    public void removeOnListChangedCallback(OnListChangedCallback onListChangedCallback) {
        if (this.mListeners != null) {
            this.mListeners.remove(onListChangedCallback);
        }
    }

    public boolean add(T t) {
        super.add(t);
        notifyAdd(size() - 1, 1);
        return true;
    }

    public void add(int i, T t) {
        super.add(i, t);
        notifyAdd(i, 1);
    }

    public boolean addAll(Collection<? extends T> collection) {
        int size = size();
        collection = super.addAll(collection);
        if (collection != null) {
            notifyAdd(size, size() - size);
        }
        return collection;
    }

    public boolean addAll(int i, Collection<? extends T> collection) {
        boolean addAll = super.addAll(i, collection);
        if (addAll) {
            notifyAdd(i, collection.size());
        }
        return addAll;
    }

    public void clear() {
        int size = size();
        super.clear();
        if (size != 0) {
            notifyRemove(0, size);
        }
    }

    public T remove(int i) {
        T remove = super.remove(i);
        notifyRemove(i, 1);
        return remove;
    }

    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < null) {
            return null;
        }
        remove(indexOf);
        return true;
    }

    public T set(int i, T t) {
        t = super.set(i, t);
        if (this.mListeners != null) {
            this.mListeners.notifyChanged(this, i, 1);
        }
        return t;
    }

    protected void removeRange(int i, int i2) {
        super.removeRange(i, i2);
        notifyRemove(i, i2 - i);
    }

    private void notifyAdd(int i, int i2) {
        if (this.mListeners != null) {
            this.mListeners.notifyInserted(this, i, i2);
        }
    }

    private void notifyRemove(int i, int i2) {
        if (this.mListeners != null) {
            this.mListeners.notifyRemoved(this, i, i2);
        }
    }
}
