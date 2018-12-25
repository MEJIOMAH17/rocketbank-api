package com.facebook.share.internal;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.C0361R;
import com.facebook.FacebookButtonBase;
import com.facebook.internal.AnalyticsEvents;

public class LikeButton extends FacebookButtonBase {
    protected int getDefaultRequestCode() {
        return 0;
    }

    public LikeButton(Context context, boolean z) {
        super(context, null, 0, 0, AnalyticsEvents.EVENT_LIKE_BUTTON_CREATE, AnalyticsEvents.EVENT_LIKE_BUTTON_DID_TAP);
        setSelected(z);
    }

    public void setSelected(boolean z) {
        super.setSelected(z);
        updateForLikeStatus();
    }

    protected void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super.configureButton(context, attributeSet, i, i2);
        updateForLikeStatus();
    }

    protected int getDefaultStyleResource() {
        return C0361R.style.com_facebook_button_like;
    }

    private void updateForLikeStatus() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(C0361R.drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(C0361R.string.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(C0361R.drawable.com_facebook_button_icon, 0, 0, 0);
        setText(getResources().getString(C0361R.string.com_facebook_like_button_not_liked));
    }
}
