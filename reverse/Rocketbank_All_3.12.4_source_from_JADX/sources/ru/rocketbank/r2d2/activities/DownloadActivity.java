package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.model.references.RefBody;
import ru.rocketbank.core.network.api.PlasticsApi;
import ru.rocketbank.core.widgets.RocketLoader;
import ru.rocketbank.core.widgets.RocketLoader.OnEndAnimationListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.reference.ReferencePdfData;
import ru.rocketbank.r2d2.data.binding.reference.ReferencePdfListener;
import ru.rocketbank.r2d2.databinding.ActivityReferencePdfBinding;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: DownloadActivity.kt */
public final class DownloadActivity extends SecuredActivity implements OnEndAnimationListener, ReferencePdfListener {
    public static final Companion Companion = new Companion();
    private static final String KEY_KIND = "KEY_KIND";
    private static final String KEY_MODE = "KEY_MODE";
    private static final String KEY_PDF = "KEY_PDF";
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private static final int REQUEST_CODE = 10500;
    private HashMap _$_findViewCache;
    private ActivityReferencePdfBinding binding;
    private boolean canShow;
    private ReferencePdfData data;
    private String documentPath;
    private String errorText;
    private HeaderManager headerManager;
    private String kind;
    private RocketLoader loader;
    private Mode mode = Mode.MODE_REFERENCE;
    private Subscription pdfDownloadSubscription;
    private final PlasticsApi plasticApi = getInjector().getPlasticApi();
    private Subscription referenceSubscription;
    private String token;
    private String url;

    /* compiled from: DownloadActivity.kt */
    public static final class Companion {

        /* compiled from: DownloadActivity.kt */
        private enum Mode {
        }

        private Companion() {
        }

        public final void startDownloadReference(Context context, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(context, "c");
            Intrinsics.checkParameterIsNotNull(str2, "kind");
            Intent intent = new Intent(context, DownloadActivity.class);
            intent.putExtra(DownloadActivity.KEY_TOKEN, str);
            intent.putExtra("KEY_KIND", str2);
            intent.putExtra(DownloadActivity.KEY_MODE, Mode.MODE_REFERENCE.name());
            context.startActivity(intent);
        }

        public final void startDownloadSecured(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "c");
            Intrinsics.checkParameterIsNotNull(str, "url");
            Intent intent = new Intent(context, DownloadActivity.class);
            intent.putExtra(DownloadActivity.KEY_PDF, str);
            intent.putExtra(DownloadActivity.KEY_MODE, Mode.MODE_DOWNLOAD_SECURED.name());
            context.startActivity(intent);
        }

