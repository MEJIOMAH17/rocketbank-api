package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.C0361R;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.share.internal.ShareConstants;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;

public class WebDialog extends Dialog {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int BACKGROUND_GRAY = -872415232;
    static final String CANCEL_URI = "fbconnect://cancel";
    static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5d;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    static final String REDIRECT_URI = "fbconnect://success";
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private String expectedRedirectUrl;
    private boolean isDetached;
    private boolean isPageFinished;
    private boolean listenerCalled;
    private OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private UploadStagingResourcesTask uploadTask;
    private String url;
    private WebView webView;

    /* renamed from: com.facebook.internal.WebDialog$1 */
    class C04051 implements OnCancelListener {
        C04051() {
        }

        public void onCancel(DialogInterface dialogInterface) {
            WebDialog.this.cancel();
        }
    }

    /* renamed from: com.facebook.internal.WebDialog$2 */
    class C04062 implements OnClickListener {
        C04062() {
        }

        public void onClick(View view) {
            WebDialog.this.cancel();
        }
    }

    /* renamed from: com.facebook.internal.WebDialog$4 */
    class C04084 implements OnTouchListener {
        C04084() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (view.hasFocus() == null) {
                view.requestFocus();
            }
            return null;
        }
    }

    public static class Builder {
        private AccessToken accessToken;
        private String action;
        private String applicationId;
        private Context context;
        private OnCompleteListener listener;
        private Bundle parameters;
        private int theme;

        public Builder(Context context, String str, Bundle bundle) {
            this.accessToken = AccessToken.getCurrentAccessToken();
            if (this.accessToken == null) {
                String metadataApplicationId = Utility.getMetadataApplicationId(context);
                if (metadataApplicationId != null) {
                    this.applicationId = metadataApplicationId;
                } else {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            finishInit(context, str, bundle);
        }

        public Builder(Context context, String str, String str2, Bundle bundle) {
            if (str == null) {
                str = Utility.getMetadataApplicationId(context);
            }
            Validate.notNullOrEmpty(str, "applicationId");
            this.applicationId = str;
            finishInit(context, str2, bundle);
        }

        public Builder setTheme(int i) {
            this.theme = i;
            return this;
        }

        public Builder setOnCompleteListener(OnCompleteListener onCompleteListener) {
            this.listener = onCompleteListener;
            return this;
        }

        public WebDialog build() {
            if (this.accessToken != null) {
                this.parameters.putString("app_id", this.accessToken.getApplicationId());
                this.parameters.putString("access_token", this.accessToken.getToken());
            } else {
                this.parameters.putString("app_id", this.applicationId);
            }
            return new WebDialog(this.context, this.action, this.parameters, this.theme, this.listener);
        }

        public String getApplicationId() {
            return this.applicationId;
        }

        public Context getContext() {
            return this.context;
        }

        public int getTheme() {
            return this.theme;
        }

        public Bundle getParameters() {
            return this.parameters;
        }

        public OnCompleteListener getListener() {
            return this.listener;
        }

        private void finishInit(Context context, String str, Bundle bundle) {
            this.context = context;
            this.action = str;
            if (bundle != null) {
                this.parameters = bundle;
            } else {
                this.parameters = new Bundle();
            }
        }
    }

    private class DialogWebViewClient extends WebViewClient {
        private DialogWebViewClient() {
        }

        public boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r6 = "FacebookSDK.WebDialog";
            r0 = "Redirect URL: ";
            r1 = java.lang.String.valueOf(r7);
            r0 = r0.concat(r1);
            com.facebook.internal.Utility.logd(r6, r0);
            r6 = com.facebook.internal.WebDialog.this;
            r6 = r6.expectedRedirectUrl;
            r6 = r7.startsWith(r6);
            r0 = 1;
            if (r6 == 0) goto L_0x009f;
        L_0x001c:
            r6 = com.facebook.internal.WebDialog.this;
            r6 = r6.parseResponseUri(r7);
            r7 = "error";
            r7 = r6.getString(r7);
            if (r7 != 0) goto L_0x0030;
        L_0x002a:
            r7 = "error_type";
            r7 = r6.getString(r7);
        L_0x0030:
            r1 = "error_msg";
            r1 = r6.getString(r1);
            if (r1 != 0) goto L_0x003e;
        L_0x0038:
            r1 = "error_message";
            r1 = r6.getString(r1);
        L_0x003e:
            if (r1 != 0) goto L_0x0046;
        L_0x0040:
            r1 = "error_description";
            r1 = r6.getString(r1);
        L_0x0046:
            r2 = "error_code";
            r2 = r6.getString(r2);
            r3 = com.facebook.internal.Utility.isNullOrEmpty(r2);
            r4 = -1;
            if (r3 != 0) goto L_0x0058;
        L_0x0053:
            r2 = java.lang.Integer.parseInt(r2);	 Catch:{ NumberFormatException -> 0x0058 }
            goto L_0x0059;
        L_0x0058:
            r2 = r4;
        L_0x0059:
            r3 = com.facebook.internal.Utility.isNullOrEmpty(r7);
            if (r3 == 0) goto L_0x006d;
        L_0x005f:
            r3 = com.facebook.internal.Utility.isNullOrEmpty(r1);
            if (r3 == 0) goto L_0x006d;
        L_0x0065:
            if (r2 != r4) goto L_0x006d;
        L_0x0067:
            r7 = com.facebook.internal.WebDialog.this;
            r7.sendSuccessToListener(r6);
            goto L_0x009e;
        L_0x006d:
            if (r7 == 0) goto L_0x0085;
        L_0x006f:
            r6 = "access_denied";
            r6 = r7.equals(r6);
            if (r6 != 0) goto L_0x007f;
        L_0x0077:
            r6 = "OAuthAccessDeniedException";
            r6 = r7.equals(r6);
            if (r6 == 0) goto L_0x0085;
        L_0x007f:
            r6 = com.facebook.internal.WebDialog.this;
            r6.cancel();
            goto L_0x009e;
        L_0x0085:
            r6 = 4201; // 0x1069 float:5.887E-42 double:2.0756E-320;
            if (r2 != r6) goto L_0x008f;
        L_0x0089:
            r6 = com.facebook.internal.WebDialog.this;
            r6.cancel();
            goto L_0x009e;
        L_0x008f:
            r6 = new com.facebook.FacebookRequestError;
            r6.<init>(r2, r7, r1);
            r7 = com.facebook.internal.WebDialog.this;
            r2 = new com.facebook.FacebookServiceException;
            r2.<init>(r6, r1);
            r7.sendErrorToListener(r2);
        L_0x009e:
            return r0;
        L_0x009f:
            r6 = "fbconnect://cancel";
            r6 = r7.startsWith(r6);
            if (r6 == 0) goto L_0x00ad;
        L_0x00a7:
            r6 = com.facebook.internal.WebDialog.this;
            r6.cancel();
            return r0;
        L_0x00ad:
            r6 = "touch";
            r6 = r7.contains(r6);
            r1 = 0;
            if (r6 == 0) goto L_0x00b7;
        L_0x00b6:
            return r1;
        L_0x00b7:
            r6 = com.facebook.internal.WebDialog.this;	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r6 = r6.getContext();	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r2 = new android.content.Intent;	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r3 = "android.intent.action.VIEW";	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r7 = android.net.Uri.parse(r7);	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r2.<init>(r3, r7);	 Catch:{ ActivityNotFoundException -> 0x00cc }
            r6.startActivity(r2);	 Catch:{ ActivityNotFoundException -> 0x00cc }
            return r0;
        L_0x00cc:
            return r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.DialogWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebDialog.this.sendErrorToListener(new FacebookDialogException(str, i, str2));
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            WebDialog.this.sendErrorToListener(new FacebookDialogException(null, -11, null));
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Utility.logd(WebDialog.LOG_TAG, "Webview loading URL: ".concat(String.valueOf(str)));
            super.onPageStarted(webView, str, bitmap);
            if (WebDialog.this.isDetached == null) {
                WebDialog.this.spinner.show();
            }
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (WebDialog.this.isDetached == null) {
                WebDialog.this.spinner.dismiss();
            }
            WebDialog.this.contentFrameLayout.setBackgroundColor(0);
            WebDialog.this.webView.setVisibility(0);
            WebDialog.this.crossImageView.setVisibility(0);
            WebDialog.this.isPageFinished = true;
        }
    }

    public interface OnCompleteListener {
        void onComplete(Bundle bundle, FacebookException facebookException);
    }

    private class UploadStagingResourcesTask extends AsyncTask<Void, Void, String[]> {
        private String action;
        private Exception[] exceptions;
        private Bundle parameters;

        UploadStagingResourcesTask(String str, Bundle bundle) {
            this.action = str;
            this.parameters = bundle;
        }

        protected java.lang.String[] doInBackground(java.lang.Void... r10) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r9 = this;
            r10 = r9.parameters;
            r0 = "media";
            r10 = r10.getStringArray(r0);
            r0 = r10.length;
            r0 = new java.lang.String[r0];
            r1 = r10.length;
            r1 = new java.lang.Exception[r1];
            r9.exceptions = r1;
            r1 = new java.util.concurrent.CountDownLatch;
            r2 = r10.length;
            r1.<init>(r2);
            r2 = new java.util.concurrent.ConcurrentLinkedQueue;
            r2.<init>();
            r3 = com.facebook.AccessToken.getCurrentAccessToken();
            r4 = 0;
        L_0x0020:
            r5 = 0;
            r6 = 1;
            r7 = r10.length;	 Catch:{ Exception -> 0x006d }
            if (r4 >= r7) goto L_0x0069;	 Catch:{ Exception -> 0x006d }
        L_0x0025:
            r7 = r9.isCancelled();	 Catch:{ Exception -> 0x006d }
            if (r7 == 0) goto L_0x0040;	 Catch:{ Exception -> 0x006d }
        L_0x002b:
            r10 = r2.iterator();	 Catch:{ Exception -> 0x006d }
        L_0x002f:
            r0 = r10.hasNext();	 Catch:{ Exception -> 0x006d }
            if (r0 == 0) goto L_0x003f;	 Catch:{ Exception -> 0x006d }
        L_0x0035:
            r0 = r10.next();	 Catch:{ Exception -> 0x006d }
            r0 = (android.os.AsyncTask) r0;	 Catch:{ Exception -> 0x006d }
            r0.cancel(r6);	 Catch:{ Exception -> 0x006d }
            goto L_0x002f;	 Catch:{ Exception -> 0x006d }
        L_0x003f:
            return r5;	 Catch:{ Exception -> 0x006d }
        L_0x0040:
            r7 = r10[r4];	 Catch:{ Exception -> 0x006d }
            r7 = android.net.Uri.parse(r7);	 Catch:{ Exception -> 0x006d }
            r8 = com.facebook.internal.Utility.isWebUri(r7);	 Catch:{ Exception -> 0x006d }
            if (r8 == 0) goto L_0x0056;	 Catch:{ Exception -> 0x006d }
        L_0x004c:
            r7 = r7.toString();	 Catch:{ Exception -> 0x006d }
            r0[r4] = r7;	 Catch:{ Exception -> 0x006d }
            r1.countDown();	 Catch:{ Exception -> 0x006d }
            goto L_0x0066;	 Catch:{ Exception -> 0x006d }
        L_0x0056:
            r8 = new com.facebook.internal.WebDialog$UploadStagingResourcesTask$1;	 Catch:{ Exception -> 0x006d }
            r8.<init>(r0, r4, r1);	 Catch:{ Exception -> 0x006d }
            r7 = com.facebook.share.internal.ShareInternalUtility.newUploadStagingResourceWithImageRequest(r3, r7, r8);	 Catch:{ Exception -> 0x006d }
            r7 = r7.executeAsync();	 Catch:{ Exception -> 0x006d }
            r2.add(r7);	 Catch:{ Exception -> 0x006d }
        L_0x0066:
            r4 = r4 + 1;	 Catch:{ Exception -> 0x006d }
            goto L_0x0020;	 Catch:{ Exception -> 0x006d }
        L_0x0069:
            r1.await();	 Catch:{ Exception -> 0x006d }
            return r0;
        L_0x006d:
            r10 = r2.iterator();
        L_0x0071:
            r0 = r10.hasNext();
            if (r0 == 0) goto L_0x0081;
        L_0x0077:
            r0 = r10.next();
            r0 = (android.os.AsyncTask) r0;
            r0.cancel(r6);
            goto L_0x0071;
        L_0x0081:
            return r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.UploadStagingResourcesTask.doInBackground(java.lang.Void[]):java.lang.String[]");
        }

        protected void onPostExecute(String[] strArr) {
            WebDialog.this.spinner.dismiss();
            for (Throwable th : this.exceptions) {
                if (th != null) {
                    WebDialog.this.sendErrorToListener(th);
                    return;
                }
            }
            if (strArr == null) {
                WebDialog.this.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            strArr = Arrays.asList(strArr);
            if (strArr.contains(null)) {
                WebDialog.this.sendErrorToListener(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            Utility.putJSONValueInBundle(this.parameters, ShareConstants.WEB_DIALOG_PARAM_MEDIA, new JSONArray(strArr));
            strArr = ServerProtocol.getDialogAuthority();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(FacebookSdk.getGraphApiVersion());
            stringBuilder.append("/dialog/");
            stringBuilder.append(this.action);
            WebDialog.this.url = Utility.buildUri(strArr, stringBuilder.toString(), this.parameters).toString();
            WebDialog.this.setUpWebView((WebDialog.this.crossImageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
    }

    private int getScaledSize(int i, float f, int i2, int i3) {
        int i4 = (int) (((float) i) / f);
        double d = MIN_SCALE_FACTOR;
        if (i4 <= i2) {
            d = 1.0d;
        } else if (i4 < i3) {
            d = MIN_SCALE_FACTOR + ((((double) (i3 - i4)) / ((double) (i3 - i2))) * MIN_SCALE_FACTOR);
        }
        return (int) (((double) i) * d);
    }

    public WebDialog(Context context, String str) {
        this(context, str, FacebookSdk.getWebDialogTheme());
    }

    public WebDialog(Context context, String str, int i) {
        if (i == 0) {
            i = FacebookSdk.getWebDialogTheme();
        }
        super(context, i);
        this.expectedRedirectUrl = "fbconnect://success";
        this.listenerCalled = false;
        this.isDetached = false;
        this.isPageFinished = false;
        this.url = str;
    }

    public WebDialog(Context context, String str, Bundle bundle, int i, OnCompleteListener onCompleteListener) {
        if (i == 0) {
            i = FacebookSdk.getWebDialogTheme();
        }
        super(context, i);
        this.expectedRedirectUrl = "fbconnect://success";
        this.listenerCalled = false;
        this.isDetached = false;
        this.isPageFinished = false;
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, "fbconnect://success");
        bundle.putString(ServerProtocol.DIALOG_PARAM_DISPLAY, "touch");
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", new Object[]{FacebookSdk.getSdkVersion()}));
        this.onCompleteListener = onCompleteListener;
        if (str.equals("share") == null || bundle.containsKey(ShareConstants.WEB_DIALOG_PARAM_MEDIA) == null) {
            context = ServerProtocol.getDialogAuthority();
            i = new StringBuilder();
            i.append(FacebookSdk.getGraphApiVersion());
            i.append("/dialog/");
            i.append(str);
            this.url = Utility.buildUri(context, i.toString(), bundle).toString();
            return;
        }
        this.uploadTask = new UploadStagingResourcesTask(str, bundle);
    }

    public void setOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }

    public OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    public void dismiss() {
        if (this.webView != null) {
            this.webView.stopLoading();
        }
        if (!(this.isDetached || this.spinner == null || !this.spinner.isShowing())) {
            this.spinner.dismiss();
        }
        super.dismiss();
    }

    protected void onStart() {
        super.onStart();
        if (this.uploadTask == null || this.uploadTask.getStatus() != Status.PENDING) {
            resize();
            return;
        }
        this.uploadTask.execute(new Void[0]);
        this.spinner.show();
    }

    protected void onStop() {
        if (this.uploadTask != null) {
            this.uploadTask.cancel(true);
            this.spinner.dismiss();
        }
        super.onStop();
    }

    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }

    public void onAttachedToWindow() {
        this.isDetached = false;
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.spinner = new ProgressDialog(getContext());
        this.spinner.requestWindowFeature(1);
        this.spinner.setMessage(getContext().getString(C0361R.string.com_facebook_loading));
        this.spinner.setCanceledOnTouchOutside(false);
        this.spinner.setOnCancelListener(new C04051());
        requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(getContext());
        resize();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        createCrossImage();
        if (this.url != null) {
            setUpWebView((this.crossImageView.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.contentFrameLayout.addView(this.crossImageView, new LayoutParams(-2, -2));
        setContentView(this.contentFrameLayout);
    }

    protected void setExpectedRedirectUrl(String str) {
        this.expectedRedirectUrl = str;
    }

    protected Bundle parseResponseUri(String str) {
        str = Uri.parse(str);
        Bundle parseUrlQueryString = Utility.parseUrlQueryString(str.getQuery());
        parseUrlQueryString.putAll(Utility.parseUrlQueryString(str.getFragment()));
        return parseUrlQueryString;
    }

    protected boolean isListenerCalled() {
        return this.listenerCalled;
    }

    protected boolean isPageFinished() {
        return this.isPageFinished;
    }

    protected WebView getWebView() {
        return this.webView;
    }

    public void resize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(getScaledSize(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, NO_PADDING_SCREEN_WIDTH, 800), displayMetrics.widthPixels), Math.min(getScaledSize(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, MAX_PADDING_SCREEN_HEIGHT), displayMetrics.heightPixels));
    }

    protected void sendSuccessToListener(Bundle bundle) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            this.onCompleteListener.onComplete(bundle, null);
            dismiss();
        }
    }

    protected void sendErrorToListener(Throwable th) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            if (th instanceof FacebookException) {
                th = (FacebookException) th;
            } else {
                th = new FacebookException(th);
            }
            this.onCompleteListener.onComplete(null, th);
            dismiss();
        }
    }

    public void cancel() {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            sendErrorToListener(new FacebookOperationCanceledException());
        }
    }

    private void createCrossImage() {
        this.crossImageView = new ImageView(getContext());
        this.crossImageView.setOnClickListener(new C04062());
        this.crossImageView.setImageDrawable(getContext().getResources().getDrawable(C0361R.drawable.com_facebook_close));
        this.crossImageView.setVisibility(4);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void setUpWebView(int i) {
        View linearLayout = new LinearLayout(getContext());
        this.webView = new WebView(getContext().getApplicationContext()) {
            public void onWindowFocusChanged(boolean r1) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r0 = this;
                super.onWindowFocusChanged(r1);	 Catch:{ NullPointerException -> 0x0004 }
                return;
            L_0x0004:
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.3.onWindowFocusChanged(boolean):void");
            }
        };
        this.webView.setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        this.webView.setWebViewClient(new DialogWebViewClient());
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl(this.url);
        this.webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.webView.setVisibility(4);
        this.webView.getSettings().setSavePassword(false);
        this.webView.getSettings().setSaveFormData(false);
        this.webView.setFocusable(true);
        this.webView.setFocusableInTouchMode(true);
        this.webView.setOnTouchListener(new C04084());
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.webView);
        linearLayout.setBackgroundColor(BACKGROUND_GRAY);
        this.contentFrameLayout.addView(linearLayout);
    }
}
