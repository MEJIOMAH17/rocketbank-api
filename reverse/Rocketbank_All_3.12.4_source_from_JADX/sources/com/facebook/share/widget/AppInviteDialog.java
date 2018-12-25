package com.facebook.share.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.Callback;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.DialogPresenter.ParameterProvider;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.share.internal.AppInviteDialogFeature;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;

public class AppInviteDialog extends FacebookDialogBase<AppInviteContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = RequestCodeOffset.AppInvite.toRequestCode();
    private static final String TAG = "AppInviteDialog";

    public static final class Result {
        private final Bundle bundle;

        public Result(Bundle bundle) {
            this.bundle = bundle;
        }

        public final Bundle getData() {
            return this.bundle;
        }
    }

    private class NativeHandler extends ModeHandler {
        private NativeHandler() {
            super();
        }

        public boolean canShow(AppInviteContent appInviteContent, boolean z) {
            return AppInviteDialog.canShowNativeDialog();
        }

        public AppCall createAppCall(final AppInviteContent appInviteContent) {
            AppCall createBaseAppCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new ParameterProvider() {
                public Bundle getParameters() {
                    return AppInviteDialog.createParameters(appInviteContent);
                }

                public Bundle getLegacyParameters() {
                    Log.e(AppInviteDialog.TAG, "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
                    return new Bundle();
                }
            }, AppInviteDialog.getFeature());
            return createBaseAppCall;
        }
    }

    private class WebFallbackHandler extends ModeHandler {
        private WebFallbackHandler() {
            super();
        }

        public boolean canShow(AppInviteContent appInviteContent, boolean z) {
            return AppInviteDialog.canShowWebFallback();
        }

        public AppCall createAppCall(AppInviteContent appInviteContent) {
            AppCall createBaseAppCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebFallbackDialog(createBaseAppCall, AppInviteDialog.createParameters(appInviteContent), AppInviteDialog.getFeature());
            return createBaseAppCall;
        }
    }

    public static boolean canShow() {
        if (!canShowNativeDialog()) {
            if (!canShowWebFallback()) {
                return false;
            }
        }
        return true;
    }

    public static void show(Activity activity, AppInviteContent appInviteContent) {
        new AppInviteDialog(activity).show(appInviteContent);
    }

    public static void show(Fragment fragment, AppInviteContent appInviteContent) {
        show(new FragmentWrapper(fragment), appInviteContent);
    }

    public static void show(android.app.Fragment fragment, AppInviteContent appInviteContent) {
        show(new FragmentWrapper(fragment), appInviteContent);
    }

    private static void show(FragmentWrapper fragmentWrapper, AppInviteContent appInviteContent) {
        new AppInviteDialog(fragmentWrapper).show(appInviteContent);
    }

    private static boolean canShowNativeDialog() {
        return DialogPresenter.canPresentNativeDialogWithFeature(getFeature());
    }

    private static boolean canShowWebFallback() {
        return DialogPresenter.canPresentWebFallbackDialogWithFeature(getFeature());
    }

    public AppInviteDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public AppInviteDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    public AppInviteDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    private AppInviteDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }

    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        if (facebookCallback == null) {
            facebookCallback = null;
        } else {
            facebookCallback = new ResultProcessor(facebookCallback) {
                public void onSuccess(AppCall appCall, Bundle bundle) {
                    if ("cancel".equalsIgnoreCase(ShareInternalUtility.getNativeDialogCompletionGesture(bundle)) != null) {
                        facebookCallback.onCancel();
                    } else {
                        facebookCallback.onSuccess(new Result(bundle));
                    }
                }
            };
        }
        callbackManagerImpl.registerCallback(getRequestCode(), new Callback() {
            public boolean onActivityResult(int i, Intent intent) {
                return ShareInternalUtility.handleActivityResult(AppInviteDialog.this.getRequestCode(), i, intent, facebookCallback);
            }
        });
    }

    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    protected List<ModeHandler> getOrderedModeHandlers() {
        List arrayList = new ArrayList();
        arrayList.add(new NativeHandler());
        arrayList.add(new WebFallbackHandler());
        return arrayList;
    }

    private static DialogFeature getFeature() {
        return AppInviteDialogFeature.APP_INVITES_DIALOG;
    }

    private static android.os.Bundle createParameters(com.facebook.share.model.AppInviteContent r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new android.os.Bundle;
        r0.<init>();
        r1 = "app_link_url";
        r2 = r4.getApplinkUrl();
        r0.putString(r1, r2);
        r1 = "preview_image_url";
        r2 = r4.getPreviewImageUrl();
        r0.putString(r1, r2);
        r1 = "destination";
        r2 = r4.getDestination();
        r2 = r2.toString();
        r0.putString(r1, r2);
        r1 = r4.getPromotionCode();
        if (r1 == 0) goto L_0x002b;
    L_0x002a:
        goto L_0x002d;
    L_0x002b:
        r1 = "";
    L_0x002d:
        r4 = r4.getPromotionText();
        r2 = android.text.TextUtils.isEmpty(r4);
        if (r2 != 0) goto L_0x0061;
    L_0x0037:
        r2 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x005a }
        r2.<init>();	 Catch:{ JSONException -> 0x005a }
        r3 = "promo_code";	 Catch:{ JSONException -> 0x005a }
        r2.put(r3, r1);	 Catch:{ JSONException -> 0x005a }
        r3 = "promo_text";	 Catch:{ JSONException -> 0x005a }
        r2.put(r3, r4);	 Catch:{ JSONException -> 0x005a }
        r3 = "deeplink_context";	 Catch:{ JSONException -> 0x005a }
        r2 = r2.toString();	 Catch:{ JSONException -> 0x005a }
        r0.putString(r3, r2);	 Catch:{ JSONException -> 0x005a }
        r2 = "promo_code";	 Catch:{ JSONException -> 0x005a }
        r0.putString(r2, r1);	 Catch:{ JSONException -> 0x005a }
        r1 = "promo_text";	 Catch:{ JSONException -> 0x005a }
        r0.putString(r1, r4);	 Catch:{ JSONException -> 0x005a }
        goto L_0x0061;
    L_0x005a:
        r4 = "AppInviteDialog";
        r1 = "Json Exception in creating deeplink context";
        android.util.Log.e(r4, r1);
    L_0x0061:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.widget.AppInviteDialog.createParameters(com.facebook.share.model.AppInviteContent):android.os.Bundle");
    }
}
