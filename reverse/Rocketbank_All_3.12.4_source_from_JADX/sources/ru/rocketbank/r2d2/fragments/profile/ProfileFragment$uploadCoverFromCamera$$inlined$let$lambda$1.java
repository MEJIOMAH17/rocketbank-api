package ru.rocketbank.r2d2.fragments.profile;

import android.graphics.Bitmap;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$uploadCoverFromCamera$$inlined$let$lambda$1 extends Subscriber<Bitmap> {
    final /* synthetic */ ProfileFragment this$0;

    public final void onCompleted() {
    }

    ProfileFragment$uploadCoverFromCamera$$inlined$let$lambda$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.hideProgressDialog();
        Toast.makeText(this.this$0.getActivity(), C0859R.string.no_luck, 0).show();
        AnalyticsManager.logException(th);
    }

    public final void onNext(Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
        this.this$0.uploadCover(bitmap);
    }
}
