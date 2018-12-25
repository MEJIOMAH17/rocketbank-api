package com.bumptech.glide.load.model;

import android.net.Uri;

final class AssetUriParser {
    private static final int ASSET_PREFIX_LENGTH = 22;

    public static boolean isAssetUri(Uri uri) {
        return (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || "android_asset".equals(uri.getPathSegments().get(0)) == null) ? false : true;
    }

    public static String toAssetPath(Uri uri) {
        return uri.toString().substring(22);
    }
}
