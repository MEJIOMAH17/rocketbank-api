package ru.rocketbank.r2d2.activities.webauth;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import com.bumptech.glide.DrawableRequestBuilder;
import com.bumptech.glide.Glide;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.data.binding.webauth.Sec3dAuthListener;
import ru.rocketbank.r2d2.data.binding.webauth.WebAuthData;
import ru.rocketbank.r2d2.databinding.ActivityWebAuthBinding;

/* compiled from: Sec3dActivity.kt */
public final class Sec3dActivity extends PresenterSecuredActivity<Sec3dPresenter> implements Sec3dView {
    private static final String AUTH_ID = "AUTH_ID";
    public static final Companion Companion = new Companion();
    private static final String IMAGE_URL_KEY = "IMAGE";
    private static final int REQUEST_ID = 19;
    private static final String STARTED_AT_KEY = "STARTED_AT";
    private static final String TEXT_KEY = "TEXT";
    private static final String TTL_KEY = "TTL";
    private HashMap _$_findViewCache;
    private ActivityWebAuthBinding binding;
    private final WebAuthData data = new WebAuthData();

    /* compiled from: Sec3dActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final PendingIntent pendingIntent(Context context, String str, int i, int i2, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "authId");
            Intrinsics.checkParameterIsNotNull(str2, ProviderField.TEXT);
            context = PendingIntent.getActivity(context, 19, new Intent(context, Sec3dActivity.class).putExtra(Sec3dActivity.TTL_KEY, i2).putExtra(Sec3dActivity.STARTED_AT_KEY, i).putExtra(Sec3dActivity.TEXT_KEY, str2).putExtra("IMAGE", str3).putExtra(Sec3dActivity.AUTH_ID, str), 134217728);
            Intrinsics.checkExpressionValueIsNotNull(context, "PendingIntent.getActivit…tent.FLAG_UPDATE_CURRENT)");
            return context;
        }
    }

    public static final PendingIntent pendingIntent(Context context, String str, int i, int i2, String str2, String str3) {
        return Companion.pendingIntent(context, str, i, i2, str2, str3);
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

    public final Sec3dPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("df70c5a4-2074-462a-92ec-7fe1663bf805");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"df70c5a…-462a-92ec-7fe1663bf805\")");
        return (Sec3dPresenter) PresenterManager.getOrCreatePresenter(fromString, Sec3dPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_web_auth);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…layout.activity_web_auth)");
        this.binding = (ActivityWebAuthBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setData(this.data);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.confirmButton.setBackgroundResource(C0859R.drawable.orange_button_background);
        bundle = ImageHelper.INSTANCE;
        ActivityWebAuthBinding activityWebAuthBinding = this.binding;
        if (activityWebAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = activityWebAuthBinding.background;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.background");
        bundle.loadDarkCover(imageView, this.authorization.getUserData());
        bundle = getIntent();
        if (bundle != null) {
            parseIntent(bundle);
        }
    }

    protected final void onStart() {
        super.onStart();
        ((Sec3dPresenter) getPresenter()).onAttached(this);
        ActivityWebAuthBinding activityWebAuthBinding = this.binding;
        if (activityWebAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityWebAuthBinding.setListener((Sec3dAuthListener) getPresenter());
        ((Sec3dPresenter) getPresenter()).runTimer();
    }

    protected final void onStop() {
        ((Sec3dPresenter) getPresenter()).onDetached();
        ActivityWebAuthBinding activityWebAuthBinding = this.binding;
        if (activityWebAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityWebAuthBinding.setListener(null);
        hideProgressDialog();
        super.onStop();
    }

    protected final void onNewIntent(Intent intent) {
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        super.onNewIntent(intent);
        parseIntent(intent);
    }

    private final void parseIntent(Intent intent) {
        DrawableRequestBuilder centerCrop = Glide.with((FragmentActivity) this).load(intent.getStringExtra("IMAGE")).centerCrop();
        ActivityWebAuthBinding activityWebAuthBinding = this.binding;
        if (activityWebAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        centerCrop.into(activityWebAuthBinding.merchantIcon);
        ((Sec3dPresenter) getPresenter()).setTtl(intent.getIntExtra(TTL_KEY, 0));
        ((Sec3dPresenter) getPresenter()).setCreatedAt(intent.getIntExtra(STARTED_AT_KEY, 0));
        Sec3dPresenter sec3dPresenter = (Sec3dPresenter) getPresenter();
        String stringExtra = intent.getStringExtra(AUTH_ID);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(AUTH_ID)");
        sec3dPresenter.setAuthId(stringExtra);
        this.data.getText().set(intent.getStringExtra(TEXT_KEY));
        ((Sec3dPresenter) getPresenter()).runTimer();
    }

    public final void updateTime(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TIME);
        this.data.getTtl().set(str);
    }

    public final void updateButtons(boolean z) {
        this.data.getButtonsEnabled().set(z);
    }

    public final void onTimeOut() {
        this.data.getButtonsEnabled().set(false);
        this.data.getTtl().set(getString(C0859R.string.web_auth_timeout));
    }

    public final void cancel() {
        finish();
    }

    public final void showProgress() {
        showProgressDialog();
    }

    public final void hideProgress() {
        hideProgressDialog();
    }

    public final void showError() {
        ActivityWebAuthBinding activityWebAuthBinding = this.binding;
        if (activityWebAuthBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketSnackbar.make(activityWebAuthBinding.getRoot(), (CharSequence) getString(C0859R.string.error_occur), -1).show();
    }
}
