package ru.rocketbank.r2d2.fragments.delivery;

import java.util.List;

/* compiled from: MapViewInterface.kt */
public interface MapViewInterface extends DeliveryView {
    void checkPermissions(List<String> list);

    void showToast(int i);

    void showToast(String str);
}
