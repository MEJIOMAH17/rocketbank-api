package ru.rocketbank.r2d2.fragments.profile;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$switch3MinInterval$1 extends Subscriber<PatchProfileAResponse> {
    final /* synthetic */ boolean $isChecked;
    final /* synthetic */ ProfileFragment this$0;

    public final void onCompleted() {
    }

    ProfileFragment$switch3MinInterval$1(ProfileFragment profileFragment, boolean z) {
        this.this$0 = profileFragment;
        this.$isChecked = z;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(ProfileFragment.TAG, "Profile patch failed", th);
        this.this$0.hideProgressDialog();
    }

    public final void onNext(PatchProfileAResponse patchProfileAResponse) {
        Intrinsics.checkParameterIsNotNull(patchProfileAResponse, "userResponse");
        this.this$0.hideProgressDialog();
        patchProfileAResponse = this.this$0.userModel;
        if (patchProfileAResponse == null) {
            Intrinsics.throwNpe();
        }
        patchProfileAResponse.setShortTermLogin(this.$isChecked);
        this.this$0.authorization.reloadProfile();
        this.this$0.authorization.refreshBackgroundProfile();
    }
}
