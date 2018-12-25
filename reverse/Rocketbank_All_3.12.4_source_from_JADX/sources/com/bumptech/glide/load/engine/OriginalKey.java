package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

final class OriginalKey implements Key {
    private final String id;
    private final Key signature;

    public OriginalKey(String str, Key key) {
        this.id = str;
        this.signature = key;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                OriginalKey originalKey = (OriginalKey) obj;
                return this.id.equals(originalKey.id) && this.signature.equals(originalKey.signature) != null;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.id.hashCode() * 31) + this.signature.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.id.getBytes("UTF-8"));
        this.signature.updateDiskCacheKey(messageDigest);
    }
}
