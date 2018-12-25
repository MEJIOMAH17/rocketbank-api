package ru.rocketbank.r2d2.fragments.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$onSetAvatarClick$1 implements OnClickListener {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$onSetAvatarClick$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                this.this$0.onSetAvatarFromCameraRequested();
                return;
            case 1:
                this.this$0.onSetAvatarFromGalleryRequested();
                return;
            case 2:
                this.this$0.onAvatarFromFacebook();
                return;
            case 3:
                this.this$0.clearAvatar();
                break;
            default:
                break;
        }
    }
}
