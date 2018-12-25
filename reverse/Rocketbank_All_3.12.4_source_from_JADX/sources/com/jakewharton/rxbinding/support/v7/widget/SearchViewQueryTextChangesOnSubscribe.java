package com.jakewharton.rxbinding.support.v7.widget;

import android.arch.lifecycle.MethodCallsLogger;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.MainThreadSubscription;

final class SearchViewQueryTextChangesOnSubscribe implements OnSubscribe<CharSequence> {
    final SearchView view;

    /* renamed from: com.jakewharton.rxbinding.support.v7.widget.SearchViewQueryTextChangesOnSubscribe$2 */
    class C14032 extends MainThreadSubscription {
        C14032() {
        }

        protected final void onUnsubscribe() {
            SearchViewQueryTextChangesOnSubscribe.this.view.setOnQueryTextListener(null);
        }
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        final Subscriber subscriber = (Subscriber) obj;
        MethodCallsLogger.checkUiThread();
        this.view.setOnQueryTextListener(new OnQueryTextListener() {
            public final boolean onQueryTextSubmit(String str) {
                return false;
            }

            public final boolean onQueryTextChange(String str) {
                if (subscriber.isUnsubscribed()) {
                    return null;
                }
                subscriber.onNext(str);
                return true;
            }
        });
        subscriber.add(new C14032());
        subscriber.onNext(this.view.getQuery());
    }

    SearchViewQueryTextChangesOnSubscribe(SearchView searchView) {
        this.view = searchView;
    }
}
