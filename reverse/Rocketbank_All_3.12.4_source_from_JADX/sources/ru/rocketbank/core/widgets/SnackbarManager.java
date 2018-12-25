package ru.rocketbank.core.widgets;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;

final class SnackbarManager {
    private static SnackbarManager sSnackbarManager;
    private SnackbarRecord mCurrentSnackbar;
    private final Handler mHandler = new Handler(Looper.getMainLooper(), new C08491());
    private final Object mLock = new Object();
    private SnackbarRecord mNextSnackbar;

    /* renamed from: ru.rocketbank.core.widgets.SnackbarManager$1 */
    class C08491 implements android.os.Handler.Callback {
        C08491() {
        }

        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return null;
            }
            SnackbarManager.access$000(SnackbarManager.this, (SnackbarRecord) message.obj);
            return true;
        }
    }

    interface Callback {
        void dismiss(int i);

        void show();
    }

    static class SnackbarRecord {
        private final WeakReference<Callback> callback;
        private int duration;

        SnackbarRecord(int i, Callback callback) {
            this.callback = new WeakReference(callback);
            this.duration = i;
        }

        final boolean isSnackbar(Callback callback) {
            return (callback == null || this.callback.get() != callback) ? null : true;
        }
    }

    static SnackbarManager getInstance() {
        if (sSnackbarManager == null) {
            sSnackbarManager = new SnackbarManager();
        }
        return sSnackbarManager;
    }

    private SnackbarManager() {
    }

    public final void show(int i, Callback callback) {
        synchronized (this.mLock) {
            Object obj = null;
            Object obj2 = (this.mCurrentSnackbar == null || !this.mCurrentSnackbar.isSnackbar(callback)) ? null : 1;
            if (obj2 != null) {
                this.mCurrentSnackbar.duration = i;
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
                scheduleTimeoutLocked(this.mCurrentSnackbar);
                return;
            }
            obj2 = (this.mNextSnackbar == null || !this.mNextSnackbar.isSnackbar(callback)) ? null : 1;
            if (obj2 != null) {
                this.mNextSnackbar.duration = i;
            } else {
                this.mNextSnackbar = new SnackbarRecord(i, callback);
            }
            if (this.mCurrentSnackbar != 0) {
                Callback callback2 = (Callback) this.mCurrentSnackbar.callback.get();
                if (callback2 != null) {
                    callback2.dismiss(4);
                    obj = 1;
                }
                if (obj != null) {
                    return;
                }
            }
            this.mCurrentSnackbar = 0;
            showNextSnackbarLocked();
        }
    }

    public final void dismiss(Callback callback, int i) {
        synchronized (this.mLock) {
            Object obj = null;
            Object obj2 = (this.mCurrentSnackbar == null || !this.mCurrentSnackbar.isSnackbar(callback)) ? null : 1;
            if (obj2 != null) {
                callback = (Callback) this.mCurrentSnackbar.callback.get();
                if (callback != null) {
                    callback.dismiss(i);
                }
            } else {
                if (!(this.mNextSnackbar == null || this.mNextSnackbar.isSnackbar(callback) == null)) {
                    obj = 1;
                }
                if (obj != null) {
                    callback = (Callback) this.mNextSnackbar.callback.get();
                    if (callback != null) {
                        callback.dismiss(i);
                    }
                }
            }
        }
    }

    public final void onDismissed(Callback callback) {
        synchronized (this.mLock) {
            callback = (this.mCurrentSnackbar == null || this.mCurrentSnackbar.isSnackbar(callback) == null) ? null : true;
            if (callback != null) {
                this.mCurrentSnackbar = null;
                if (this.mNextSnackbar != null) {
                    showNextSnackbarLocked();
                }
            }
        }
    }

    public final void onShown(Callback callback) {
        synchronized (this.mLock) {
            callback = (this.mCurrentSnackbar == null || this.mCurrentSnackbar.isSnackbar(callback) == null) ? null : true;
            if (callback != null) {
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    public final void cancelTimeout(Callback callback) {
        synchronized (this.mLock) {
            callback = (this.mCurrentSnackbar == null || this.mCurrentSnackbar.isSnackbar(callback) == null) ? null : true;
            if (callback != null) {
                this.mHandler.removeCallbacksAndMessages(this.mCurrentSnackbar);
            }
        }
    }

    public final void restoreTimeout(Callback callback) {
        synchronized (this.mLock) {
            callback = (this.mCurrentSnackbar == null || this.mCurrentSnackbar.isSnackbar(callback) == null) ? null : true;
            if (callback != null) {
                scheduleTimeoutLocked(this.mCurrentSnackbar);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean isCurrentOrNext(ru.rocketbank.core.widgets.SnackbarManager.Callback r5) {
        /*
        r4 = this;
        r0 = r4.mLock;
        monitor-enter(r0);
        r1 = r4.mCurrentSnackbar;	 Catch:{ all -> 0x002a }
        r2 = 0;
        r3 = 1;
        if (r1 == 0) goto L_0x0013;
    L_0x0009:
        r1 = r4.mCurrentSnackbar;	 Catch:{ all -> 0x002a }
        r1 = r1.isSnackbar(r5);	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x0013;
    L_0x0011:
        r1 = r3;
        goto L_0x0014;
    L_0x0013:
        r1 = r2;
    L_0x0014:
        if (r1 != 0) goto L_0x0027;
    L_0x0016:
        r1 = r4.mNextSnackbar;	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x0024;
    L_0x001a:
        r1 = r4.mNextSnackbar;	 Catch:{ all -> 0x002a }
        r5 = r1.isSnackbar(r5);	 Catch:{ all -> 0x002a }
        if (r5 == 0) goto L_0x0024;
    L_0x0022:
        r5 = r3;
        goto L_0x0025;
    L_0x0024:
        r5 = r2;
    L_0x0025:
        if (r5 == 0) goto L_0x0028;
    L_0x0027:
        r2 = r3;
    L_0x0028:
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        return r2;
    L_0x002a:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.SnackbarManager.isCurrentOrNext(ru.rocketbank.core.widgets.SnackbarManager$Callback):boolean");
    }

    private void showNextSnackbarLocked() {
        if (this.mNextSnackbar != null) {
            this.mCurrentSnackbar = this.mNextSnackbar;
            this.mNextSnackbar = null;
            Callback callback = (Callback) this.mCurrentSnackbar.callback.get();
            if (callback != null) {
                callback.show();
                return;
            }
            this.mCurrentSnackbar = null;
        }
    }

    private void scheduleTimeoutLocked(SnackbarRecord snackbarRecord) {
        if (snackbarRecord.duration != -2) {
            int i = 2750;
            if (snackbarRecord.duration > 0) {
                i = snackbarRecord.duration;
            } else if (snackbarRecord.duration == -1) {
                i = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            }
            this.mHandler.removeCallbacksAndMessages(snackbarRecord);
            this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 0, snackbarRecord), (long) i);
        }
    }

    static /* synthetic */ void access$000(SnackbarManager snackbarManager, SnackbarRecord snackbarRecord) {
        synchronized (snackbarManager.mLock) {
            if (snackbarManager.mCurrentSnackbar == snackbarRecord || snackbarManager.mNextSnackbar == snackbarRecord) {
                Callback callback = (Callback) snackbarRecord.callback.get();
                if (callback != null) {
                    callback.dismiss(2);
                }
            }
        }
    }
}
