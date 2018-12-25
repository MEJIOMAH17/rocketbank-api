package ru.rocketbank.r2d2.fragments.profile;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$switchRefill$1 extends Subscriber<PatchProfileAResponse> {
    final /* synthetic */ boolean $isChecked;
    final /* synthetic */ GenericSwitchViewHolder $switch;
    final /* synthetic */ ProfileFragment this$0;

    public final void onCompleted() {
    }

    ProfileFragment$switchRefill$1(ProfileFragment profileFragment, GenericSwitchViewHolder genericSwitchViewHolder, boolean z) {
        this.this$0 = profileFragment;
        this.$switch = genericSwitchViewHolder;
        this.$isChecked = z;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(ProfileFragment.TAG, "Profile patch failed", th);
        this.this$0.hideProgressDialog();
        this.$switch.setEnabled(this.$isChecked ^ 1);
    }

    public final void onNext(PatchProfileAResponse patchProfileAResponse) {
        Intrinsics.checkParameterIsNotNull(patchProfileAResponse, "userResponse");
        this.this$0.hideProgressDialog();
        patchProfileAResponse = this.this$0.userModel;
        if (patchProfileAResponse == null) {
            Intrinsics.throwNpe();
        }
        patchProfileAResponse = patchProfileAResponse.getUsername();
        Intrinsics.checkExpressionValueIsNotNull(patchProfileAResponse, "userModel!!.username");
        patchProfileAResponse.setWorks(this.$isChecked);
        this.this$0.authorization.reloadProfile();
        this.this$0.authorization.refreshBackgroundProfile();
    }
}
