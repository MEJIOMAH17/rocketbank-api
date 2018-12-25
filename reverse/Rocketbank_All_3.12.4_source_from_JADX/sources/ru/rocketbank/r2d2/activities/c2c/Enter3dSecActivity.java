package ru.rocketbank.r2d2.activities.c2c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.exceptions.RocketWebViewException;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.card.Card2CardStatusResponseData;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;

/* compiled from: Enter3dSecActivity.kt */
public final class Enter3dSecActivity extends PresenterSecuredActivity<CodePresenter> {
    public static final Companion Companion = new Companion();
    private static final String ERROR = "ERROR";
    private static final String EXTRA_HTML = "HTML";
    private static final String EXTRA_ID = "ID";
    private static final int REQUEST_CODE = 10;
    private static final String RESULT = "RESULT";
    private static final int RESULT_FAILED = 1;
    private static final int RESULT_OK = 0;
    private static final String TAG = "Enter3dSecActivity";
    private static final long TIMEOUT = 30000;
    private HashMap _$_findViewCache;
    private int errorCount;
    private final Handler handler = new Handler();
    private String html;
    private int id;
    private final Runnable timeOutcheckRunnable = new Enter3dSecActivity$timeOutcheckRunnable$1(this);
    private boolean timeout;
    private WebView webView;

    /* compiled from: Enter3dSecActivity.kt */
    public static final class Companion {
        public static /* synthetic */ void ERROR$annotations() {
        }

        private static /* synthetic */ void EXTRA_HTML$annotations() {
        }

        private static /* synthetic */ void EXTRA_ID$annotations() {
        }

        public static /* synthetic */ void REQUEST_CODE$annotations() {
        }

        public static /* synthetic */ void RESULT$annotations() {
        }

        public static /* synthetic */ void RESULT_FAILED$annotations() {
        }

        public static /* synthetic */ void RESULT_OK$annotations() {
        }

        private static /* synthetic */ void TAG$annotations() {
        }

        public static /* synthetic */ void TIMEOUT$annotations() {
        }

        private Companion() {
        }

        public final int getRESULT_OK() {
            return Enter3dSecActivity.RESULT_OK;
        }

        public final int getRESULT_FAILED() {
            return Enter3dSecActivity.RESULT_FAILED;
        }

        public final int getREQUEST_CODE() {
            return Enter3dSecActivity.REQUEST_CODE;
        }

        public final String getRESULT() {
            return Enter3dSecActivity.RESULT;
        }

        public final String getERROR() {
            return Enter3dSecActivity.ERROR;
        }

        public final long getTIMEOUT() {
            return Enter3dSecActivity.TIMEOUT;
        }

