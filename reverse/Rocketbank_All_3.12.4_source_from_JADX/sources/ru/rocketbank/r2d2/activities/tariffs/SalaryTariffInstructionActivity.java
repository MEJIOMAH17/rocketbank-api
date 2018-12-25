package ru.rocketbank.r2d2.activities.tariffs;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.DownloadActivity;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.data.binding.tariff.TariffInstructionListener;
import ru.rocketbank.r2d2.databinding.ActivitySalaryTariffInstructionBinding;

/* compiled from: SalaryTariffInstructionActivity.kt */
public final class SalaryTariffInstructionActivity extends SecuredActivity implements TariffInstructionListener {
    public static final Companion Companion = new Companion();
    private static final String KEY_INFO = "KEY_INFO";
    private static final String KEY_PDF = "KEY_PDF";
    private HashMap _$_findViewCache;
    private ActivitySalaryTariffInstructionBinding binding;
    private String infoUrl;
    private String pdfUrl;

    /* compiled from: SalaryTariffInstructionActivity.kt */
    public static final class Companion {
        private static /* synthetic */ void KEY_INFO$annotations() {
        }

        private static /* synthetic */ void KEY_PDF$annotations() {
        }

        private Companion() {
        }

        public final void start(Context context, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, "infoUrl");
            Intrinsics.checkParameterIsNotNull(str2, "pdfUrl");
            Intent intent = new Intent(context, SalaryTariffInstructionActivity.class);
            intent.putExtra(SalaryTariffInstructionActivity.KEY_PDF, str2);
            intent.putExtra(SalaryTariffInstructionActivity.KEY_INFO, str);
            context.startActivity(intent);
        }
    }

    public static final void start(Context context, String str, String str2) {
        Companion.start(context, str, str2);
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

    protected final void onCreate(Bundle bundle) {
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View decorView = window.getDecorView();
        Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
        decorView.setSystemUiVisibility(1280);
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_salary_tariff_instruction);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…alary_tariff_instruction)");
        this.binding = (ActivitySalaryTariffInstructionBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.background;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.background");
        ImageHelper.loadFromRes$default(C0859R.drawable.tarif_screen, bundle, 0, 4, null);
        bundle = getIntent();
        String stringExtra = bundle.getStringExtra(KEY_INFO);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "getStringExtra(KEY_INFO)");
        this.infoUrl = stringExtra;
        bundle = bundle.getStringExtra(KEY_PDF);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "getStringExtra(KEY_PDF)");
        this.pdfUrl = bundle;
    }

    protected final void onStart() {
        super.onStart();
        ActivitySalaryTariffInstructionBinding activitySalaryTariffInstructionBinding = this.binding;
        if (activitySalaryTariffInstructionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySalaryTariffInstructionBinding.setListener(this);
    }

    protected final void onStop() {
        super.onStop();
        ActivitySalaryTariffInstructionBinding activitySalaryTariffInstructionBinding = this.binding;
        if (activitySalaryTariffInstructionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySalaryTariffInstructionBinding.setListener(null);
    }

    public final void onDownloadButtonClicked() {
        ru.rocketbank.r2d2.activities.DownloadActivity.Companion companion = DownloadActivity.Companion;
        Context context = this;
        String str = this.pdfUrl;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pdfUrl");
        }
        companion.startDownloadSecured(context, str);
    }

    public final void onLinkClicked() {
        Context context = this;
        String str = this.infoUrl;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("infoUrl");
        }
        Utils.openUrl(context, str);
    }
}
