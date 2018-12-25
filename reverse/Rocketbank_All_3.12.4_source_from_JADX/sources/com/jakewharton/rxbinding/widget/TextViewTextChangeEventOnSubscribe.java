package com.jakewharton.rxbinding.widget;

import android.arch.lifecycle.MethodCallsLogger;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;

final class TextViewTextChangeEventOnSubscribe implements OnSubscribe<TextViewTextChangeEvent> {
    final TextView view;

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        final TextWatcher c06561 = new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onNext(TextViewTextChangeEvent.create(TextViewTextChangeEventOnSubscribe.this.view, charSequence, i, i2, i3));
                }
            }
        };
        this.view.addTextChangedListener(c06561);
        subscriber.add(new MainThreadSubscription() {
            protected final void onUnsubscribe() {
                TextViewTextChangeEventOnSubscribe.this.view.removeTextChangedListener(c06561);
            }
        });
        subscriber.onNext(TextViewTextChangeEvent.create(this.view, this.view.getText(), 0, 0, 0));
    }

    TextViewTextChangeEventOnSubscribe(TextView textView) {
        this.view = textView;
    }
}
