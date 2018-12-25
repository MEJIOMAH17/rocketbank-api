package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.C0361R;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageRequest.Builder;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.PermissionsPair;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient.Request;
import java.util.Date;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class DeviceAuthDialog extends DialogFragment {
    private static final String DEVICE_LOGIN_ENDPOINT = "device/login";
    private static final String DEVICE_LOGIN_STATUS_ENDPOINT = "device/login_status";
    private static final int LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED = 1349173;
    private static final int LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING = 1349174;
    private static final int LOGIN_ERROR_SUBCODE_CODE_EXPIRED = 1349152;
    private static final int LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING = 1349172;
    private static final String REQUEST_STATE_KEY = "request_state";
    private AtomicBoolean completed = new AtomicBoolean();
    private TextView confirmationCode;
    private volatile GraphRequestAsyncTask currentGraphRequestPoll;
    private volatile RequestState currentRequestState;
    private DeviceAuthMethodHandler deviceAuthMethodHandler;
    private Dialog dialog;
    private boolean isBeingDestroyed = false;
    private boolean isRetry = false;
    private Request mRequest = null;
    private ProgressBar progressBar;
    private volatile ScheduledFuture scheduledPoll;

    /* renamed from: com.facebook.login.DeviceAuthDialog$3 */
    class C04113 implements OnClickListener {
        C04113() {
        }

        public void onClick(View view) {
            DeviceAuthDialog.this.onCancel();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$4 */
    class C04124 implements Runnable {
        C04124() {
        }

        public void run() {
            DeviceAuthDialog.this.poll();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$6 */
    class C04136 implements DialogInterface.OnClickListener {
        C04136() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            DeviceAuthDialog.this.dialog.setContentView(DeviceAuthDialog.this.initializeContentView(0));
            DeviceAuthDialog.this.startLogin(DeviceAuthDialog.this.mRequest);
        }
    }

    private static class RequestState implements Parcelable {
        public static final Creator<RequestState> CREATOR = new C04151();
        private long interval;
        private long lastPoll;
        private String requestCode;
        private String userCode;

        /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$1 */
        static class C04151 implements Creator<RequestState> {
            C04151() {
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

        public String getRequestCode() {
            return this.requestCode;
        }

        public void setRequestCode(String str) {
            this.requestCode = str;
        }

        public long getInterval() {
            return this.interval;
        }

        public void setInterval(long j) {
            this.interval = j;
        }

        public void setLastPoll(long j) {
            this.lastPoll = j;
        }

        protected RequestState(Parcel parcel) {
            this.userCode = parcel.readString();
            this.requestCode = parcel.readString();
            this.interval = parcel.readLong();
            this.lastPoll = parcel.readLong();
        }

        public boolean withinLastRefreshWindow() {
            boolean z = false;
            if (this.lastPoll == 0) {
                return false;
            }
            if ((new Date().getTime() - this.lastPoll) - (this.interval * 1000) < 0) {
                z = true;
            }
            return z;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.userCode);
            parcel.writeString(this.requestCode);
            parcel.writeLong(this.interval);
            parcel.writeLong(this.lastPoll);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$1 */
    class C10211 implements Callback {
        C10211() {
        }

        public void onCompleted(GraphResponse graphResponse) {
            if (graphResponse.getError() != null) {
                DeviceAuthDialog.this.onError(graphResponse.getError().getException());
                return;
            }
            graphResponse = graphResponse.getJSONObject();
            RequestState requestState = new RequestState();
            try {
                requestState.setUserCode(graphResponse.getString("user_code"));
                requestState.setRequestCode(graphResponse.getString("code"));
                requestState.setInterval(graphResponse.getLong("interval"));
                DeviceAuthDialog.this.setCurrentRequestState(requestState);
            } catch (Throwable e) {
                DeviceAuthDialog.this.onError(new FacebookException(e));
            }
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$5 */
    class C10235 implements Callback {
        C10235() {
        }

        public void onCompleted(GraphResponse graphResponse) {
            if (!DeviceAuthDialog.this.completed.get()) {
                FacebookRequestError error = graphResponse.getError();
                if (error != null) {
                    int subErrorCode = error.getSubErrorCode();
                    if (subErrorCode != DeviceAuthDialog.LOGIN_ERROR_SUBCODE_CODE_EXPIRED) {
                        switch (subErrorCode) {
                            case DeviceAuthDialog.LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING /*1349172*/:
                            case DeviceAuthDialog.LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING /*1349174*/:
                                DeviceAuthDialog.this.schedulePoll();
                                return;
                            case DeviceAuthDialog.LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED /*1349173*/:
                                break;
                            default:
                                DeviceAuthDialog.this.onError(graphResponse.getError().getException());
                                return;
                        }
                    }
                    DeviceAuthDialog.this.onCancel();
                    return;
                }
                try {
                    DeviceAuthDialog.this.onSuccess(graphResponse.getJSONObject().getString("access_token"));
                } catch (Throwable e) {
                    DeviceAuthDialog.this.onError(new FacebookException(e));
                }
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.deviceAuthMethodHandler = (DeviceAuthMethodHandler) ((LoginFragment) ((FacebookActivity) getActivity()).getCurrentFragment()).getLoginClient().getCurrentHandler();
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
        getActivity().getLayoutInflater();
        bundle = (DeviceRequestsHelper.isAvailable() == null || this.isRetry != null) ? null : true;
        this.dialog.setContentView(initializeContentView(bundle));
        return this.dialog;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.isBeingDestroyed == null) {
            onCancel();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.currentRequestState != null) {
            bundle.putParcelable(REQUEST_STATE_KEY, this.currentRequestState);
        }
    }

    public void onDestroy() {
        this.isBeingDestroyed = true;
        this.completed.set(true);
        super.onDestroy();
        if (this.currentGraphRequestPoll != null) {
            this.currentGraphRequestPoll.cancel(true);
        }
        if (this.scheduledPoll != null) {
            this.scheduledPoll.cancel(true);
        }
    }

    public void startLogin(Request request) {
        this.mRequest = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.getPermissions()));
        request = request.getDeviceRedirectUriString();
        if (request != null) {
            bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, request);
        }
        request = new StringBuilder();
        request.append(Validate.hasAppID());
        request.append("|");
        request.append(Validate.hasClientToken());
        bundle.putString("access_token", request.toString());
        bundle.putString(DeviceRequestsHelper.DEVICE_INFO_PARAM, DeviceRequestsHelper.getDeviceInfo());
        new GraphRequest(null, DEVICE_LOGIN_ENDPOINT, bundle, HttpMethod.POST, new C10211()).executeAsync();
    }

    private void setCurrentRequestState(RequestState requestState) {
        this.currentRequestState = requestState;
        this.confirmationCode.setText(requestState.getUserCode());
        this.confirmationCode.setVisibility(0);
        this.progressBar.setVisibility(8);
        if (!this.isRetry && DeviceRequestsHelper.startAdvertisementService(requestState.getUserCode())) {
            AppEventsLogger.newLogger(getContext()).logSdkEvent(AnalyticsEvents.EVENT_SMART_LOGIN_SERVICE, null, null);
        }
        if (requestState.withinLastRefreshWindow() != null) {
            schedulePoll();
        } else {
            poll();
        }
    }

    private void appendIconToTextView(final TextView textView, String str) {
        ImageDownloader.downloadAsync(new Builder(getContext(), Uri.parse(str)).setCallback(new ImageRequest.Callback() {
            public void onCompleted(ImageResponse imageResponse) {
                if (imageResponse.getBitmap() != null) {
                    textView.setCompoundDrawablesWithIntrinsicBounds(null, null, new BitmapDrawable(DeviceAuthDialog.this.getResources(), Bitmap.createScaledBitmap(imageResponse.getBitmap(), 24, 24, false)), null);
                }
            }
        }).build());
    }

    private View initializeContentView(boolean z) {
        LayoutInflater layoutInflater = getActivity().getLayoutInflater();
        if (z) {
            z = layoutInflater.inflate(C0361R.layout.com_facebook_smart_device_dialog_fragment, null);
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            if (appSettingsWithoutQuery.getSmartLoginBookmarkIconURL() != null) {
                appendIconToTextView((TextView) z.findViewById(C0361R.id.com_facebook_smart_instructions_2), appSettingsWithoutQuery.getSmartLoginBookmarkIconURL());
            }
            if (appSettingsWithoutQuery.getSmartLoginMenuIconURL() != null) {
                appendIconToTextView((TextView) z.findViewById(C0361R.id.com_facebook_smart_instructions_1), appSettingsWithoutQuery.getSmartLoginMenuIconURL());
            }
        } else {
            z = layoutInflater.inflate(C0361R.layout.com_facebook_device_auth_dialog_fragment, null);
        }
        this.progressBar = (ProgressBar) z.findViewById(C0361R.id.progress_bar);
        this.confirmationCode = (TextView) z.findViewById(C0361R.id.confirmation_code);
        ((Button) z.findViewById(C0361R.id.cancel_button)).setOnClickListener(new C04113());
        ((TextView) z.findViewById(C0361R.id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(C0361R.string.com_facebook_device_auth_instructions)));
        return z;
    }

    private void poll() {
        this.currentRequestState.setLastPoll(new Date().getTime());
        this.currentGraphRequestPoll = getPollRequest().executeAsync();
    }

    private void schedulePoll() {
        this.scheduledPoll = DeviceAuthMethodHandler.getBackgroundExecutor().schedule(new C04124(), this.currentRequestState.getInterval(), TimeUnit.SECONDS);
    }

    private GraphRequest getPollRequest() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.currentRequestState.getRequestCode());
        return new GraphRequest(null, DEVICE_LOGIN_STATUS_ENDPOINT, bundle, HttpMethod.POST, new C10235());
    }

    private void presentConfirmation(final String str, final PermissionsPair permissionsPair, final String str2, String str3) {
        CharSequence string = getResources().getString(C0361R.string.com_facebook_smart_login_confirmation_title);
        String string2 = getResources().getString(C0361R.string.com_facebook_smart_login_confirmation_continue_as);
        CharSequence string3 = getResources().getString(C0361R.string.com_facebook_smart_login_confirmation_cancel);
        str3 = String.format(string2, new Object[]{str3});
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(str3, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.completeLogin(str, permissionsPair, str2);
            }
        }).setPositiveButton(string3, new C04136());
        builder.create().show();
    }

    private void onSuccess(final String str) {
        Bundle bundle = new Bundle();
        bundle.putString(GraphRequest.FIELDS_PARAM, "id,permissions,name");
        new GraphRequest(new AccessToken(str, FacebookSdk.getApplicationId(), AppEventsConstants.EVENT_PARAM_VALUE_NO, null, null, null, null, null), "me", bundle, HttpMethod.GET, new Callback() {
            public void onCompleted(GraphResponse graphResponse) {
                if (!DeviceAuthDialog.this.completed.get()) {
                    if (graphResponse.getError() != null) {
                        DeviceAuthDialog.this.onError(graphResponse.getError().getException());
                        return;
                    }
                    try {
                        graphResponse = graphResponse.getJSONObject();
                        String string = graphResponse.getString("id");
                        PermissionsPair handlePermissionResponse = Utility.handlePermissionResponse(graphResponse);
                        graphResponse = graphResponse.getString("name");
                        DeviceRequestsHelper.cleanUpAdvertisementService(DeviceAuthDialog.this.currentRequestState.getUserCode());
                        if (!FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId()).getSmartLoginOptions().contains(SmartLoginOption.RequireConfirm) || DeviceAuthDialog.this.isRetry) {
                            DeviceAuthDialog.this.completeLogin(string, handlePermissionResponse, str);
                            return;
                        }
                        DeviceAuthDialog.this.isRetry = true;
                        DeviceAuthDialog.this.presentConfirmation(string, handlePermissionResponse, str, graphResponse);
                    } catch (Throwable e) {
                        DeviceAuthDialog.this.onError(new FacebookException(e));
                    }
                }
            }
        }).executeAsync();
    }

    private void completeLogin(String str, PermissionsPair permissionsPair, String str2) {
        this.deviceAuthMethodHandler.onSuccess(str2, FacebookSdk.getApplicationId(), str, permissionsPair.getGrantedPermissions(), permissionsPair.getDeclinedPermissions(), AccessTokenSource.DEVICE_AUTH, null, null);
        this.dialog.dismiss();
    }

    private void onError(FacebookException facebookException) {
        if (this.completed.compareAndSet(false, true)) {
            if (this.currentRequestState != null) {
                DeviceRequestsHelper.cleanUpAdvertisementService(this.currentRequestState.getUserCode());
            }
            this.deviceAuthMethodHandler.onError(facebookException);
            this.dialog.dismiss();
        }
    }

    private void onCancel() {
        if (this.completed.compareAndSet(false, true)) {
            DeviceRequestsHelper.cleanUpAdvertisementService(this.currentRequestState.getUserCode());
            if (this.deviceAuthMethodHandler != null) {
                this.deviceAuthMethodHandler.onCancel();
            }
            this.dialog.dismiss();
        }
    }
}
