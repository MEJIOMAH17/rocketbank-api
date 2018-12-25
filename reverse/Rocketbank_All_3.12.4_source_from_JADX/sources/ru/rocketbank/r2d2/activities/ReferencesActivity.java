package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.view.LayoutInflater;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.references.Reference;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.reference.ReferenceClickListener;
import ru.rocketbank.r2d2.data.binding.reference.ReferenceData;
import ru.rocketbank.r2d2.databinding.ActivityReferenceBinding;
import ru.rocketbank.r2d2.databinding.ReferenceItemBinding;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: ReferencesActivity.kt */
public final class ReferencesActivity extends SecuredActivity implements OnRefreshListener, ReferenceClickListener {
    public static final Companion Companion = new Companion();
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private HashMap _$_findViewCache;
    private ActivityReferenceBinding binding;
    private int count;
    private Reference lastRef;
    private AlertDialog pdfDialog;
    private final PlasticsApi plasticApi = getInjector().getPlasticApi();
    private Subscription referencesSubscription;
    private SwipeRefreshLayout swipeRefresh;
    private String token;

    /* compiled from: ReferencesActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "c");
            Intent intent = new Intent(context, ReferencesActivity.class);
            intent.putExtra(ReferencesActivity.KEY_TOKEN, str);
            context.startActivity(intent);
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ ActivityReferenceBinding access$getBinding$p(ReferencesActivity referencesActivity) {
        referencesActivity = referencesActivity.binding;
        if (referencesActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return referencesActivity;
    }

    public final PlasticsApi getPlasticApi() {
        return this.plasticApi;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_reference);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…ayout.activity_reference)");
        this.binding = (ActivityReferenceBinding) bundle;
        this.token = getIntent().getStringExtra(KEY_TOKEN);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.swipeRefresh");
        this.swipeRefresh = bundle;
    }

    public final void load() {
        if (this.token != null) {
            showProgressDialog();
            SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
            if (swipeRefreshLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
            }
            swipeRefreshLayout.setRefreshing(false);
            this.referencesSubscription = this.plasticApi.getReferencesList(this.token).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new ReferencesActivity$load$$inlined$let$lambda$1(this));
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getCanonicalName());
        stringBuilder.append(" token must be not null");
        throw new IllegalStateException(stringBuilder.toString());
    }

    protected final void onStop() {
        super.onStop();
        Subscription subscription = this.referencesSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        swipeRefreshLayout.setOnRefreshListener(null);
        hideProgressDialog();
    }

    protected final void onStart() {
        super.onStart();
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefresh;
        if (swipeRefreshLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swipeRefresh");
        }
        swipeRefreshLayout.setOnRefreshListener(this);
        if (isEmpty()) {
            load();
        }
    }

    public final void onReferenceClicked(View view, Reference reference) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(reference, "ref");
        view = view.getContext();
        this.lastRef = reference;
        if (this.pdfDialog == null) {
            this.pdfDialog = new Builder(view).setTitle((int) C0859R.string.download_pdf).setCancelable$184cab27().setNegativeButton(17039360, ReferencesActivity$onReferenceClicked$1.INSTANCE).setPositiveButton(17039370, (OnClickListener) new ReferencesActivity$onReferenceClicked$2(this, view)).create();
            reference = this.pdfDialog;
            if (reference == null) {
                Intrinsics.throwNpe();
            }
            reference.show();
            reference = this.pdfDialog;
            if (reference == null) {
                Intrinsics.throwNpe();
            }
            reference.getButton(-1).setTextColor(ContextCompat.getColor(view, C0859R.color.orange_variant_2));
            reference = this.pdfDialog;
            if (reference == null) {
                Intrinsics.throwNpe();
            }
            reference.getButton(-2).setTextColor(ContextCompat.getColor(view, C0859R.color.gray));
            return;
        }
        view = this.pdfDialog;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.show();
    }

    private final Reference getLastRef() {
        Reference reference = this.lastRef;
        if (reference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastRef");
        }
        return reference;
    }

    private final void addView(Reference reference) {
        LayoutInflater layoutInflater = getLayoutInflater();
        ActivityReferenceBinding activityReferenceBinding = this.binding;
        if (activityReferenceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        View inflate = layoutInflater.inflate(C0859R.layout.reference_item, activityReferenceBinding.container, false);
        ReferenceItemBinding bind = ReferenceItemBinding.bind(inflate);
        Intrinsics.checkExpressionValueIsNotNull(bind, "itemBinding");
        bind.setReference(reference);
        ReferenceData referenceData = new ReferenceData();
        referenceData.getTitle().set(reference.getTitle());
        referenceData.getLng().set(reference.getLang());
        bind.setData(referenceData);
        bind.setListener(this);
        reference = this.binding;
        if (reference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        reference.container.addView(inflate);
    }

    private final boolean isEmpty() {
        return this.count == 0;
    }

    public final void onRefresh() {
        load();
    }
}
