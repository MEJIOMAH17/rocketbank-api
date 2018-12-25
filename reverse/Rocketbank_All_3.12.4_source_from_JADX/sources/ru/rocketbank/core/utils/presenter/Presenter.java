package ru.rocketbank.core.utils.presenter;

import android.os.Bundle;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Presenter.kt */
public class Presenter {
    private boolean isRestarted;
    private final CopyOnWriteArrayList<OnDestroyListener> onDestroyListeners = new CopyOnWriteArrayList();

    /* compiled from: Presenter.kt */
    public interface OnDestroyListener {
        void onDestroy();
    }

    public void onAttached(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "target");
    }

    public void onDetached(Object obj) {
        Intrinsics.checkParameterIsNotNull(obj, "target");
    }

    public void onPause() {
    }

    public void onRestart() {
    }

    public void onSavedInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
    }

    public final boolean isRestarted() {
        return this.isRestarted;
    }

    public final void setRestarted(boolean z) {
        this.isRestarted = z;
    }

    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.isRestarted = true;
        }
    }

    public void onDestroy() {
        Iterator it = this.onDestroyListeners.iterator();
        while (it.hasNext()) {
            ((OnDestroyListener) it.next()).onDestroy();
        }
    }

    public final void addOnDestroyListener(OnDestroyListener onDestroyListener) {
        Intrinsics.checkParameterIsNotNull(onDestroyListener, "onDestroyListener");
        this.onDestroyListeners.add(onDestroyListener);
    }

    public final void removeOnDestroyListener(OnDestroyListener onDestroyListener) {
        Intrinsics.checkParameterIsNotNull(onDestroyListener, "onDestroyListener");
        this.onDestroyListeners.remove(onDestroyListener);
    }
}
