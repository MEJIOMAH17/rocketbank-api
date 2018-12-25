package ru.rocketbank.r2d2.fragments.profile;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.social.SocialNetCallback;
import ru.rocketbank.core.manager.social.SocialUserModel;
import ru.rocketbank.core.network.model.PatchProfileBody;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$patchFacebook$1 implements SocialNetCallback<SocialUserModel> {
    final /* synthetic */ String $id;
    final /* synthetic */ boolean $isAvatar;
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$patchFacebook$1(ProfileFragment profileFragment, boolean z, String str) {
        this.this$0 = profileFragment;
        this.$isAvatar = z;
        this.$id = str;
    }

    public final void onResult(SocialUserModel socialUserModel) {
        Intrinsics.checkParameterIsNotNull(socialUserModel, "result");
        this.this$0.showProgressDialog();
        PatchProfileBody patchProfileBody = new PatchProfileBody(socialUserModel.getId(), socialUserModel.getToken());
        if (this.$isAvatar != null) {
            patchProfileBody.getUser().setUserpicId(this.$id);
        } else {
            patchProfileBody.getUser().setCoverId(this.$id);
        }
        this.this$0.userApi.patchProfile(patchProfileBody).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$patchFacebook$1$onResult$1(this));
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "t");
        AnalyticsManager.logException(th);
    }
}
