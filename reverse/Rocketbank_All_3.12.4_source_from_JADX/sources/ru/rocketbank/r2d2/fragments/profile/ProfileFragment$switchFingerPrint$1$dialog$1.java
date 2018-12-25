package ru.rocketbank.r2d2.fragments.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$switchFingerPrint$1$dialog$1 implements OnClickListener {
    final /* synthetic */ ProfileFragment$switchFingerPrint$1 this$0;

    ProfileFragment$switchFingerPrint$1$dialog$1(ProfileFragment$switchFingerPrint$1 profileFragment$switchFingerPrint$1) {
        this.this$0 = profileFragment$switchFingerPrint$1;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.this$0.startActivityForResult(new Intent("android.settings.SECURITY_SETTINGS"), ProfileFragment.OPEN_SECURITY_SETTINGS_REQUEST_CODE);
    }
}
