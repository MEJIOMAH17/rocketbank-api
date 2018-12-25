package ru.rocketbank.r2d2.charges;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.view.View;
import android.view.View.OnClickListener;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ChargeInfoActivity.kt */
final class ChargeInfoActivity$onStart$1 implements OnClickListener {
    final /* synthetic */ ChargeInfoActivity this$0;

    /* compiled from: ChargeInfoActivity.kt */
    /* renamed from: ru.rocketbank.r2d2.charges.ChargeInfoActivity$onStart$1$1 */
    static final class C15151 implements DialogInterface.OnClickListener {
        public static final C15151 INSTANCE = new C15151();

        C15151() {
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    ChargeInfoActivity$onStart$1(ChargeInfoActivity chargeInfoActivity) {
        this.this$0 = chargeInfoActivity;
    }

    public final void onClick(View view) {
        new Builder(this.this$0).setMessage(this.this$0.getChargeModel().getWarning()).setNegativeButton(C0859R.string.cancel, C15151.INSTANCE).setPositiveButton(C0859R.string.ok, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                this.this$0.startActivityForResult(ChargePayStatusActivity.Companion.createIntent(this.this$0, this.this$0.getChargeModel()), ChargeInfoActivity.Companion.getREQUEST_CODE());
            }
        }).show();
    }
}
