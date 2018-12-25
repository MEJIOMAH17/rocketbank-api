package ru.rocketbank.r2d2.activities.card;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import ru.rocketbank.core.network.model.SexyLimits;

/* compiled from: CardLimitActivity.kt */
final class CardLimitActivity$cardOperationListener$1 implements OnCheckedChangeListener {
    final /* synthetic */ CardLimitActivity this$0;

    CardLimitActivity$cardOperationListener$1(CardLimitActivity cardLimitActivity) {
        this.this$0 = cardLimitActivity;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, final boolean z) {
        compoundButton = this.this$0.getCurrentLimits();
        if (compoundButton != null) {
            compoundButton.setPos(z);
        }
        this.this$0.updateLimits(new Function0<Unit>() {
            public final void invoke() {
                SexyLimits currentLimits = this.this$0.getCurrentLimits();
                if (currentLimits != null) {
                    currentLimits.setPos(z ^ 1);
                }
                this.this$0.setCardOperation(z ^ 1);
            }
        });
    }
}
