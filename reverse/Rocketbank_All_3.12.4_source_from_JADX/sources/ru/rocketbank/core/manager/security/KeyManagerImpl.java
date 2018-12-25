package ru.rocketbank.core.manager.security;

import android.content.Context;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.KeyManager.Companion;

/* compiled from: KeyManagerImpl.kt */
public final class KeyManagerImpl implements KeyManager {
    private final ArrayMap<String, SecretKey> cachedKeys = new ArrayMap();
    private final Context context;
    private final RocketKeyStore rocketKetStore = ((RocketKeyStore) new RocketKetStoreBks(this.context));

    public KeyManagerImpl(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final SecretKey getOrCreateKey(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str, "name");
        Log.v(Companion.getTAG(), "Create or get key ".concat(String.valueOf(str)));
        SecretKey key = getKey(str);
        if (key != null) {
            if (key.getEncoded() != null) {
                Log.v(Companion.getTAG(), "Got the key");
                return key;
            }
        }
        Log.v(Companion.getTAG(), "Creating new key");
        key = generateKey();
        storeKey(str, key);
        return key;
    }

    public final SecretKey getKey(String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        SecretKey secretKey = (SecretKey) this.cachedKeys.get(str);
        if (secretKey != null) {
            return secretKey;
        }
        secretKey = this.rocketKetStore.getKey(str);
        this.cachedKeys.put(str, secretKey);
        return secretKey;
    }

    public final SecretKey generateKey() {
        SecretKey generateKey = KeyGenerator.getInstance("HmacSHA512").generateKey();
        Intrinsics.checkExpressionValueIsNotNull(generateKey, "KeyGenerator.getInstance…macSHA512\").generateKey()");
        return generateKey;
    }

    public final void storeKey(String str, SecretKey secretKey) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(secretKey, "key");
        this.rocketKetStore.storeKey(str, secretKey);
        this.cachedKeys.put(str, secretKey);
    }
}
