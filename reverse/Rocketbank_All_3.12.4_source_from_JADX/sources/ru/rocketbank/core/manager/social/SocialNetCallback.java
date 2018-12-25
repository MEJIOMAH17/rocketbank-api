package ru.rocketbank.core.manager.social;

/* compiled from: SocialNetCallback.kt */
public interface SocialNetCallback<T> {
    void onError(Throwable th);

    void onResult(T t);
}
