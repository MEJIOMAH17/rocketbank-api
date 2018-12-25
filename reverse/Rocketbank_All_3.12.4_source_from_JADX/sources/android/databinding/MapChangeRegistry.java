package android.databinding;

import android.databinding.CallbackRegistry.NotifierCallback;
import android.databinding.ObservableMap.OnMapChangedCallback;

public class MapChangeRegistry extends CallbackRegistry<OnMapChangedCallback, ObservableMap, Object> {
    private static NotifierCallback<OnMapChangedCallback, ObservableMap, Object> NOTIFIER_CALLBACK = new C08781();

    /* renamed from: android.databinding.MapChangeRegistry$1 */
    static class C08781 extends NotifierCallback<OnMapChangedCallback, ObservableMap, Object> {
        C08781() {
        }

        public final void onNotifyCallback(OnMapChangedCallback onMapChangedCallback, ObservableMap observableMap, int i, Object obj) {
            onMapChangedCallback.onMapChanged(observableMap, obj);
        }
    }

    public MapChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }

    public void notifyChange(ObservableMap observableMap, Object obj) {
        notifyCallbacks(observableMap, 0, obj);
    }
}
