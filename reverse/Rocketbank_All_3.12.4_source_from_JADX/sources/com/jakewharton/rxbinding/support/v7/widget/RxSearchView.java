package com.jakewharton.rxbinding.support.v7.widget;

import android.content.Context;
import android.support.v7.widget.SearchView;
import com.google.android.gms.common.api.GoogleApiClient;
import javax.inject.Provider;
import ru.rocketbank.core.dagger.AndroidModule;
import rx.Observable;

public final class RxSearchView implements Provider<GoogleApiClient> {
    private final Provider<Context> contextProvider;
    private final AndroidModule module;

    public static Observable<CharSequence> queryTextChanges(SearchView searchView) {
        String str = "view == null";
        if (searchView != null) {
            return Observable.create(new SearchViewQueryTextChangesOnSubscribe(searchView));
        }
        throw new NullPointerException(str);
    }

    public RxSearchView(AndroidModule androidModule, Provider<Context> provider) {
        this.module = androidModule;
        this.contextProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        GoogleApiClient provideGoogleApiClient = AndroidModule.provideGoogleApiClient((Context) this.contextProvider.get());
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (provideGoogleApiClient != null) {
            return provideGoogleApiClient;
        }
        throw new NullPointerException(str);
    }
}
