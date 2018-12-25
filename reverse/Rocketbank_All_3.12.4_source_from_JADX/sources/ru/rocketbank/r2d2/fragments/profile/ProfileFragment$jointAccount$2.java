package ru.rocketbank.r2d2.fragments.profile;

import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$jointAccount$2<T> implements Action1<Throwable> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$jointAccount$2(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void call(Throwable th) {
        this.this$0.authorization.refreshBackgroundProfile();
        this.this$0.analyticsInProgress = false;
        UIHelper.showSnackWithError(this.this$0.getView(), th, -1);
    }
}
