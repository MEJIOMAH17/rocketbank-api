package ru.rocketbank.r2d2.root.devidepayment.sp;

import android.app.Activity;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.CardView;
import android.view.View;
import android.widget.Toast;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.data.binding.ap.AddCardData;
import ru.rocketbank.r2d2.data.binding.ap.AddCardListener;
import ru.rocketbank.r2d2.databinding.ActivitySpAddCardBinding;

/* compiled from: SPAddCardActivity.kt */
public final class SPAddCardActivity extends PresenterSecuredActivity<SPAddCardPresenter> implements AddCardListener, SPAddCardView {
    public static final Companion Companion = new Companion();
    private static final String KEY_CARD_TOKEN = "KEY_CARD_TOKEN";
    private HashMap _$_findViewCache;
    private ActivitySpAddCardBinding binding;
    private final AddCardData data = new AddCardData();

    /* compiled from: SPAddCardActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startForResult(Activity activity, String str, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(str, "cardToken");
            Intent intent = new Intent(activity, SPAddCardActivity.class);
            intent.putExtra(SPAddCardActivity.KEY_CARD_TOKEN, str);
            activity.startActivityForResult(intent, i);
        }
    }

    public static final void startForResult(Activity activity, String str, int i) {
        Companion.startForResult(activity, str, i);
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

    public final SPAddCardPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("63d2a9f2-5200-11e8-9c2d-fa7ae01bbebc");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"63d2a9f…-11e8-9c2d-fa7ae01bbebc\")");
        return (SPAddCardPresenter) PresenterManager.getOrCreatePresenter(fromString, SPAddCardPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_sp_add_card);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…out.activity_sp_add_card)");
        this.binding = (ActivitySpAddCardBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setData(this.data);
        this.data.getCardToken().set(getIntent().getStringExtra(KEY_CARD_TOKEN));
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        setResult(null);
    }

    protected final void onStart() {
        super.onStart();
        ActivitySpAddCardBinding activitySpAddCardBinding = this.binding;
        if (activitySpAddCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySpAddCardBinding.setListener(this);
        ((SPAddCardPresenter) getPresenter()).onStart(this);
    }

    protected final void onStop() {
        hideProgress();
        ActivitySpAddCardBinding activitySpAddCardBinding = this.binding;
        if (activitySpAddCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySpAddCardBinding.setListener(null);
        ((SPAddCardPresenter) getPresenter()).onStop();
        super.onStop();
    }

    public final void onCardAddClicked(String str) {
        Intrinsics.checkParameterIsNotNull(str, "cardToken");
        keepUnlocked();
        ActivitySpAddCardBinding activitySpAddCardBinding = this.binding;
        if (activitySpAddCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        CardView cardView = activitySpAddCardBinding.addSpButton;
        Intrinsics.checkExpressionValueIsNotNull(cardView, "binding.addSpButton");
        View view = cardView;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
        ((SPAddCardPresenter) getPresenter()).addCard(str);
    }

    public final void onErrorAddCard(String str) {
        Intrinsics.checkParameterIsNotNull(str, "error");
        ActivitySpAddCardBinding activitySpAddCardBinding = this.binding;
        if (activitySpAddCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        CardView cardView = activitySpAddCardBinding.addSpButton;
        Intrinsics.checkExpressionValueIsNotNull(cardView, "binding.addSpButton");
        View view = cardView;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(0);
        activitySpAddCardBinding = this.binding;
        if (activitySpAddCardBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketSnackbar.make(activitySpAddCardBinding.getRoot(), str, -1).setTextColor(ContextCompat.getColor(this, C0859R.color.white)).show();
    }

    public final void onCardAdded() {
        setResult(-1);
        Toast.makeText(this, C0859R.string.card_added, 0).show();
        finish();
    }

    public final void onUserCancelled() {
        String string = getString(17039360);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(android.R.string.cancel)");
        onErrorAddCard(string);
    }

    public final void hideProgress() {
        hideProgressDialog();
    }

    public final void showProgress() {
        showProgressDialog();
    }
}
