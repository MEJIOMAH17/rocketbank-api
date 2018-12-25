package ru.rocketbank.r2d2.fragments.profile;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.widget.Button;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.widgets.FingerprintDialog;
import ru.rocketbank.r2d2.widgets.FingerprintDialog.Companion;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$switchFingerPrint$1 implements Runnable {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$switchFingerPrint$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void run() {
        if (this.this$0.touchManager.isAvailable()) {
            Companion companion = FingerprintDialog.Companion;
            FragmentManager fragmentManager = this.this$0.getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
            companion.showFingerprintDialog(fragmentManager);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder(this.this$0.getString(C0859R.string.profile_fingerprint_using));
        if (!this.this$0.touchManager.isLockScreenEnabled()) {
            stringBuilder.append('\n');
            stringBuilder.append(this.this$0.getString(C0859R.string.profile_fingerprint_need_lockscreen));
        }
        if (!this.this$0.touchManager.hasFingerPrints()) {
            stringBuilder.append('\n');
            stringBuilder.append(this.this$0.getString(C0859R.string.profile_fingerprint_need_fingerprints));
        }
        stringBuilder.append('\n');
        stringBuilder.append(this.this$0.getString(C0859R.string.profile_fingerprint_security_settings));
        Context context = this.this$0.getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        AlertDialog create = new Builder(context).setMessage(stringBuilder.toString()).setTitle(C0859R.string.auth_with_fingerprint).setPositiveButton(C0859R.string.settings, new ProfileFragment$switchFingerPrint$1$dialog$1(this)).setNegativeButton(17039360, ProfileFragment$switchFingerPrint$1$dialog$2.INSTANCE).create();
        create.show();
        Button button = create.getButton(-1);
        Context context2 = this.this$0.getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        button.setTextColor(ContextCompat.getColor(context2, C0859R.color.orange_variant_2));
        FragmentActivity activity = this.this$0.getActivity();
        if (activity instanceof SecuredActivity) {
            ((SecuredActivity) activity).keepUnlocked();
        }
    }
}
