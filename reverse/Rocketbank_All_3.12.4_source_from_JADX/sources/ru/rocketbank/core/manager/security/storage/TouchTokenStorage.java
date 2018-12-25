package ru.rocketbank.core.manager.security.storage;

import javax.crypto.Cipher;

/* compiled from: TouchTokenStorage.kt */
public interface TouchTokenStorage {
    boolean hasValidToken();

    void invalidateToken();

    String readToken(Cipher cipher);

    void saveToken(String str, Cipher cipher);
}
