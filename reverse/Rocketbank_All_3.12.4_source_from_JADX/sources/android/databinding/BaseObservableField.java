package android.databinding;

import android.databinding.Observable.OnPropertyChangedCallback;

abstract class BaseObservableField extends BaseObservable {

    class DependencyCallback extends OnPropertyChangedCallback {
        DependencyCallback() {
        }

        public void onPropertyChanged(Observable observable, int i) {
            BaseObservableField.this.notifyChange();
        }
    }

    public BaseObservableField(Observable... observableArr) {
        if (observableArr != null && observableArr.length != 0) {
            OnPropertyChangedCallback dependencyCallback = new DependencyCallback();
            for (Observable addOnPropertyChangedCallback : observableArr) {
                addOnPropertyChangedCallback.addOnPropertyChangedCallback(dependencyCallback);
            }
        }
    }
}
