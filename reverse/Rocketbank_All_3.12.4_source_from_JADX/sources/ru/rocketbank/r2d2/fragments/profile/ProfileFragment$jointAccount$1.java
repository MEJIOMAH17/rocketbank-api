package ru.rocketbank.r2d2.fragments.profile;

import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import rx.functions.Action1;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$jointAccount$1<T> implements Action1<GenericRequestResponseData> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$jointAccount$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void call(GenericRequestResponseData genericRequestResponseData) {
        this.this$0.authorization.refreshBackgroundProfile();
        this.this$0.analyticsInProgress = false;
    }
}
