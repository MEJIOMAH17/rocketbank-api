package ru.rocketbank.r2d2.registration.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PhotoRegistrationFragment.kt */
final class PhotoRegistrationFragment$onPhotoClickListener$1 implements OnClickListener {
    final /* synthetic */ PhotoRegistrationFragment this$0;

    PhotoRegistrationFragment$onPhotoClickListener$1(PhotoRegistrationFragment photoRegistrationFragment) {
        this.this$0 = photoRegistrationFragment;
    }

    public final void onClick(View view) {
        PhotoRegistrationFragment photoRegistrationFragment = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(view, "v");
        photoRegistrationFragment.onTakePhotoClick(view);
    }
}
