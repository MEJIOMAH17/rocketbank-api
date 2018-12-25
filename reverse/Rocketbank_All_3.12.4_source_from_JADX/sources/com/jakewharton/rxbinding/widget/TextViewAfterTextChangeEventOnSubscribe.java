package com.jakewharton.rxbinding.widget;

import android.arch.lifecycle.MethodCallsLogger;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;

final class TextViewAfterTextChangeEventOnSubscribe implements OnSubscribe<TextViewAfterTextChangeEvent> {
    final TextView view;

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        final TextWatcher c06541 = new TextWatcher() {
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void afterTextChanged(Editable editable) {
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onNext(TextViewAfterTextChangeEvent.create(TextViewAfterTextChangeEventOnSubscribe.this.view, editable));
                }
            }
        };
        this.view.addTextChangedListener(c06541);
        subscriber.add(new MainThreadSubscription() {
            protected final void onUnsubscribe() {
                TextViewAfterTextChangeEventOnSubscribe.this.view.removeTextChangedListener(c06541);
            }
        });
        subscriber.onNext(TextViewAfterTextChangeEvent.create(this.view, this.view.getEditableText()));
    }

    TextViewAfterTextChangeEventOnSubscribe(TextView textView) {
        this.view = textView;
    }
}
