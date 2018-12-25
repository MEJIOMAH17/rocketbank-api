package android.databinding;

import java.util.ArrayList;
import java.util.List;

public class CallbackRegistry<C, T, A> implements Cloneable {
    private static final String TAG = "CallbackRegistry";
    private List<C> mCallbacks = new ArrayList();
    private long mFirst64Removed = 0;
    private int mNotificationLevel;
    private final NotifierCallback<C, T, A> mNotifier;
    private long[] mRemainderRemoved;

    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C c, T t, int i, A a);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.mNotifier = notifierCallback;
    }

    public synchronized void notifyCallbacks(T t, int i, A a) {
        this.mNotificationLevel++;
        notifyRecurse(t, i, a);
        this.mNotificationLevel--;
        if (this.mNotificationLevel == null) {
            if (this.mRemainderRemoved != null) {
                for (t = this.mRemainderRemoved.length - 1; t >= null; t--) {
                    long j = this.mRemainderRemoved[t];
                    if (j != 0) {
                        removeRemovedCallbacks((t + 1) << 6, j);
                        this.mRemainderRemoved[t] = 0;
                    }
                }
            }
            if (this.mFirst64Removed != 0) {
                removeRemovedCallbacks(null, this.mFirst64Removed);
                this.mFirst64Removed = 0;
            }
        }
    }

    private void notifyFirst64(T t, int i, A a) {
        notifyCallbacks(t, i, a, 0, Math.min(64, this.mCallbacks.size()), this.mFirst64Removed);
    }

    private void notifyRecurse(T t, int i, A a) {
        int size = this.mCallbacks.size();
        int length = this.mRemainderRemoved == null ? -1 : this.mRemainderRemoved.length - 1;
        notifyRemainder(t, i, a, length);
        notifyCallbacks(t, i, a, (length + 2) << 6, size, 0);
    }

    private void notifyRemainder(T t, int i, A a, int i2) {
        if (i2 < 0) {
            notifyFirst64(t, i, a);
            return;
        }
        long j = this.mRemainderRemoved[i2];
        int i3 = (i2 + 1) << 6;
        int min = Math.min(this.mCallbacks.size(), i3 + 64);
        notifyRemainder(t, i, a, i2 - 1);
        notifyCallbacks(t, i, a, i3, min, j);
    }

    private void notifyCallbacks(T t, int i, A a, int i2, int i3, long j) {
        long j2 = 1;
        while (i2 < i3) {
            if ((j & j2) == 0) {
                this.mNotifier.onNotifyCallback(this.mCallbacks.get(i2), t, i, a);
            }
            j2 <<= 1;
            i2++;
        }
    }

    public synchronized void add(C c) {
        if (c == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        int lastIndexOf = this.mCallbacks.lastIndexOf(c);
        if (lastIndexOf < 0 || isRemoved(lastIndexOf)) {
            this.mCallbacks.add(c);
        }
    }

    private boolean isRemoved(int i) {
        if (i < 64) {
            return (this.mFirst64Removed & (1 << i)) != 0;
        } else if (this.mRemainderRemoved == null) {
            return false;
        } else {
            int i2 = (i / 64) - 1;
            return i2 < this.mRemainderRemoved.length && (this.mRemainderRemoved[i2] & (1 << (i % 64))) != 0;
        }
    }

    private void removeRemovedCallbacks(int i, long j) {
        long j2 = Long.MIN_VALUE;
        for (int i2 = (i + 64) - 1; i2 >= i; i2--) {
            if ((j & j2) != 0) {
                this.mCallbacks.remove(i2);
            }
            j2 >>>= 1;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void remove(C r2) {
        /*
        r1 = this;
        monitor-enter(r1);
        r0 = r1.mNotificationLevel;	 Catch:{ all -> 0x0019 }
        if (r0 != 0) goto L_0x000c;
    L_0x0005:
        r0 = r1.mCallbacks;	 Catch:{ all -> 0x0019 }
        r0.remove(r2);	 Catch:{ all -> 0x0019 }
        monitor-exit(r1);
        return;
    L_0x000c:
        r0 = r1.mCallbacks;	 Catch:{ all -> 0x0019 }
        r2 = r0.lastIndexOf(r2);	 Catch:{ all -> 0x0019 }
        if (r2 < 0) goto L_0x0017;
    L_0x0014:
        r1.setRemovalBit(r2);	 Catch:{ all -> 0x0019 }
    L_0x0017:
        monitor-exit(r1);
        return;
    L_0x0019:
        r2 = move-exception;
        monitor-exit(r1);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.databinding.CallbackRegistry.remove(java.lang.Object):void");
    }

    private void setRemovalBit(int i) {
        if (i < 64) {
            this.mFirst64Removed |= 1 << i;
            return;
        }
        int i2 = (i / 64) - 1;
        if (this.mRemainderRemoved == null) {
            this.mRemainderRemoved = new long[(this.mCallbacks.size() / 64)];
        } else if (this.mRemainderRemoved.length <= i2) {
            Object obj = new long[(this.mCallbacks.size() / 64)];
            System.arraycopy(this.mRemainderRemoved, 0, obj, 0, this.mRemainderRemoved.length);
            this.mRemainderRemoved = obj;
        }
        long j = 1 << (i % 64);
        i = this.mRemainderRemoved;
        i[i2] = i[i2] | j;
    }

    public synchronized ArrayList<C> copyCallbacks() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList(this.mCallbacks.size());
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                arrayList.add(this.mCallbacks.get(i));
            }
        }
        return arrayList;
    }

    public synchronized void copyCallbacks(List<C> list) {
        list.clear();
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                list.add(this.mCallbacks.get(i));
            }
        }
    }

    public synchronized boolean isEmpty() {
        if (this.mCallbacks.isEmpty()) {
            return true;
        }
        if (this.mNotificationLevel == 0) {
            return false;
        }
        int size = this.mCallbacks.size();
        for (int i = 0; i < size; i++) {
            if (!isRemoved(i)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void clear() {
        /*
        r1 = this;
        monitor-enter(r1);
        r0 = r1.mNotificationLevel;	 Catch:{ all -> 0x0026 }
        if (r0 != 0) goto L_0x000c;
    L_0x0005:
        r0 = r1.mCallbacks;	 Catch:{ all -> 0x0026 }
        r0.clear();	 Catch:{ all -> 0x0026 }
        monitor-exit(r1);
        return;
    L_0x000c:
        r0 = r1.mCallbacks;	 Catch:{ all -> 0x0026 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0026 }
        if (r0 != 0) goto L_0x0024;
    L_0x0014:
        r0 = r1.mCallbacks;	 Catch:{ all -> 0x0026 }
        r0 = r0.size();	 Catch:{ all -> 0x0026 }
        r0 = r0 + -1;
    L_0x001c:
        if (r0 < 0) goto L_0x0024;
    L_0x001e:
        r1.setRemovalBit(r0);	 Catch:{ all -> 0x0026 }
        r0 = r0 + -1;
        goto L_0x001c;
    L_0x0024:
        monitor-exit(r1);
        return;
    L_0x0026:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.databinding.CallbackRegistry.clear():void");
    }

    public synchronized CallbackRegistry<C, T, A> clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.mFirst64Removed = 0;
                callbackRegistry.mRemainderRemoved = null;
                int i = 0;
                callbackRegistry.mNotificationLevel = 0;
                callbackRegistry.mCallbacks = new ArrayList();
                int size = this.mCallbacks.size();
                while (i < size) {
                    if (!isRemoved(i)) {
                        callbackRegistry.mCallbacks.add(this.mCallbacks.get(i));
                    }
                    i++;
                }
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return callbackRegistry;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            callbackRegistry = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return callbackRegistry;
        }
        return callbackRegistry;
    }
}