        public final void startDownload(Context context, String str) {
            Intrinsics.checkParameterIsNotNull(context, "c");
            Intrinsics.checkParameterIsNotNull(str, "url");
            Intent intent = new Intent(context, DownloadActivity.class);
            intent.putExtra(DownloadActivity.KEY_PDF, str);
            intent.putExtra(DownloadActivity.KEY_MODE, Mode.MODE_DOWNLOAD.name());
            context.startActivity(intent);
        }
    }

    public static final void startDownload(Context context, String str) {
        Companion.startDownload(context, str);
    }

    public static final void startDownloadReference(Context context, String str, String str2) {
        Companion.startDownloadReference(context, str, str2);
    }

    public static final void startDownloadSecured(Context context, String str) {
        Companion.startDownloadSecured(context, str);
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

    public static final /* synthetic */ ReferencePdfData access$getData$p(DownloadActivity downloadActivity) {
        downloadActivity = downloadActivity.data;
        if (downloadActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        return downloadActivity;
    }

    public static final /* synthetic */ String access$getDocumentPath$p(DownloadActivity downloadActivity) {
        downloadActivity = downloadActivity.documentPath;
        if (downloadActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("documentPath");
        }
        return downloadActivity;
    }

    public static final /* synthetic */ String access$getErrorText$p(DownloadActivity downloadActivity) {
        downloadActivity = downloadActivity.errorText;
        if (downloadActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorText");
        }
        return downloadActivity;
    }

    public static final /* synthetic */ HeaderManager access$getHeaderManager$p(DownloadActivity downloadActivity) {
        downloadActivity = downloadActivity.headerManager;
        if (downloadActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerManager");
        }
        return downloadActivity;
    }

    public static final /* synthetic */ RocketLoader access$getLoader$p(DownloadActivity downloadActivity) {
        downloadActivity = downloadActivity.loader;
        if (downloadActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        return downloadActivity;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_reference_pdf);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte…t.activity_reference_pdf)");
        this.binding = (ActivityReferencePdfBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.loader;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.loader");
        this.loader = bundle;
        this.data = new ReferencePdfData();
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ReferencePdfData referencePdfData = this.data;
        if (referencePdfData == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        bundle.setData(referencePdfData);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        bundle = getIntent();
        String stringExtra = bundle.getStringExtra(KEY_MODE);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "getStringExtra(KEY_MODE)");
        this.mode = Mode.valueOf(stringExtra);
        if (this.mode == Mode.MODE_REFERENCE) {
            this.token = bundle.getStringExtra(KEY_TOKEN);
            this.kind = bundle.getStringExtra("KEY_KIND");
        } else {
            bundle = bundle.getStringExtra(KEY_PDF);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "getStringExtra(KEY_PDF)");
            this.url = bundle;
        }
        this.headerManager = getInjector().getHeaderManager();
        checkedLoad();
    }

    protected final void onStop() {
        super.onStop();
        ActivityReferencePdfBinding activityReferencePdfBinding = this.binding;
        if (activityReferencePdfBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityReferencePdfBinding.setListener(null);
        RocketLoader rocketLoader = this.loader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        rocketLoader.setOnEndAnimation(null);
    }

    protected final void onStart() {
        super.onStart();
        ActivityReferencePdfBinding activityReferencePdfBinding = this.binding;
        if (activityReferencePdfBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityReferencePdfBinding.setListener(this);
        RocketLoader rocketLoader = this.loader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        rocketLoader.setOnEndAnimation(this);
    }

    protected final void onDestroy() {
        Subscription subscription = this.referenceSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        subscription = this.pdfDownloadSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        super.onDestroy();
    }

    public final void loadReference() {
        String str = this.kind;
        if (str != null) {
            ReferencePdfData referencePdfData = this.data;
            if (referencePdfData == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
            }
            referencePdfData.getStatusText().set(getString(C0859R.string.generating_reference));
            referencePdfData = this.data;
            if (referencePdfData == null) {
                Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
            }
            referencePdfData.getButtonsToolbar().set(false);
            RocketLoader rocketLoader = this.loader;
            if (rocketLoader == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loader");
            }
            rocketLoader.resetAnimation();
            RefBody refBody = new RefBody(str);
            Subscription subscription = this.referenceSubscription;
            if (subscription != null) {
                subscription.unsubscribe();
            }
            this.referenceSubscription = this.plasticApi.getReference(this.token, refBody).debounce(90, TimeUnit.SECONDS).subscribeOn(Schedulers.io()).flatMap(new DownloadActivity$loadReference$$inlined$let$lambda$1(this)).observeOn(AndroidSchedulers.mainThread()).subscribe(new DownloadActivity$loadReference$$inlined$let$lambda$2(this));
        }
    }

    private final Observable<String> processDownloadPdf(String str) {
        str = Observable.create(new DownloadActivity$processDownloadPdf$1(this, str));
        Intrinsics.checkExpressionValueIsNotNull(str, "Observable.create { subs…nError(e)\n        }\n    }");
        return str;
    }

    private final void downloadPdf(String str) {
        ReferencePdfData referencePdfData = this.data;
        if (referencePdfData == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        referencePdfData.getButtonsToolbar().set(false);
        RocketLoader rocketLoader = this.loader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        rocketLoader.resetAnimation();
        referencePdfData = this.data;
        if (referencePdfData == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
        }
        referencePdfData.getStatusText().set(getString(C0859R.string.downloading));
        Subscription subscription = this.pdfDownloadSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.pdfDownloadSubscription = processDownloadPdf(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new DownloadActivity$downloadPdf$1(this));
    }

    private final void checkedLoad() {
        if (VERSION.SDK_INT < 23 || checkOrRequestPermission()) {
            download();
        } else {
            setPermissionStorageError();
        }
    }

    public final void download() {
        if (this.mode == Mode.MODE_REFERENCE) {
            loadReference();
            return;
        }
        String str = this.url;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("url");
        }
        downloadPdf(str);
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == 10500) {
            if ((1 ^ (iArr.length == 0 ? 1 : 0)) == null || iArr[0] != 0) {
                setPermissionStorageError();
            } else {
                download();
            }
        }
    }

    private final boolean checkOrRequestPermission() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, REQUEST_CODE);
        return false;
    }

    private final void showPdfView(String str) {
        int[] iArr = new int[2];
        RocketLoader rocketLoader = this.loader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        rocketLoader.getLocationInWindow(iArr);
        int i = iArr[0];
        RocketLoader rocketLoader2 = this.loader;
        if (rocketLoader2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        PdfViewActivity.Companion.start(this, true, str, i + (rocketLoader2.getWidth() / 2), iArr[1] - getStatusBarHeight(), true);
        finish();
    }

    public final void closeClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        finish();
    }

    public final void repeatClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        checkedLoad();
    }

    private final void setPermissionStorageError() {
        String string = getString(C0859R.string.error_storage_access);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.error_storage_access)");
        this.errorText = string;
        RocketLoader rocketLoader = this.loader;
        if (rocketLoader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        rocketLoader.setError();
    }

    public final void animationEnd(boolean z) {
        if (z) {
            z = this.data;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
            }
            z = z.getStatusText();
            String str = this.errorText;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("errorText");
            }
            z.set(str);
            z = this.data;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.WEB_DIALOG_PARAM_DATA);
            }
            z.getButtonsToolbar().set(true);
            return;
        }
        if (this.canShow) {
            z = this.documentPath;
            if (!z) {
                Intrinsics.throwUninitializedPropertyAccessException("documentPath");
            }
            showPdfView(z);
        }
    }
}
