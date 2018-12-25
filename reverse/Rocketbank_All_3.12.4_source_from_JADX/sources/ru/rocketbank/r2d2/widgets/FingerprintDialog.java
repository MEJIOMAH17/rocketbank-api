package ru.rocketbank.r2d2.widgets;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.databinding.ObservableField;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.share.internal.ShareConstants;
import com.mattprecious.swirl.SwirlView;
import com.mattprecious.swirl.SwirlView.State;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.security.RocketFingerPrintListener;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.data.binding.dialogs.FingerprintDialogData;
import ru.rocketbank.r2d2.databinding.FingerprintDialogBinding;

@TargetApi(23)
/* compiled from: FingerprintDialog.kt */
public final class FingerprintDialog extends DialogFragment implements RocketFingerPrintListener {
    public static final Companion Companion = new Companion();
    public static final String TAG = "fingerprint";
    public static final String TOUCH_STATE_KEY = "touch_state";
    private static final String TOUCH_WAS_SUGGESTED_KEY = "touch_was_suggested";
    private HashMap _$_findViewCache;
    private FingerprintDialogBinding binding;
    private final FingerprintDialogData data = new FingerprintDialogData();
    private String errorString;
    private final Handler fingerprintHandler = new Handler();
    private RocketLoader loader;
    private String loadingString;
    private String notExistsString;
    private SharedPreferences preferences;
    private boolean scanResult;
    private SwirlView swirlView;
    private String touchFingerString;
    private final TouchManager touchManager = RocketApplication.Companion.getInjector().getTouchManager();
    private String tryAgainString;
    private String updateOkString;
    private final UpdateRunnable updateRunnable = new UpdateRunnable();

    /* compiled from: FingerprintDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public final AlertDialog checkFingerprint(Context context, FragmentManager fragmentManager, TouchManager touchManager) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(touchManager, "touchManager");
            boolean z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean(FingerprintDialog.TOUCH_STATE_KEY, false);
            boolean initialize = touchManager.initialize(false);
            touchManager.close();
            if (!z || initialize) {
                return null;
            }
            Companion companion = this;
            String string = context.getString(C0859R.string.touch_authorization_message);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ch_authorization_message)");
            return showConfirmFingerPrintDialog(context, fragmentManager, touchManager, string);
        }

        public final void showFingerprintDialog(FragmentManager fragmentManager) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Fragment findFragmentByTag = fragmentManager.findFragmentByTag(FingerprintDialog.TAG);
            if (findFragmentByTag != null && (findFragmentByTag instanceof FingerprintDialog)) {
                FingerprintDialog fingerprintDialog = (FingerprintDialog) findFragmentByTag;
                if (!fingerprintDialog.isAdded()) {
                    fingerprintDialog.show(fragmentManager, FingerprintDialog.TAG);
                    return;
                }
            }
            new FingerprintDialog().show(fragmentManager, FingerprintDialog.TAG);
        }

        public final AlertDialog showConfirmFingerPrintDialog(Context context, FragmentManager fragmentManager, TouchManager touchManager, String str) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(touchManager, "touchManager");
            Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
            fragmentManager = new Builder(context).setPositiveButton(17039370, new C1625x50625480(fragmentManager)).setNegativeButton(17039360, new C1626x50625481(touchManager, context)).setCancelable$184cab27().setTitle(C0859R.string.touch_authorization).setMessage(str).create();
            fragmentManager.show();
            fragmentManager.getButton(-1).setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
            fragmentManager.getButton(-2).setTextColor(ContextCompat.getColor(context, C0859R.color.gray));
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "dialog");
            return fragmentManager;
        }

        public final boolean showSuggestDialogIfNeed(Context context, FragmentManager fragmentManager, TouchManager touchManager) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(touchManager, "touchManager");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            boolean z = defaultSharedPreferences.getBoolean(FingerprintDialog.TOUCH_WAS_SUGGESTED_KEY, false);
            boolean z2 = defaultSharedPreferences.getBoolean(FingerprintDialog.TOUCH_STATE_KEY, false);
            if (z || z2 || !touchManager.isAvailable()) {
                return false;
            }
            defaultSharedPreferences.edit().putBoolean(FingerprintDialog.TOUCH_WAS_SUGGESTED_KEY, true).apply();
            Companion companion = this;
            String string = context.getString(C0859R.string.suggest_fingerprint);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.suggest_fingerprint)");
            showConfirmFingerPrintDialog(context, fragmentManager, touchManager, string);
            return true;
        }
    }

    /* compiled from: FingerprintDialog.kt */
    public final class UpdateRunnable implements Runnable {
        public final void run() {
            FingerprintDialog.access$getSwirlView$p(FingerprintDialog.this).setState(State.ON, true);
            FingerprintDialog.this.data.getStatusText().set(FingerprintDialog.access$getTouchFingerString$p(FingerprintDialog.this));
            FingerprintDialog.this.data.isError().set(false);
            FingerprintDialog.this.data.getHelperText().set(null);
            FingerprintDialog.this.data.isLoading().set(false);
        }
    }

