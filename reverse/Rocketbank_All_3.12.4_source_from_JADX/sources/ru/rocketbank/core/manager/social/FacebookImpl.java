package ru.rocketbank.core.manager.social;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.facebook.CallbackManager;
import com.facebook.CallbackManager.Factory;
import com.facebook.FacebookSdk;
import com.facebook.login.LoginManager;
import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FacebookImpl.kt */
public final class FacebookImpl implements SocialNet {
    private final CallbackManager callbackMan;

    public final String getAvatarID() {
        return "facebook";
    }

    public FacebookImpl(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "c");
        CallbackManager create = Factory.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "CallbackManager.Factory.create()");
        this.callbackMan = create;
        if (!FacebookSdk.isInitialized()) {
            FacebookSdk.sdkInitialize(context);
        }
    }

    public final void authorize(Fragment fragment, SocialNetCallback<SocialUserModel> socialNetCallback) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        Intrinsics.checkParameterIsNotNull(socialNetCallback, "callback");
        LoginManager.getInstance().registerCallback(this.callbackMan, new FacebookImpl$authorize$1(socialNetCallback));
        LoginManager.getInstance().logInWithReadPermissions(fragment, (Collection) Arrays.asList(new String[]{"public_profile"}));
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        this.callbackMan.onActivityResult(i, i2, intent);
    }
}