        public final void startActivity(Activity activity, int i, String str) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(str, "html");
            Intent intent = new Intent(activity, Enter3dSecActivity.class);
            intent.putExtra(Enter3dSecActivity.EXTRA_ID, i);
            intent.putExtra(Enter3dSecActivity.EXTRA_HTML, str);
            activity.startActivityForResult(intent, CardTransferProcessActivity.Companion.getREQUEST_PROCESSING());
        }
    }

    /* compiled from: Enter3dSecActivity.kt */
    public final class SecurityCodeWebViewClient extends WebViewClient {
        public final void onPageStarted(android.webkit.WebView r3, java.lang.String r4, android.graphics.Bitmap r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r0 = "view";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
            r0 = "url";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
            super.onPageStarted(r3, r4, r5);
            r3 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;
            r4 = 0;
            r3.timeout = r4;
            r3 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;	 Catch:{ Exception -> 0x002f }
            r3.showProgressDialog();	 Catch:{ Exception -> 0x002f }
            r3 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;	 Catch:{ Exception -> 0x002f }
            r3 = r3.handler;	 Catch:{ Exception -> 0x002f }
            r4 = new ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity$SecurityCodeWebViewClient$onPageStarted$1;	 Catch:{ Exception -> 0x002f }
            r4.<init>(r2);	 Catch:{ Exception -> 0x002f }
            r4 = (java.lang.Runnable) r4;	 Catch:{ Exception -> 0x002f }
            r5 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.Companion;	 Catch:{ Exception -> 0x002f }
            r0 = r5.getTIMEOUT();	 Catch:{ Exception -> 0x002f }
            r3.postDelayed(r4, r0);	 Catch:{ Exception -> 0x002f }
            return;
        L_0x002f:
            r3 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;
            r3 = r3.handler;
            r4 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;
            r4 = r4.timeOutcheckRunnable;
            r5 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.Companion;
            r0 = r5.getTIMEOUT();
            r3.postDelayed(r4, r0);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.SecurityCodeWebViewClient.onPageStarted(android.webkit.WebView, java.lang.String, android.graphics.Bitmap):void");
        }

        public final void onPageFinished(WebView webView, String str) {
            Intrinsics.checkParameterIsNotNull(webView, "view");
            Intrinsics.checkParameterIsNotNull(str, "url");
            super.onPageFinished(webView, str);
            Enter3dSecActivity.this.timeout = null;
            Enter3dSecActivity.this.hideProgressDialog();
        }

        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(webView, "view");
            Intrinsics.checkParameterIsNotNull(str, "description");
            Intrinsics.checkParameterIsNotNull(str2, "failingUrl");
            webView.stopLoading();
            Enter3dSecActivity.this.setErrorLoading();
        }

        @TargetApi(23)
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Intrinsics.checkParameterIsNotNull(webView, "view");
            Intrinsics.checkParameterIsNotNull(webResourceRequest, ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID);
            Intrinsics.checkParameterIsNotNull(webResourceError, "error");
            webView = new StringBuilder("Resource error ");
            webView.append(webResourceRequest.getUrl());
            webView.append(' ');
            webView.append(webResourceError.getDescription());
            webView.append(" html_page:\n ");
            webView.append(Enter3dSecActivity.access$getHtml$p(Enter3dSecActivity.this));
        }

        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            Intrinsics.checkParameterIsNotNull(webView, "view");
            Intrinsics.checkParameterIsNotNull(sslErrorHandler, "handler");
            Intrinsics.checkParameterIsNotNull(sslError, "error");
            Enter3dSecActivity.this.hideProgressDialog();
            Enter3dSecActivity.this.showProgressDialog(Enter3dSecActivity.this.getString(C0859R.string.one_more));
            ((CodePresenter) Enter3dSecActivity.this.getPresenter()).onSslError(sslErrorHandler, sslError, Enter3dSecActivity.access$getHtml$p(Enter3dSecActivity.this), (Function2) C1492xb41e7463.INSTANCE, (Function2) C1493xb41e7464.INSTANCE);
        }

        public final boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r0 = "view";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0);
            r0 = "url";
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r7, r0);
            r0 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.TAG;
            r1 = "shouldOverrideUrlLoading:";
            r2 = java.lang.String.valueOf(r7);
            r1 = r1.concat(r2);
            android.util.Log.v(r0, r1);
            r0 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;
            r0.hideProgressDialog();
            r0 = 0;
            r1 = android.net.Uri.parse(r7);	 Catch:{ Throwable -> 0x0062 }
            r2 = "uri";	 Catch:{ Throwable -> 0x0062 }
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Throwable -> 0x0062 }
            r2 = r1.getHost();	 Catch:{ Throwable -> 0x0062 }
            r3 = "rocketbank.ru";	 Catch:{ Throwable -> 0x0062 }
            r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3);	 Catch:{ Throwable -> 0x0062 }
            if (r2 == 0) goto L_0x0062;	 Catch:{ Throwable -> 0x0062 }
        L_0x0036:
            r1 = r1.getPath();	 Catch:{ Throwable -> 0x0062 }
            r2 = "uri.path";	 Catch:{ Throwable -> 0x0062 }
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Throwable -> 0x0062 }
            r1 = (java.lang.CharSequence) r1;	 Catch:{ Throwable -> 0x0062 }
            r2 = "ariuspay.ru/finish";	 Catch:{ Throwable -> 0x0062 }
            r2 = (java.lang.CharSequence) r2;	 Catch:{ Throwable -> 0x0062 }
            r3 = 2;	 Catch:{ Throwable -> 0x0062 }
            r4 = 0;	 Catch:{ Throwable -> 0x0062 }
            r1 = kotlin.text.StringsKt__StringsKt.contains$default(r1, r2, r0, r3, r4);	 Catch:{ Throwable -> 0x0062 }
            if (r1 == 0) goto L_0x0062;	 Catch:{ Throwable -> 0x0062 }
        L_0x004d:
            r6.loadUrl(r7);	 Catch:{ Throwable -> 0x0062 }
            r6 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.this;	 Catch:{ Throwable -> 0x0062 }
            r6 = ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.access$getWebView$p(r6);	 Catch:{ Throwable -> 0x0062 }
            r7 = new ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;	 Catch:{ Throwable -> 0x0062 }
            r7.<init>(r5);	 Catch:{ Throwable -> 0x0062 }
            r7 = (java.lang.Runnable) r7;	 Catch:{ Throwable -> 0x0062 }
            r1 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;	 Catch:{ Throwable -> 0x0062 }
            r6.postDelayed(r7, r1);	 Catch:{ Throwable -> 0x0062 }
        L_0x0062:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.c2c.Enter3dSecActivity.SecurityCodeWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    public static final String getERROR() {
        return ERROR;
    }

    public static final int getREQUEST_CODE() {
        return REQUEST_CODE;
    }

    public static final String getRESULT() {
        return RESULT;
    }

    public static final int getRESULT_FAILED() {
        return RESULT_FAILED;
    }

    public static final int getRESULT_OK() {
        return RESULT_OK;
    }

    public static final long getTIMEOUT() {
        return TIMEOUT;
    }

    private final void onLocalSslResult(boolean z) {
    }

    public static final void startActivity(Activity activity, int i, String str) {
        Companion.startActivity(activity, i, str);
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

    public static final /* synthetic */ String access$getHtml$p(Enter3dSecActivity enter3dSecActivity) {
        enter3dSecActivity = enter3dSecActivity.html;
        if (enter3dSecActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("html");
        }
        return enter3dSecActivity;
    }

    public static final /* synthetic */ WebView access$getWebView$p(Enter3dSecActivity enter3dSecActivity) {
        enter3dSecActivity = enter3dSecActivity.webView;
        if (enter3dSecActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        return enter3dSecActivity;
    }

    public final CodePresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("6e74114d-d070-41bc-8eab-055e33aecfba");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"6e74114…-41bc-8eab-055e33aecfba\")");
        return (CodePresenter) PresenterManager.getOrCreatePresenter(fromString, CodePresenter.class);
    }

    private final void onLocalSslError(Throwable th) {
        AnalyticsManager.logException(th);
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.stopLoading();
        setErrorSSL(th.getMessage());
    }

    private final void logError(String str, int i, String str2) {
        int i2 = VERSION.SDK_INT;
        StringBuilder stringBuilder = new StringBuilder("API ");
        stringBuilder.append(i2);
        stringBuilder.append(" - ");
        stringBuilder.append(str);
        stringBuilder.append(", ");
        stringBuilder.append(i);
        stringBuilder.append(": ");
        stringBuilder.append(str2);
        str = stringBuilder.toString();
        AnalyticsManager.logException((Throwable) new RocketWebViewException(str), str);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_enter_3d_sec);
        View findViewById = findViewById(C0859R.id.web_view);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.webkit.WebView");
        }
        this.webView = (WebView) findViewById;
        this.id = getIntent().getIntExtra(EXTRA_ID, -1);
        String stringExtra = getIntent().getStringExtra(EXTRA_HTML);
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "intent.getStringExtra(EXTRA_HTML)");
        this.html = stringExtra;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        initWebViewGeneral();
        if (bundle == null) {
            initWebView();
        } else {
            WebView webView = this.webView;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
            }
            webView.restoreState(bundle);
        }
        bundle = new Intent();
        bundle.putExtra(RESULT, RESULT_FAILED);
        bundle.putExtra(ERROR, getString(C0859R.string.ra_request_cancelled));
        setResult(REQUEST_CODE, bundle);
        execute();
    }

    public static /* bridge */ /* synthetic */ void setErrorSSL$default(Enter3dSecActivity enter3dSecActivity, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = enter3dSecActivity.getString(C0859R.string.error_ssl);
        }
        enter3dSecActivity.setErrorSSL(str);
    }

    public final void setErrorSSL(String str) {
        Intent intent = new Intent();
        intent.putExtra(ERROR, str);
        setResult(REQUEST_CODE, intent);
        hideProgressDialog();
        finish();
    }

    public final void setErrorLoading() {
        Intent intent = new Intent();
        intent.putExtra(ERROR, getString(C0859R.string.page_error));
        setResult(REQUEST_CODE, intent);
        hideProgressDialog();
        finish();
    }

    public final void setErrorTimeout() {
        Intent intent = new Intent();
        intent.putExtra(ERROR, getString(C0859R.string.timeout));
        setResult(REQUEST_CODE, intent);
        hideProgressDialog();
        finish();
    }

    public final void initWebViewGeneral() {
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.setWebViewClient(new SecurityCodeWebViewClient());
        webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        WebSettings settings = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings, "webView.settings");
        if (!settings.getJavaScriptEnabled()) {
            webView = this.webView;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
            }
            settings = webView.getSettings();
            Intrinsics.checkExpressionValueIsNotNull(settings, "webView.settings");
            settings.setJavaScriptEnabled(true);
        }
        webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        settings = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings, "webView.settings");
        if (!settings.getJavaScriptCanOpenWindowsAutomatically()) {
            webView = this.webView;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
            }
            settings = webView.getSettings();
            Intrinsics.checkExpressionValueIsNotNull(settings, "webView.settings");
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
        }
    }

    public final void initWebView() {
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.clearHistory();
        webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.clearCache(true);
        webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        String str = this.html;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("html");
        }
        webView.loadData(str, "text/html", "utf-8");
    }

    protected final void onResume() {
        super.onResume();
        keepUnlocked();
    }

    public final void onSuccess(Card2CardStatusResponseData card2CardStatusResponseData) {
        Intrinsics.checkParameterIsNotNull(card2CardStatusResponseData, "result");
        String status = card2CardStatusResponseData.getStatus();
        if (status != null) {
            int hashCode = status.hashCode();
            if (hashCode != 96784904) {
                if (hashCode != 422194963) {
                    if (hashCode == 1185244855) {
                        if (status.equals("approved")) {
                            this.feedManager.refresh();
                            onActionSuccess();
                            return;
                        }
                    }
                } else if (status.equals("processing")) {
                    execute();
                    return;
                }
            } else if (status.equals("error")) {
                card2CardStatusResponseData = card2CardStatusResponseData.getErrors();
                Intrinsics.checkExpressionValueIsNotNull(card2CardStatusResponseData, "result.errors");
                onActionFailed(card2CardStatusResponseData);
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("Неизвестный код ответа: ");
        stringBuilder.append(card2CardStatusResponseData.getStatus());
        onActionFailed(stringBuilder.toString());
    }

    public final void onActionSuccess() {
        Intent intent = new Intent();
        intent.putExtra(RESULT, RESULT_OK);
        setResult(REQUEST_CODE, intent);
        finish();
    }

    public final void onActionFailed(String str) {
        Intrinsics.checkParameterIsNotNull(str, "error");
        Intent intent = new Intent();
        intent.putExtra(RESULT, RESULT_FAILED);
        intent.putExtra(ERROR, str);
        setResult(REQUEST_CODE, intent);
        finish();
    }

    public final void onError(Throwable th) {
        Log.e(TAG, "Error", th);
        this.errorCount++;
        if (this.errorCount > 10) {
            onActionFailed("Сервер не смог выполнить запрос несколько раз подряд");
        } else {
            execute();
        }
    }

    protected final void onDestroy() {
        this.handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    public final void execute() {
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.postDelayed(new Enter3dSecActivity$execute$1(this), 2000);
    }

    private final void requestCode() {
        ((CodePresenter) getPresenter()).requestCode(this.id, Enter3dSecActivity$requestCode$1.INSTANCE, Enter3dSecActivity$requestCode$2.INSTANCE);
    }

    protected final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        }
        webView.saveState(bundle);
        super.onSaveInstanceState(bundle);
    }
}
