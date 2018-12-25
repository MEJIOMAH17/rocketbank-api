package ru.rocketbank.r2d2.data.binding;

import android.view.View;

/* compiled from: MapActionListener.kt */
public interface MapActionListener {
    void navigateMe(View view);

    void onLocation(View view);

    void onScaleDown(View view);

    void onScaleUp(View view);
}
