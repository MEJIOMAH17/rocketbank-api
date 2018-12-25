package com.facebook.login.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.facebook.C0361R;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageRequest.Builder;
import com.facebook.internal.ImageRequest.Callback;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;

public class ProfilePictureView extends FrameLayout {
    private static final String BITMAP_HEIGHT_KEY = "ProfilePictureView_height";
    private static final String BITMAP_KEY = "ProfilePictureView_bitmap";
    private static final String BITMAP_WIDTH_KEY = "ProfilePictureView_width";
    public static final int CUSTOM = -1;
    private static final boolean IS_CROPPED_DEFAULT_VALUE = true;
    private static final String IS_CROPPED_KEY = "ProfilePictureView_isCropped";
    public static final int LARGE = -4;
    private static final int MIN_SIZE = 1;
    public static final int NORMAL = -3;
    private static final String PENDING_REFRESH_KEY = "ProfilePictureView_refresh";
    private static final String PRESET_SIZE_KEY = "ProfilePictureView_presetSize";
    private static final String PROFILE_ID_KEY = "ProfilePictureView_profileId";
    public static final int SMALL = -2;
    private static final String SUPER_STATE_KEY = "ProfilePictureView_superState";
    public static final String TAG = "ProfilePictureView";
    private Bitmap customizedDefaultProfilePicture = null;
    private ImageView image;
    private Bitmap imageContents;
    private boolean isCropped = IS_CROPPED_DEFAULT_VALUE;
    private ImageRequest lastRequest;
    private OnErrorListener onErrorListener;
    private int presetSizeType = -1;
    private String profileId;
    private int queryHeight = 0;
    private int queryWidth = 0;

    public interface OnErrorListener {
        void onError(FacebookException facebookException);
    }

    /* renamed from: com.facebook.login.widget.ProfilePictureView$1 */
    class C10331 implements Callback {
        C10331() {
        }

        public void onCompleted(ImageResponse imageResponse) {
            ProfilePictureView.this.processResponse(imageResponse);
        }
    }

    public ProfilePictureView(Context context) {
        super(context);
        initialize(context);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(context);
        parseAttributes(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(context);
        parseAttributes(attributeSet);
    }

    public final int getPresetSize() {
        return this.presetSizeType;
    }

    public final void setPresetSize(int i) {
        switch (i) {
            case LARGE /*-4*/:
            case NORMAL /*-3*/:
            case -2:
            case -1:
                this.presetSizeType = i;
                requestLayout();
                return;
            default:
                throw new IllegalArgumentException("Must use a predefined preset size");
        }
    }

    public final boolean isCropped() {
        return this.isCropped;
    }

    public final void setCropped(boolean z) {
        this.isCropped = z;
        refreshImage(false);
    }

    public final String getProfileId() {
        return this.profileId;
    }

    public final void setProfileId(String str) {
        boolean z;
        if (!Utility.isNullOrEmpty(this.profileId)) {
            if (this.profileId.equalsIgnoreCase(str)) {
                z = false;
                this.profileId = str;
                refreshImage(z);
            }
        }
        setBlankProfilePicture();
        z = IS_CROPPED_DEFAULT_VALUE;
        this.profileId = str;
        refreshImage(z);
    }

    public final OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }

    public final void setOnErrorListener(OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.customizedDefaultProfilePicture = bitmap;
    }

