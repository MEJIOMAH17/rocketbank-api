package com.jakewharton.rxbinding.view;

import android.arch.lifecycle.MethodCallsLogger;
import android.view.View;
import android.view.View.OnClickListener;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;

final class ViewClickOnSubscribe implements OnSubscribe<Void> {
    final View view;

    /* renamed from: com.jakewharton.rxbinding.view.ViewClickOnSubscribe$2 */
    class C14042 extends MainThreadSubscription {
        C14042() {
        }

        protected final void onUnsubscribe() {
            ViewClickOnSubscribe.this.view.setOnClickListener(null);
        }
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        this.view.setOnClickListener(new OnClickListener() {
            public final void onClick(View view) {
                if (subscriber.isUnsubscribed() == null) {
                    subscriber.onNext(null);
                }
            }
        });
        subscriber.add(new C14042());
    }

    ViewClickOnSubscribe(View view) {
        this.view = view;
    }
}
