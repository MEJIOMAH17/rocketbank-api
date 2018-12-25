package android.databinding;

import android.databinding.CallbackRegistry.NotifierCallback;
import android.databinding.Observable.OnPropertyChangedCallback;

public class PropertyChangeRegistry extends CallbackRegistry<OnPropertyChangedCallback, Observable, Void> {
    private static final NotifierCallback<OnPropertyChangedCallback, Observable, Void> NOTIFIER_CALLBACK = new C08791();

    /* renamed from: android.databinding.PropertyChangeRegistry$1 */
    static class C08791 extends NotifierCallback<OnPropertyChangedCallback, Observable, Void> {
        C08791() {
        }

        public final void onNotifyCallback(OnPropertyChangedCallback onPropertyChangedCallback, Observable observable, int i, Void voidR) {
            onPropertyChangedCallback.onPropertyChanged(observable, i);
        }
    }

    public PropertyChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }

    public void notifyChange(Observable observable, int i) {
        notifyCallbacks(observable, i, null);
    }
}
