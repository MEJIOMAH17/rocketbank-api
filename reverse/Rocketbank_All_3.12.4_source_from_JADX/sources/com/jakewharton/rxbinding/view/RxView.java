package com.jakewharton.rxbinding.view;

import android.content.Context;
import android.view.View;
import com.scottyab.rootbeer.RootBeer;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.AndroidModule;
import rx.Observable;

public final class RxView implements Provider<RootBeer> {
    private final Provider<Context> contextProvider;
    private final AndroidModule module;

    public static Observable<Void> clicks(View view) {
        String str = "view == null";
        if (view != null) {
            return Observable.create(new ViewClickOnSubscribe(view));
        }
        throw new NullPointerException(str);
    }

    public RxView(AndroidModule androidModule, Provider<Context> provider) {
        this.module = androidModule;
        this.contextProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return AndroidModule.provideRootChecker((Context) this.contextProvider.get());
    }
}
