package com.jakewharton.rxbinding.widget;

import android.arch.lifecycle.MethodCallsLogger;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;
import rx.functions.Func1;

final class TextViewEditorActionOnSubscribe implements OnSubscribe<Integer> {
    final Func1<? super Integer, Boolean> handled;
    final TextView view;

    /* renamed from: com.jakewharton.rxbinding.widget.TextViewEditorActionOnSubscribe$2 */
    class C14062 extends MainThreadSubscription {
        C14062() {
        }

        protected final void onUnsubscribe() {
            TextViewEditorActionOnSubscribe.this.view.setOnEditorActionListener(null);
        }
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        this.view.setOnEditorActionListener(new OnEditorActionListener() {
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (((Boolean) TextViewEditorActionOnSubscribe.this.handled.call(Integer.valueOf(i))).booleanValue() == null) {
                    return null;
                }
                if (subscriber.isUnsubscribed() == null) {
                    subscriber.onNext(Integer.valueOf(i));
                }
                return true;
            }
        });
        subscriber.add(new C14062());
    }

    TextViewEditorActionOnSubscribe(TextView textView, Func1<? super Integer, Boolean> func1) {
        this.view = textView;
        this.handled = func1;
    }
}
