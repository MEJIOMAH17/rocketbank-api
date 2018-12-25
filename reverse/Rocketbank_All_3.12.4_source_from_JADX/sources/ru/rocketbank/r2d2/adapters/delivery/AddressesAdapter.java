package ru.rocketbank.r2d2.adapters.delivery;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.delivery.AddressClickListener;

/* compiled from: AddressesAdapter.kt */
public final class AddressesAdapter extends Adapter<AddressHolder> {
    private ArrayList<GeoObject> items;
    private AddressClickListener listener;

    public AddressesAdapter(AddressClickListener addressClickListener) {
        Intrinsics.checkParameterIsNotNull(addressClickListener, "listener");
        this.listener = addressClickListener;
    }

    public final AddressClickListener getListener() {
        return this.listener;
    }

    public final void setListener(AddressClickListener addressClickListener) {
        Intrinsics.checkParameterIsNotNull(addressClickListener, "<set-?>");
        this.listener = addressClickListener;
    }

    public final AddressHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        viewGroup = LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.item_address, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
        return new AddressHolder(viewGroup, this.listener);
    }

    public final void onBindViewHolder(AddressHolder addressHolder, int i) {
        Intrinsics.checkParameterIsNotNull(addressHolder, "holder");
        ArrayList arrayList = this.items;
        if (arrayList == null) {
            Intrinsics.throwNpe();
        }
        i = arrayList.get(i);
        Intrinsics.checkExpressionValueIsNotNull(i, "items!![position]");
        addressHolder.onBind((GeoObject) i);
    }

    public final void swap(ArrayList<GeoObject> arrayList) {
        this.items = arrayList;
        notifyDataSetChanged();
    }

    public final int getItemCount() {
        ArrayList arrayList = this.items;
        return arrayList != null ? arrayList.size() : 0;
    }
}
