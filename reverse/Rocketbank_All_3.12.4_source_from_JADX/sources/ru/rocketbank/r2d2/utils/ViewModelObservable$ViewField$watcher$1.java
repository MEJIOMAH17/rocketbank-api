package ru.rocketbank.r2d2.utils;

import android.text.Editable;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: ViewModelObservable.kt */
public final class ViewModelObservable$ViewField$watcher$1 extends TextWatcherAbstract {
    final /* synthetic */ ViewField this$0;

    ViewModelObservable$ViewField$watcher$1(ViewField viewField) {
        this.this$0 = viewField;
    }

    public final void afterTextChanged(Editable editable) {
        this.this$0.setValue(String.valueOf(editable));
        editable = this.this$0.lazyValidObservable;
        if (editable != null) {
            editable.onNext(Boolean.valueOf(this.this$0.getValid()));
        }
    }
}
