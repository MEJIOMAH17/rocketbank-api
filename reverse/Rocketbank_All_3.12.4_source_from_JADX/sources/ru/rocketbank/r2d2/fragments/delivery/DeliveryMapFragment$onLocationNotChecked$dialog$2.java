package ru.rocketbank.r2d2.fragments.delivery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: DeliveryMapFragment.kt */
final class DeliveryMapFragment$onLocationNotChecked$dialog$2 implements OnClickListener {
    final /* synthetic */ DeliveryMapFragment this$0;

    DeliveryMapFragment$onLocationNotChecked$dialog$2(DeliveryMapFragment deliveryMapFragment) {
        this.this$0 = deliveryMapFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        Toast.makeText(this.this$0.getContext(), C0859R.string.cannot_find_you, 1).show();
    }
}
