package ru.rocketbank.r2d2.fragments.profile;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.RocketConstants;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$onRefillLinkClick$1 implements OnClickListener {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$onRefillLinkClick$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                this.this$0.openLink();
                return;
            case 1:
                dialogInterface = new StringBuilder();
                dialogInterface.append(RocketConstants.INSTANCE.getLINK());
                i = this.this$0.userModel;
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                i = i.getUsername();
                Intrinsics.checkExpressionValueIsNotNull(i, "userModel!!.username");
                dialogInterface.append(i.getValue());
                dialogInterface = dialogInterface.toString();
                i = this.this$0.getActivity();
                if (i == 0) {
                    Intrinsics.throwNpe();
                }
                i = i.getSystemService("clipboard");
                if (i == 0) {
                    throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
                }
                ((ClipboardManager) i).setPrimaryClip(ClipData.newPlainText(null, (CharSequence) dialogInterface));
                return;
            case 2:
                this.this$0.onChangeRefillLinkRequested();
                break;
            default:
                break;
        }
    }
}
