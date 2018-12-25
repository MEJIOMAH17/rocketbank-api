package ru.rocketbank.core.manager.security;

import javax.crypto.SecretKey;

/* compiled from: RocketKeyStore.kt */
public interface RocketKeyStore {
    SecretKey getKey(String str);

    void storeKey(String str, SecretKey secretKey);
}
