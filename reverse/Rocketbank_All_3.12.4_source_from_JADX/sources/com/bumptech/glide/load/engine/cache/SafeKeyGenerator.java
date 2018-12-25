package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class SafeKeyGenerator {
    private final LruCache<Key, String> loadIdToSafeHash = new LruCache(1000);

    SafeKeyGenerator() {
    }

    public final String getSafeKey(Key key) {
        String str;
        synchronized (this.loadIdToSafeHash) {
            str = (String) this.loadIdToSafeHash.get(key);
        }
        if (str == null) {
            try {
                MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA256_INSTANCE);
                key.updateDiskCacheKey(instance);
                str = Util.sha256BytesToHex(instance.digest());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            synchronized (this.loadIdToSafeHash) {
                this.loadIdToSafeHash.put(key, str);
            }
        }
        return str;
    }
}
