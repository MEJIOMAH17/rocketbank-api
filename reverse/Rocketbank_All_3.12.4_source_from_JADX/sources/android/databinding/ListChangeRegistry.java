package android.databinding;

import android.databinding.CallbackRegistry.NotifierCallback;
import android.databinding.ObservableList.OnListChangedCallback;
import android.support.v4.util.Pools.SynchronizedPool;

public class ListChangeRegistry extends CallbackRegistry<OnListChangedCallback, ObservableList, ListChanges> {
    private static final int ALL = 0;
    private static final int CHANGED = 1;
    private static final int INSERTED = 2;
    private static final int MOVED = 3;
    private static final NotifierCallback<OnListChangedCallback, ObservableList, ListChanges> NOTIFIER_CALLBACK = new C08771();
    private static final int REMOVED = 4;
    private static final SynchronizedPool<ListChanges> sListChanges = new SynchronizedPool(10);

    static class ListChanges {
        public int count;
        public int start;
        public int to;

        ListChanges() {
        }
    }

    /* renamed from: android.databinding.ListChangeRegistry$1 */
    static class C08771 extends NotifierCallback<OnListChangedCallback, ObservableList, ListChanges> {
        C08771() {
        }

        public final void onNotifyCallback(OnListChangedCallback onListChangedCallback, ObservableList observableList, int i, ListChanges listChanges) {
            switch (i) {
                case 1:
                    onListChangedCallback.onItemRangeChanged(observableList, listChanges.start, listChanges.count);
                    return;
                case 2:
                    onListChangedCallback.onItemRangeInserted(observableList, listChanges.start, listChanges.count);
                    return;
                case 3:
                    onListChangedCallback.onItemRangeMoved(observableList, listChanges.start, listChanges.to, listChanges.count);
                    return;
                case 4:
                    onListChangedCallback.onItemRangeRemoved(observableList, listChanges.start, listChanges.count);
                    return;
                default:
                    onListChangedCallback.onChanged(observableList);
                    return;
            }
        }
    }

    public void notifyChanged(ObservableList observableList) {
        notifyCallbacks(observableList, 0, null);
    }

    public void notifyChanged(ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 1, acquire(i, 0, i2));
    }

    public void notifyInserted(ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 2, acquire(i, 0, i2));
    }

    public void notifyMoved(ObservableList observableList, int i, int i2, int i3) {
        notifyCallbacks(observableList, 3, acquire(i, i2, i3));
    }

    public void notifyRemoved(ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 4, acquire(i, 0, i2));
    }

    private static ListChanges acquire(int i, int i2, int i3) {
        ListChanges listChanges = (ListChanges) sListChanges.acquire();
        if (listChanges == null) {
            listChanges = new ListChanges();
        }
        listChanges.start = i;
        listChanges.to = i2;
        listChanges.count = i3;
        return listChanges;
    }

    public synchronized void notifyCallbacks(ObservableList observableList, int i, ListChanges listChanges) {
        super.notifyCallbacks(observableList, i, listChanges);
        if (listChanges != null) {
            sListChanges.release(listChanges);
        }
    }

    public ListChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }
}
