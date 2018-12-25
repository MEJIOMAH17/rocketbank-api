package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.C0361R;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.share.DeviceShareDialog;
import com.facebook.share.DeviceShareDialog.Result;
import com.facebook.share.model.ShareContent;

public final class DeviceShareButton extends FacebookButtonBase {
    private DeviceShareDialog dialog;
    private boolean enabledExplicitlySet;
    private int requestCode;
    private ShareContent shareContent;

    /* renamed from: com.facebook.share.widget.DeviceShareButton$1 */
    class C04611 implements OnClickListener {
        C04611() {
        }

        public void onClick(View view) {
            DeviceShareButton.this.callExternalOnClickListener(view);
            DeviceShareButton.this.getDialog().show(DeviceShareButton.this.getShareContent());
        }
    }

    public DeviceShareButton(Context context) {
        this(context, null, 0);
    }

    public DeviceShareButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private DeviceShareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, AnalyticsEvents.EVENT_DEVICE_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_DEVICE_SHARE_BUTTON_DID_TAP);
        this.requestCode = 0;
        this.enabledExplicitlySet = false;
        this.dialog = null;
        this.requestCode = isInEditMode() != null ? null : getDefaultRequestCode();
        internalSetEnabled(false);
    }

    public final ShareContent getShareContent() {
        return this.shareContent;
    }

    public final void setShareContent(ShareContent shareContent) {
        this.shareContent = shareContent;
        if (this.enabledExplicitlySet == null) {
            internalSetEnabled(canShare());
        }
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.enabledExplicitlySet = true;
    }

    public final int getRequestCode() {
        return this.requestCode;
    }

    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<Result> facebookCallback) {
        getDialog().registerCallback(callbackManager, facebookCallback);
    }

    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<Result> facebookCallback, int i) {
        setRequestCode(i);
        getDialog().registerCallback(callbackManager, facebookCallback, i);
    }

    protected final void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super.configureButton(context, attributeSet, i, i2);
        setInternalOnClickListener(getShareOnClickListener());
    }

    protected final int getDefaultStyleResource() {
        return C0361R.style.com_facebook_button_share;
    }

    protected final int getDefaultRequestCode() {
        return RequestCodeOffset.Share.toRequestCode();
    }

    protected final OnClickListener getShareOnClickListener() {
        return new C04611();
    }

    private void internalSetEnabled(boolean z) {
        setEnabled(z);
        this.enabledExplicitlySet = false;
    }

    private void setRequestCode(int i) {
        if (FacebookSdk.isFacebookRequestCode(i)) {
            StringBuilder stringBuilder = new StringBuilder("Request code ");
            stringBuilder.append(i);
            stringBuilder.append(" cannot be within the range reserved by the Facebook SDK.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.requestCode = i;
    }

    private boolean canShare() {
        return new DeviceShareDialog(getActivity()).canShow(getShareContent());
    }

    private DeviceShareDialog getDialog() {
        if (this.dialog != null) {
            return this.dialog;
        }
        if (getFragment() != null) {
            this.dialog = new DeviceShareDialog(getFragment());
        } else if (getNativeFragment() != null) {
            this.dialog = new DeviceShareDialog(getNativeFragment());
        } else {
            this.dialog = new DeviceShareDialog(getActivity());
        }
        return this.dialog;
    }
}
