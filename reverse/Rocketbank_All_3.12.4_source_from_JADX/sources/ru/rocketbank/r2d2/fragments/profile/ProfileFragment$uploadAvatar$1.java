package ru.rocketbank.r2d2.fragments.profile;

import android.util.Log;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.network.model.PatchProfileBody.User;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$uploadAvatar$1 extends Subscriber<UploadImageResponse> {
    final /* synthetic */ ProfileFragment this$0;

    public final void onCompleted() {
    }

    ProfileFragment$uploadAvatar$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(ProfileFragment.TAG, "Failed to upload image", th);
        this.this$0.hideProgressDialog();
        Toast.makeText(this.this$0.getActivity(), C0859R.string.no_luck_try_again_later, 0).show();
        AnalyticsManager.logException(th);
    }

    public final void onNext(UploadImageResponse uploadImageResponse) {
        if (uploadImageResponse != null) {
            uploadImageResponse = uploadImageResponse.getImage();
            if (uploadImageResponse != null) {
                PatchProfileBody patchProfileBody = new PatchProfileBody();
                patchProfileBody.setUser(new User());
                patchProfileBody.getUser().setUserpicId(String.valueOf(uploadImageResponse.getId()));
                this.this$0.userApi.patchProfile(patchProfileBody).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new ProfileFragment$uploadAvatar$1$onNext$1(this));
                return;
            }
            this.this$0.hideProgressDialog();
            return;
        }
        this.this$0.hideProgressDialog();
    }
}