    protected void onMeasure(int i, int i2) {
        boolean z;
        LayoutParams layoutParams = getLayoutParams();
        int size = MeasureSpec.getSize(i2);
        int size2 = MeasureSpec.getSize(i);
        if (MeasureSpec.getMode(i2) == 1073741824 || layoutParams.height != -2) {
            z = false;
        } else {
            size = getPresetSizeInPixels(IS_CROPPED_DEFAULT_VALUE);
            i2 = MeasureSpec.makeMeasureSpec(size, 1073741824);
            z = IS_CROPPED_DEFAULT_VALUE;
        }
        if (MeasureSpec.getMode(i) != 1073741824 && layoutParams.width == -2) {
            size2 = getPresetSizeInPixels(IS_CROPPED_DEFAULT_VALUE);
            i = MeasureSpec.makeMeasureSpec(size2, 1073741824);
            z = IS_CROPPED_DEFAULT_VALUE;
        }
        if (z) {
            setMeasuredDimension(size2, size);
            measureChildren(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        refreshImage(false);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Parcelable bundle = new Bundle();
        bundle.putParcelable(SUPER_STATE_KEY, onSaveInstanceState);
        bundle.putString(PROFILE_ID_KEY, this.profileId);
        bundle.putInt(PRESET_SIZE_KEY, this.presetSizeType);
        bundle.putBoolean(IS_CROPPED_KEY, this.isCropped);
        bundle.putParcelable(BITMAP_KEY, this.imageContents);
        bundle.putInt(BITMAP_WIDTH_KEY, this.queryWidth);
        bundle.putInt(BITMAP_HEIGHT_KEY, this.queryHeight);
        bundle.putBoolean(PENDING_REFRESH_KEY, this.lastRequest != null ? IS_CROPPED_DEFAULT_VALUE : false);
        return bundle;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable(SUPER_STATE_KEY));
        this.profileId = bundle.getString(PROFILE_ID_KEY);
        this.presetSizeType = bundle.getInt(PRESET_SIZE_KEY);
        this.isCropped = bundle.getBoolean(IS_CROPPED_KEY);
        this.queryWidth = bundle.getInt(BITMAP_WIDTH_KEY);
        this.queryHeight = bundle.getInt(BITMAP_HEIGHT_KEY);
        setImageBitmap((Bitmap) bundle.getParcelable(BITMAP_KEY));
        if (bundle.getBoolean(PENDING_REFRESH_KEY) != null) {
            refreshImage(IS_CROPPED_DEFAULT_VALUE);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.lastRequest = null;
    }

    private void initialize(Context context) {
        removeAllViews();
        this.image = new ImageView(context);
        this.image.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.image.setScaleType(ScaleType.CENTER_INSIDE);
        addView(this.image);
    }

    private void parseAttributes(AttributeSet attributeSet) {
        attributeSet = getContext().obtainStyledAttributes(attributeSet, C0361R.styleable.com_facebook_profile_picture_view);
        setPresetSize(attributeSet.getInt(C0361R.styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
        this.isCropped = attributeSet.getBoolean(C0361R.styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, IS_CROPPED_DEFAULT_VALUE);
        attributeSet.recycle();
    }

    private void refreshImage(boolean z) {
        boolean updateImageQueryParameters = updateImageQueryParameters();
        if (!(this.profileId == null || this.profileId.length() == 0)) {
            if (this.queryWidth != 0 || this.queryHeight != 0) {
                if (updateImageQueryParameters || z) {
                    sendImageRequest(IS_CROPPED_DEFAULT_VALUE);
                }
                return;
            }
        }
        setBlankProfilePicture();
    }

    private void setBlankProfilePicture() {
        if (this.lastRequest != null) {
            ImageDownloader.cancelRequest(this.lastRequest);
        }
        if (this.customizedDefaultProfilePicture == null) {
            setImageBitmap(BitmapFactory.decodeResource(getResources(), isCropped() ? C0361R.drawable.com_facebook_profile_picture_blank_square : C0361R.drawable.com_facebook_profile_picture_blank_portrait));
            return;
        }
        updateImageQueryParameters();
        setImageBitmap(Bitmap.createScaledBitmap(this.customizedDefaultProfilePicture, this.queryWidth, this.queryHeight, false));
    }

    private void setImageBitmap(Bitmap bitmap) {
        if (this.image != null && bitmap != null) {
            this.imageContents = bitmap;
            this.image.setImageBitmap(bitmap);
        }
    }

    private void sendImageRequest(boolean z) {
        z = new Builder(getContext(), ImageRequest.getProfilePictureUri(this.profileId, this.queryWidth, this.queryHeight)).setAllowCachedRedirects(z).setCallerTag(this).setCallback(new C10331()).build();
        if (this.lastRequest != null) {
            ImageDownloader.cancelRequest(this.lastRequest);
        }
        this.lastRequest = z;
        ImageDownloader.downloadAsync(z);
    }

    private void processResponse(ImageResponse imageResponse) {
        if (imageResponse.getRequest() == this.lastRequest) {
            this.lastRequest = null;
            Bitmap bitmap = imageResponse.getBitmap();
            Throwable error = imageResponse.getError();
            if (error != null) {
                imageResponse = this.onErrorListener;
                if (imageResponse != null) {
                    StringBuilder stringBuilder = new StringBuilder("Error in downloading profile picture for profileId: ");
                    stringBuilder.append(getProfileId());
                    imageResponse.onError(new FacebookException(stringBuilder.toString(), error));
                    return;
                }
                Logger.log(LoggingBehavior.REQUESTS, 6, TAG, error.toString());
            } else if (bitmap != null) {
                setImageBitmap(bitmap);
                if (imageResponse.isCachedRedirect() != null) {
                    sendImageRequest(null);
                }
            }
        }
    }

    private boolean updateImageQueryParameters() {
        int height = getHeight();
        int width = getWidth();
        boolean z = false;
        if (width > 0) {
            if (height > 0) {
                int presetSizeInPixels = getPresetSizeInPixels(false);
                if (presetSizeInPixels != 0) {
                    height = presetSizeInPixels;
                    width = height;
                }
                if (width <= height) {
                    height = isCropped() ? width : 0;
                } else {
                    width = isCropped() ? height : 0;
                }
                if (!(width == this.queryWidth && height == this.queryHeight)) {
                    z = IS_CROPPED_DEFAULT_VALUE;
                }
                this.queryWidth = width;
                this.queryHeight = height;
                return z;
            }
        }
        return false;
    }

    private int getPresetSizeInPixels(boolean z) {
        switch (this.presetSizeType) {
            case LARGE /*-4*/:
                z = C0361R.dimen.com_facebook_profilepictureview_preset_size_large;
                break;
            case NORMAL /*-3*/:
                z = C0361R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            case -2:
                z = C0361R.dimen.com_facebook_profilepictureview_preset_size_small;
                break;
            case -1:
                if (z) {
                    z = C0361R.dimen.com_facebook_profilepictureview_preset_size_normal;
                    break;
                }
                return 0;
            default:
                return 0;
        }
        return getResources().getDimensionPixelSize(z);
    }
}
