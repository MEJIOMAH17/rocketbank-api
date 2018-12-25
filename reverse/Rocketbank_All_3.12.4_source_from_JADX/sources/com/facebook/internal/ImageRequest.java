package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import java.util.Locale;

public class ImageRequest {
    private static final String AUTHORITY = "graph.facebook.com";
    private static final String HEIGHT_PARAM = "height";
    private static final String MIGRATION_PARAM = "migration_overrides";
    private static final String MIGRATION_VALUE = "{october_2012:true}";
    private static final String PATH = "%s/picture";
    private static final String SCHEME = "https";
    public static final int UNSPECIFIED_DIMENSION = 0;
    private static final String WIDTH_PARAM = "width";
    private boolean allowCachedRedirects;
    private Callback callback;
    private Object callerTag;
    private Context context;
    private Uri imageUri;

    public static class Builder {
        private boolean allowCachedRedirects;
        private Callback callback;
        private Object callerTag;
        private Context context;
        private Uri imageUrl;

        public Builder(Context context, Uri uri) {
            Validate.notNull(uri, "imageUri");
            this.context = context;
            this.imageUrl = uri;
        }

        public Builder setCallback(Callback callback) {
            this.callback = callback;
            return this;
        }

        public Builder setCallerTag(Object obj) {
            this.callerTag = obj;
            return this;
        }

        public Builder setAllowCachedRedirects(boolean z) {
            this.allowCachedRedirects = z;
            return this;
        }

        public ImageRequest build() {
            return new ImageRequest();
        }
    }

    public interface Callback {
        void onCompleted(ImageResponse imageResponse);
    }

    public static Uri getProfilePictureUri(String str, int i, int i2) {
        Validate.notNullOrEmpty(str, "userId");
        i = Math.max(i, 0);
        i2 = Math.max(i2, 0);
        if (i == 0 && i2 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        str = new android.net.Uri.Builder().scheme(SCHEME).authority(AUTHORITY).path(String.format(Locale.US, PATH, new Object[]{str}));
        if (i2 != 0) {
            str.appendQueryParameter(HEIGHT_PARAM, String.valueOf(i2));
        }
        if (i != 0) {
            str.appendQueryParameter(WIDTH_PARAM, String.valueOf(i));
        }
        str.appendQueryParameter(MIGRATION_PARAM, MIGRATION_VALUE);
        return str.build();
    }

    private ImageRequest(Builder builder) {
        this.context = builder.context;
        this.imageUri = builder.imageUrl;
        this.callback = builder.callback;
        this.allowCachedRedirects = builder.allowCachedRedirects;
        this.callerTag = builder.callerTag == null ? new Object() : builder.callerTag;
    }

    public Context getContext() {
        return this.context;
    }

    public Uri getImageUri() {
        return this.imageUri;
    }

    public Callback getCallback() {
        return this.callback;
    }

    public boolean isCachedRedirectAllowed() {
        return this.allowCachedRedirects;
    }

    public Object getCallerTag() {
        return this.callerTag;
    }
}
