package ru.rocketbank.r2d2.fragments.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$onSetCoverClick$1 implements OnClickListener {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$onSetCoverClick$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                this.this$0.onSetCoverFromCameraRequested();
                return;
            case 1:
                this.this$0.onSetCoverFromGalleryRequested();
                return;
            case 2:
                this.this$0.onFacebookCover();
                return;
            case 3:
                this.this$0.clearCover();
                break;
            default:
                break;
        }
    }
}
