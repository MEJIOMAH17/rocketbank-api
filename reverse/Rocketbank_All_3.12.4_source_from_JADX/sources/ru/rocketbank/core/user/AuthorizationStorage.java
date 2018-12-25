package ru.rocketbank.core.user;

import ru.rocketbank.core.realm.UserData;

/* compiled from: AuthorizationStorage.kt */
public interface AuthorizationStorage {
    UserData getState();

    void removeState();

    void storeState(UserData userData);
}
