package com.jakewharton.rxbinding.widget;

import android.arch.lifecycle.MethodCallsLogger;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;

final class TextViewTextOnSubscribe implements OnSubscribe<CharSequence> {
    final TextView view;

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        final TextWatcher c06571 = new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (subscriber.isUnsubscribed() == 0) {
                    subscriber.onNext(charSequence);
                }
            }
        };
        this.view.addTextChangedListener(c06571);
        subscriber.add(new MainThreadSubscription() {
            protected final void onUnsubscribe() {
                TextViewTextOnSubscribe.this.view.removeTextChangedListener(c06571);
            }
        });
        subscriber.onNext(this.view.getText());
    }

    TextViewTextOnSubscribe(TextView textView) {
        this.view = textView;
    }
}
