package ru.rocketbank.core.manager.social;

import android.content.Intent;
import android.support.v4.app.Fragment;

/* compiled from: SocialNet.kt */
public interface SocialNet {
    void authorize(Fragment fragment, SocialNetCallback<SocialUserModel> socialNetCallback);

    String getAvatarID();

    void onActivityResult(int i, int i2, Intent intent);
}
