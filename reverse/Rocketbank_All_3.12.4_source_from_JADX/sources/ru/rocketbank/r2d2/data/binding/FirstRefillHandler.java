package ru.rocketbank.r2d2.data.binding;

import android.view.View;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;

/* compiled from: FirstRefillHandler.kt */
public interface FirstRefillHandler extends ToolbarWithButtonHandler {
    void onCashPressed(View view);

    void onReqPressed(View view);

    void onSupportPressed(View view);
}
