package ru.rocketbank.r2d2.payment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.SearchView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jakewharton.rxbinding.support.v7.widget.RxSearchView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.model.ProvidersResponse;
import ru.rocketbank.core.widgets.ItemShadowDecorator;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter.Section;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;

/* compiled from: PaymentProvidersFragment.kt */
public final class PaymentProvidersFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    private static final String KEY_SEARCH_QUERY = "KEY_SEARCH_QUERY";
    private HashMap _$_findViewCache;
    public SectionedRecyclerViewAdapter adapter;
    public TextView nothingFoundTextView;
    public View nothingFoundView;
    private ProvidersAdapter paymentProvidersListAdapter;
    public ProgressBar progressBar;
    private ProvidersResponse providers;
    public RecyclerView recyclerView;
    private String searchQuery;
    private Subscription searchSubscription;
    private SearchView searchView;

    /* compiled from: PaymentProvidersFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        return recyclerView;
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        return progressBar;
    }

    public final void setProgressBar(ProgressBar progressBar) {
        Intrinsics.checkParameterIsNotNull(progressBar, "<set-?>");
        this.progressBar = progressBar;
    }

    public final View getNothingFoundView() {
        View view = this.nothingFoundView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundView");
        }
        return view;
    }

    public final void setNothingFoundView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.nothingFoundView = view;
    }

    public final TextView getNothingFoundTextView() {
        TextView textView = this.nothingFoundTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundTextView");
        }
        return textView;
    }

    public final void setNothingFoundTextView(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.nothingFoundTextView = textView;
    }

    public final SectionedRecyclerViewAdapter getAdapter() {
        SectionedRecyclerViewAdapter sectionedRecyclerViewAdapter = this.adapter;
        if (sectionedRecyclerViewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return sectionedRecyclerViewAdapter;
    }

    public final void setAdapter(SectionedRecyclerViewAdapter sectionedRecyclerViewAdapter) {
        Intrinsics.checkParameterIsNotNull(sectionedRecyclerViewAdapter, "<set-?>");
        this.adapter = sectionedRecyclerViewAdapter;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.providers_fragment, viewGroup, false);
        viewGroup = layoutInflater.findViewById(C0859R.id.recyclerView);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView");
        }
        this.recyclerView = (RecyclerView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.progressBar);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ProgressBar");
        }
        this.progressBar = (ProgressBar) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.nothingFound);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.View");
        }
        this.nothingFoundView = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.nothingFoundText);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.nothingFoundTextView = (TextView) viewGroup;
        if (bundle != null) {
            this.searchQuery = bundle.getString(KEY_SEARCH_QUERY);
        }
        viewGroup = this.progressBar;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        viewGroup.setVisibility(0);
        return layoutInflater;
    }

    public final void onResume() {
        super.onResume();
        subscribeSearchView();
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        bundle = getContext();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(bundle, "context!!");
        this.paymentProvidersListAdapter = new ProvidersAdapter(bundle, new PaymentProvidersFragment$onViewCreated$1(this));
        this.adapter = new SectionedRecyclerViewAdapter((Adapter) this.paymentProvidersListAdapter);
        view = RocketApplication.Companion.getInjector().getDataManager();
        bundle = new LinearLayoutManager(getContext());
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView.setLayoutManager((LayoutManager) bundle);
        bundle = this.recyclerView;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        if (bundle.getAdapter() == null) {
            view.loadProviders();
        }
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        bundle = this.adapter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        view.setAdapter((Adapter) bundle);
    }

    public final boolean onBackPressed() {
        if (this.searchView != null) {
            SearchView searchView = this.searchView;
            if (searchView == null) {
                Intrinsics.throwNpe();
            }
            if (!searchView.isIconified()) {
                searchView = this.searchView;
                if (searchView == null) {
                    Intrinsics.throwNpe();
                }
                searchView.clearFocus();
                searchView = this.searchView;
                if (searchView == null) {
                    Intrinsics.throwNpe();
                }
                searchView.setIconified(true);
                return true;
            }
        }
        return false;
    }

    public final void onEventMainThread(ProvidersResponse providersResponse) {
        if (providersResponse != null) {
            if (providersResponse.getProviders() != null) {
                this.providers = providersResponse;
                providersResponse = this.providers;
                if (providersResponse == null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.network.model.ProvidersResponse");
                }
                updateSections(providersResponse);
                if (UIHelper.supportsViewElevation() == null) {
                    providersResponse = this.recyclerView;
                    if (providersResponse == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
                    }
                    Context context = getContext();
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    Drawable drawable = ContextCompat.getDrawable(context, C0859R.drawable.material_shadow_z1);
                    if (drawable == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.NinePatchDrawable");
                    }
                    providersResponse.addItemDecoration(new ItemShadowDecorator((NinePatchDrawable) drawable));
                }
                return;
            }
        }
        providersResponse = this.progressBar;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        providersResponse.setVisibility(8);
        providersResponse = this.nothingFoundView;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundView");
        }
        providersResponse.setVisibility(0);
        providersResponse = this.recyclerView;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        providersResponse.setVisibility(8);
        providersResponse = this.nothingFoundTextView;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundTextView");
        }
        providersResponse.setText(C0859R.string.empty_provider_list);
    }

    private final void updateSections(ProvidersResponse providersResponse) {
        providersResponse = ProvidersResponse.mapProviderResponse(providersResponse);
        ProvidersAdapter providersAdapter = this.paymentProvidersListAdapter;
        if (providersAdapter == null) {
            Intrinsics.throwNpe();
        }
        providersAdapter.setProviders(providersResponse);
        providersAdapter = this.paymentProvidersListAdapter;
        if (providersAdapter == null) {
            Intrinsics.throwNpe();
        }
        if (providersAdapter.getItemCount() == 0) {
            providersResponse = this.progressBar;
            if (providersResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("progressBar");
            }
            providersResponse.setVisibility(8);
            providersResponse = this.nothingFoundView;
            if (providersResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nothingFoundView");
            }
            providersResponse.setVisibility(0);
            providersResponse = this.recyclerView;
            if (providersResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
            }
            providersResponse.setVisibility(8);
            if (this.searchQuery != null) {
                providersResponse = this.searchQuery;
                if (providersResponse == null) {
                    Intrinsics.throwNpe();
                }
                if ((((CharSequence) providersResponse).length() == null ? 1 : null) == null) {
                    providersResponse = getString(C0859R.string.not_found_request);
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(providersResponse, "searchFailedString");
                    providersResponse = String.format(providersResponse, Arrays.copyOf(new Object[]{this.searchQuery}, 1));
                    Intrinsics.checkExpressionValueIsNotNull(providersResponse, "java.lang.String.format(format, *args)");
                    TextView textView = this.nothingFoundTextView;
                    if (textView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("nothingFoundTextView");
                    }
                    textView.setText((CharSequence) providersResponse);
                    return;
                }
            }
            providersResponse = this.nothingFoundTextView;
            if (providersResponse == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nothingFoundTextView");
            }
            providersResponse.setText(C0859R.string.empty_provider_list);
            return;
        }
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        progressBar.setVisibility(8);
        View view = this.nothingFoundView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundView");
        }
        view.setVisibility(8);
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView.setVisibility(0);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (String str : providersResponse.keySet()) {
            arrayList.add(new Section(i, str));
            List list = (List) providersResponse.get(str);
            i += list != null ? list.size() : 0;
        }
        providersResponse = this.adapter;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        Collection collection = arrayList;
        Object[] toArray = collection.toArray(new Section[0]);
        if (toArray == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        providersResponse.setSections((Section[]) toArray);
        providersResponse = this.paymentProvidersListAdapter;
        if (providersResponse == null) {
            Intrinsics.throwNpe();
        }
        Object[] toArray2 = collection.toArray(new Section[0]);
        if (toArray2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        providersResponse.setSections((Section[]) toArray2);
        providersResponse = this.adapter;
        if (providersResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        providersResponse.notifyDataSetChanged();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        Intrinsics.checkParameterIsNotNull(menuInflater, "inflater");
        menuInflater.inflate(C0859R.menu.payment_providers_menu, menu);
        menu = MenuItemCompat.getActionView(menu.findItem(C0859R.id.search));
        if (menu == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.SearchView");
        }
        this.searchView = (SearchView) menu;
        subscribeSearchView();
        if (this.searchView != null && this.searchQuery != null) {
            menu = this.searchQuery;
            if (menu == null) {
                Intrinsics.throwNpe();
            }
            if ((((CharSequence) menu).length() == null ? 1 : null) == null) {
                menu = this.searchView;
                if (menu == null) {
                    Intrinsics.throwNpe();
                }
                menu.setQuery(this.searchQuery, true);
                menu = this.searchView;
                if (menu == null) {
                    Intrinsics.throwNpe();
                }
                menu.setIconified(false);
            }
        }
    }

    private final void subscribeSearchView() {
        if (this.searchView != null) {
            SearchView searchView = this.searchView;
            if (searchView == null) {
                Intrinsics.throwNpe();
            }
            Observable observeOn = RxSearchView.queryTextChanges(searchView).skip(1).observeOn(AndroidSchedulers.mainThread());
            Function1 function1 = PaymentProvidersFragment$subscribeSearchView$1.INSTANCE;
            if (function1 != null) {
                function1 = new PaymentProvidersFragment$sam$rx_functions_Func1$0(function1);
            }
            this.searchSubscription = observeOn.map((Func1) function1).map(PaymentProvidersFragment$subscribeSearchView$2.INSTANCE).filter(new PaymentProvidersFragment$subscribeSearchView$3(this)).subscribe((Action1) new PaymentProvidersFragment$subscribeSearchView$4(this));
        }
    }

    public final void filter(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        this.searchQuery = str;
        str = this.providers;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        str = str.filter(this.searchQuery);
        Intrinsics.checkExpressionValueIsNotNull(str, "filtered");
        updateSections(str);
    }

    public final void onPause() {
        unsubscribe(this.searchSubscription);
        super.onPause();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        if (this.searchView != null) {
            String str = KEY_SEARCH_QUERY;
            SearchView searchView = this.searchView;
            if (searchView == null) {
                Intrinsics.throwNpe();
            }
            bundle.putString(str, searchView.getQuery().toString());
        }
    }
}
