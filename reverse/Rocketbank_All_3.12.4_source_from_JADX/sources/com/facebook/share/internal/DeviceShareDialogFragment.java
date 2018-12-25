package com.facebook.share.internal;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.C0361R;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.HttpMethod;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class DeviceShareDialogFragment extends DialogFragment {
    private static final String DEVICE_SHARE_ENDPOINT = "device/share";
    private static final String REQUEST_STATE_KEY = "request_state";
    public static final String TAG = "DeviceShareDialogFragment";
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    private volatile ScheduledFuture codeExpiredFuture;
    private TextView confirmationCode;
    private volatile RequestState currentRequestState;
    private Dialog dialog;
    private ProgressBar progressBar;
    private ShareContent shareContent;

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$1 */
    class C04341 implements OnClickListener {
        C04341() {
        }

        public void onClick(View view) {
            DeviceShareDialogFragment.this.dialog.dismiss();
        }
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$3 */
    class C04353 implements Runnable {
        C04353() {
        }

        public void run() {
            DeviceShareDialogFragment.this.dialog.dismiss();
        }
    }

    private static class RequestState implements Parcelable {
        public static final Creator<RequestState> CREATOR = new C04361();
        private long expiresIn;
        private String userCode;

        /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$RequestState$1 */
        static class C04361 implements Creator<RequestState> {
            C04361() {
            }

            public final RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            public final RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        }

        public int describeContents() {
            return 0;
        }

        RequestState() {
        }

        public String getUserCode() {
            return this.userCode;
        }

        public void setUserCode(String str) {
            this.userCode = str;
        }

        public long getExpiresIn() {
            return this.expiresIn;
        }

        public void setExpiresIn(long j) {
            this.expiresIn = j;
        }

        protected RequestState(Parcel parcel) {
            this.userCode = parcel.readString();
            this.expiresIn = parcel.readLong();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.userCode);
            parcel.writeLong(this.expiresIn);
        }
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$2 */
    class C10422 implements Callback {
        C10422() {
        }

        public void onCompleted(com.facebook.GraphResponse r5) {
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
            r4 = this;
            r0 = r5.getError();
            if (r0 == 0) goto L_0x000c;
        L_0x0006:
            r5 = com.facebook.share.internal.DeviceShareDialogFragment.this;
            r5.finishActivityWithError(r0);
            return;
        L_0x000c:
            r5 = r5.getJSONObject();
            r0 = new com.facebook.share.internal.DeviceShareDialogFragment$RequestState;
            r0.<init>();
            r1 = "user_code";	 Catch:{ JSONException -> 0x002d }
            r1 = r5.getString(r1);	 Catch:{ JSONException -> 0x002d }
            r0.setUserCode(r1);	 Catch:{ JSONException -> 0x002d }
            r1 = "expires_in";	 Catch:{ JSONException -> 0x002d }
            r1 = r5.getLong(r1);	 Catch:{ JSONException -> 0x002d }
            r0.setExpiresIn(r1);	 Catch:{ JSONException -> 0x002d }
            r5 = com.facebook.share.internal.DeviceShareDialogFragment.this;
            r5.setCurrentRequestState(r0);
            return;
        L_0x002d:
            r5 = com.facebook.share.internal.DeviceShareDialogFragment.this;
            r0 = new com.facebook.FacebookRequestError;
            r1 = 0;
            r2 = "";
            r3 = "Malformed server response";
            r0.<init>(r1, r2, r3);
            r5.finishActivityWithError(r0);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.DeviceShareDialogFragment.2.onCompleted(com.facebook.GraphResponse):void");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle != null) {
            RequestState requestState = (RequestState) bundle.getParcelable(REQUEST_STATE_KEY);
            if (requestState != null) {
                setCurrentRequestState(requestState);
            }
        }
        return layoutInflater;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        this.dialog = new Dialog(getActivity(), C0361R.style.com_facebook_auth_dialog);
        bundle = getActivity().getLayoutInflater().inflate(C0361R.layout.com_facebook_device_auth_dialog_fragment, null);
        this.progressBar = (ProgressBar) bundle.findViewById(C0361R.id.progress_bar);
        this.confirmationCode = (TextView) bundle.findViewById(C0361R.id.confirmation_code);
        ((Button) bundle.findViewById(C0361R.id.cancel_button)).setOnClickListener(new C04341());
        ((TextView) bundle.findViewById(C0361R.id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(C0361R.string.com_facebook_device_auth_instructions)));
        this.dialog.setContentView(bundle);
        startShare();
        return this.dialog;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.codeExpiredFuture != null) {
            this.codeExpiredFuture.cancel(true);
        }
        finishActivity(-1, new Intent());
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.currentRequestState != null) {
            bundle.putParcelable(REQUEST_STATE_KEY, this.currentRequestState);
        }
    }

    private void finishActivity(int i, Intent intent) {
        DeviceRequestsHelper.cleanUpAdvertisementService(this.currentRequestState.getUserCode());
        if (isAdded()) {
            Activity activity = getActivity();
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    private void detach() {
        if (isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    public void setShareContent(ShareContent shareContent) {
        this.shareContent = shareContent;
    }

    private Bundle getGraphParametersForShareContent() {
        ShareContent shareContent = this.shareContent;
        if (shareContent == null) {
            return null;
        }
        if (shareContent instanceof ShareLinkContent) {
            return WebDialogParameters.create((ShareLinkContent) shareContent);
        }
        if (shareContent instanceof ShareOpenGraphContent) {
            return WebDialogParameters.create((ShareOpenGraphContent) shareContent);
        }
        return null;
    }

    private void startShare() {
        Bundle graphParametersForShareContent = getGraphParametersForShareContent();
        if (graphParametersForShareContent == null || graphParametersForShareContent.size() == 0) {
            finishActivityWithError(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Validate.hasAppID());
        stringBuilder.append("|");
        stringBuilder.append(Validate.hasClientToken());
        graphParametersForShareContent.putString("access_token", stringBuilder.toString());
        graphParametersForShareContent.putString(DeviceRequestsHelper.DEVICE_INFO_PARAM, DeviceRequestsHelper.getDeviceInfo());
        new GraphRequest(null, DEVICE_SHARE_ENDPOINT, graphParametersForShareContent, HttpMethod.POST, new C10422()).executeAsync();
    }

    private void finishActivityWithError(FacebookRequestError facebookRequestError) {
        detach();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        finishActivity(-1, intent);
    }

    private static synchronized ScheduledThreadPoolExecutor getBackgroundExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            if (backgroundExecutor == null) {
                backgroundExecutor = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = backgroundExecutor;
        }
        return scheduledThreadPoolExecutor;
    }

    private void setCurrentRequestState(RequestState requestState) {
        this.currentRequestState = requestState;
        this.confirmationCode.setText(requestState.getUserCode());
        this.confirmationCode.setVisibility(0);
        this.progressBar.setVisibility(8);
        this.codeExpiredFuture = getBackgroundExecutor().schedule(new C04353(), requestState.getExpiresIn(), TimeUnit.SECONDS);
    }
}
