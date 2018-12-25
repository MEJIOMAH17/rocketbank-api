package ru.rocketbank.r2d2.fragments.profile;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$uploadCover$1$onNext$1 extends Subscriber<PatchProfileAResponse> {
    final /* synthetic */ ProfileFragment$uploadCover$1 this$0;

    public final void onCompleted() {
    }

    ProfileFragment$uploadCover$1$onNext$1(ProfileFragment$uploadCover$1 profileFragment$uploadCover$1) {
        this.this$0 = profileFragment$uploadCover$1;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(ProfileFragment.TAG, "Failed to upload avatar", th);
        this.this$0.this$0.hideProgressDialog();
        AnalyticsManager.logException(th);
    }

    public final void onNext(PatchProfileAResponse patchProfileAResponse) {
        Intrinsics.checkParameterIsNotNull(patchProfileAResponse, "emptyResponse");
        this.this$0.this$0.hideProgressDialog();
        this.this$0.this$0.authorization.refreshBackgroundProfile();
    }
}