    public static final AlertDialog checkFingerprint(Context context, FragmentManager fragmentManager, TouchManager touchManager) {
        return Companion.checkFingerprint(context, fragmentManager, touchManager);
    }

    public static final AlertDialog showConfirmFingerPrintDialog(Context context, FragmentManager fragmentManager, TouchManager touchManager, String str) {
        return Companion.showConfirmFingerPrintDialog(context, fragmentManager, touchManager, str);
    }

    public static final void showFingerprintDialog(FragmentManager fragmentManager) {
        Companion.showFingerprintDialog(fragmentManager);
    }

    public static final boolean showSuggestDialogIfNeed(Context context, FragmentManager fragmentManager, TouchManager touchManager) {
        return Companion.showSuggestDialogIfNeed(context, fragmentManager, touchManager);
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

    public final void onKeyNeedsForUpdate() {
    }

    public static final /* synthetic */ SharedPreferences access$getPreferences$p(FingerprintDialog fingerprintDialog) {
        fingerprintDialog = fingerprintDialog.preferences;
        if (fingerprintDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferences");
        }
        return fingerprintDialog;
    }

    public static final /* synthetic */ SwirlView access$getSwirlView$p(FingerprintDialog fingerprintDialog) {
        fingerprintDialog = fingerprintDialog.swirlView;
        if (fingerprintDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swirlView");
        }
        return fingerprintDialog;
    }

    public static final /* synthetic */ String access$getTouchFingerString$p(FingerprintDialog fingerprintDialog) {
        fingerprintDialog = fingerprintDialog.touchFingerString;
        if (fingerprintDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchFingerString");
        }
        return fingerprintDialog;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, C0859R.style.FingerprintDialog);
        setCancelable(null);
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        bundle = FingerprintDialogBinding.inflate(LayoutInflater.from((Context) new ContextThemeWrapper(getContext(), C0859R.style.FingerprintDialog)));
        Intrinsics.checkExpressionValueIsNotNull(bundle, "FingerprintDialogBinding.inflate(inflater)");
        this.binding = bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setData(this.data);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.loader;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.loader");
        this.loader = bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.swirlView;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.swirlView");
        this.swirlView = bundle;
        bundle = getString(C0859R.string.fingerprint_data_loading);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.fingerprint_data_loading)");
        this.loadingString = bundle;
        bundle = getString(C0859R.string.error_occur);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.error_occur)");
        this.errorString = bundle;
        bundle = getString(C0859R.string.fingerprint_update_ok);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.fingerprint_update_ok)");
        this.updateOkString = bundle;
        bundle = getString(C0859R.string.touch_finger);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.touch_finger)");
        this.touchFingerString = bundle;
        bundle = getString(C0859R.string.touch_not_exists);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.touch_not_exists)");
        this.notExistsString = bundle;
        bundle = getString(C0859R.string.no_luck_try_again);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getString(R.string.no_luck_try_again)");
        this.tryAgainString = bundle;
        bundle = PreferenceManager.getDefaultSharedPreferences(getContext());
        Intrinsics.checkExpressionValueIsNotNull(bundle, "PreferenceManager.getDef…haredPreferences(context)");
        this.preferences = bundle;
        this.touchManager.invalidateToken();
        this.touchManager.setListener(this);
        this.touchManager.initialize(true);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        bundle = new Builder(context, C0859R.style.FingerprintDialog);
        FingerprintDialogBinding fingerprintDialogBinding = this.binding;
        if (fingerprintDialogBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setView(fingerprintDialogBinding.getRoot()).setPositiveButton(17039360, new FingerprintDialog$onCreateDialog$1(this)).setCancelable$184cab27();
        bundle = bundle.create();
        bundle.setCanceledOnTouchOutside(false);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "dialog");
        return (Dialog) bundle;
    }

    public final void onDestroyView() {
        super.onDestroyView();
        this.fingerprintHandler.removeCallbacksAndMessages(null);
        _$_clearFindViewByIdCache();
    }

    private final void showCancelButton() {
        Dialog dialog = getDialog();
        if (dialog instanceof AlertDialog) {
            ((AlertDialog) dialog).getButton(-1).setText(17039370);
        }
    }

    public final void onAuthenticationError(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "errString");
        this.data.getStatusText().set(str);
        this.data.getHelperText().set(null);
        this.data.isError().set(true);
        SwirlView swirlView = this.swirlView;
        if (swirlView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swirlView");
        }
        swirlView.setState(State.ERROR, true);
        this.fingerprintHandler.removeCallbacks(this.updateRunnable);
        if (i != 5) {
            if (i == 4012) {
                showCancelButton();
                this.data.isError().set(true);
                i = this.swirlView;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("swirlView");
                }
                i.setState(State.ERROR, true);
                this.data.getHelperText().set(str);
            }
            return;
        }
        showCancelButton();
    }

    public final void onAuthenticationFailed() {
        this.fingerprintHandler.removeCallbacks(this.updateRunnable);
        SwirlView swirlView = this.swirlView;
        if (swirlView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("swirlView");
        }
        swirlView.setState(State.ERROR, true);
        ObservableField statusText = this.data.getStatusText();
        String str = this.notExistsString;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notExistsString");
        }
        statusText.set(str);
        statusText = this.data.getHelperText();
        str = this.tryAgainString;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tryAgainString");
        }
        statusText.set(str);
        this.data.isError().set(true);
        this.fingerprintHandler.postDelayed(this.updateRunnable, 3000);
    }

    public final void onAuthenticationHelp(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "helpString");
        this.fingerprintHandler.removeCallbacks(this.updateRunnable);
        if (i == 29) {
            i = this.loader;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("loader");
            }
            i.resetAnimation();
            this.data.isLoading().set(true);
            this.touchManager.refreshTouchToken();
            this.data.getHelperText().set(null);
            this.data.isError().set(null);
            i = this.data.getStatusText();
            str = this.loadingString;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadingString");
            }
            i.set(str);
            return;
        }
        i = this.swirlView;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("swirlView");
        }
        i.setState(State.ERROR, true);
        i = this.data.getStatusText();
        String str2 = this.errorString;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorString");
        }
        i.set(str2);
        this.data.getHelperText().set(str);
        this.data.isError().set(true);
        this.fingerprintHandler.postDelayed((Runnable) this.updateRunnable, 3000);
    }

    public final void onAuthenticationSucceeded(String str) {
        this.fingerprintHandler.removeCallbacks(this.updateRunnable);
        this.touchManager.close();
        this.scanResult = true;
        this.data.isError().set(false);
        str = this.loader;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        str.setSuccess();
        str = getDialog();
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.app.AlertDialog");
        }
        ((AlertDialog) str).getButton(-1).setText(17039370);
        str = this.data.getStatusText();
        String str2 = this.updateOkString;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("updateOkString");
        }
        str.set(str2);
    }

    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.fingerprintHandler.post((Runnable) this.updateRunnable);
    }
}
