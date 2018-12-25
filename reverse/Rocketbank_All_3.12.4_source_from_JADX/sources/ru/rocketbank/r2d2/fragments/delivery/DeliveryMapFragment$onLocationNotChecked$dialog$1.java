package ru.rocketbank.r2d2.fragments.delivery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

/* compiled from: DeliveryMapFragment.kt */
final class DeliveryMapFragment$onLocationNotChecked$dialog$1 implements OnClickListener {
    final /* synthetic */ DeliveryMapFragment this$0;

    DeliveryMapFragment$onLocationNotChecked$dialog$1(DeliveryMapFragment deliveryMapFragment) {
        this.this$0 = deliveryMapFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), DeliveryMapFragment.LOCATION_REQUEST);
    }
}
