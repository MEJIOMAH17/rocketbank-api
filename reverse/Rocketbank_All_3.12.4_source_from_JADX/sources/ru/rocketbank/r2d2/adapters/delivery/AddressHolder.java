package ru.rocketbank.r2d2.adapters.delivery;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.yandex.maps.GeoObject;
import ru.rocketbank.r2d2.data.binding.delivery.AddressClickListener;
import ru.rocketbank.r2d2.databinding.ItemAddressBinding;

/* compiled from: AddressHolder.kt */
public final class AddressHolder extends ViewHolder {
    private final ItemAddressBinding binding;
    private final AddressItemData data = new AddressItemData();
    private final AddressClickListener listener;

    public AddressHolder(View view, AddressClickListener addressClickListener) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(addressClickListener, "listener");
        super(view);
        this.listener = addressClickListener;
        view = ItemAddressBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "ItemAddressBinding.bind(v)");
        this.binding = view;
        this.binding.setData(this.data);
        this.binding.setListener(this.listener);
    }

    public final AddressClickListener getListener() {
        return this.listener;
    }

    public final void onBind(GeoObject geoObject) {
        Intrinsics.checkParameterIsNotNull(geoObject, "geoObject");
        this.data.getAddresstext().set(geoObject.getTextAddress());
        this.binding.setGeoObject(geoObject);
    }
}
