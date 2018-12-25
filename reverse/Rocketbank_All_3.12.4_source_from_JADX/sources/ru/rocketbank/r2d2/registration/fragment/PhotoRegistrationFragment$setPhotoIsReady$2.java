package ru.rocketbank.r2d2.registration.fragment;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: PhotoRegistrationFragment.kt */
final class PhotoRegistrationFragment$setPhotoIsReady$2 implements OnClickListener {
    final /* synthetic */ PhotoRegistrationFragment this$0;

    PhotoRegistrationFragment$setPhotoIsReady$2(PhotoRegistrationFragment photoRegistrationFragment) {
        this.this$0 = photoRegistrationFragment;
    }

    public final void onClick(View view) {
        this.this$0.setPhotoIsNeeded();
    }
}
