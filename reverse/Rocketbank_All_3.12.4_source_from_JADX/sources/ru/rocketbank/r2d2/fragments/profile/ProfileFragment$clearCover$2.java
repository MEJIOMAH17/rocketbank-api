package ru.rocketbank.r2d2.fragments.profile;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$clearCover$2 extends Subscriber<Object> {
    final /* synthetic */ ProfileFragment this$0;

    public final void onCompleted() {
    }

    ProfileFragment$clearCover$2(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideProgressDialog();
        AnalyticsManager.logException(th);
    }

    public final void onNext(Object obj) {
        this.this$0.authorization.refreshBackgroundProfile();
        this.this$0.hideProgressDialog();
    }
}
