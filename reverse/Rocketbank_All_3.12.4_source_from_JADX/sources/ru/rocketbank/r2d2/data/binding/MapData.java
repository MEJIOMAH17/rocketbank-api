package ru.rocketbank.r2d2.data.binding;

import android.databinding.ObservableBoolean;
import android.databinding.ObservableField;
import android.databinding.ObservableInt;
import ru.rocketbank.r2d2.fragments.refill.cash.AtmInstructionType;

/* compiled from: MapData.kt */
public final class MapData {
    private final ObservableField<String> atmsAddress = new ObservableField();
    private final ObservableField<String> atmsName = new ObservableField();
    private final ObservableField<String> atmsWorkingTime = new ObservableField();
    private final ObservableBoolean commissionAtmsSwitcherVisible = new ObservableBoolean(false);
    private final ObservableInt detailsHeight = new ObservableInt(0);
    private final ObservableField<AtmInstructionType> instructionType = new ObservableField();
    private final ObservableField<String> limits = new ObservableField();
    private final ObservableBoolean limitsVisible = new ObservableBoolean(false);
    private final ObservableBoolean showMyLocation = new ObservableBoolean(false);

    public final ObservableInt getDetailsHeight() {
        return this.detailsHeight;
    }

    public final ObservableField<String> getAtmsName() {
        return this.atmsName;
    }

    public final ObservableField<String> getAtmsAddress() {
        return this.atmsAddress;
    }

    public final ObservableField<String> getAtmsWorkingTime() {
        return this.atmsWorkingTime;
    }

    public final ObservableField<AtmInstructionType> getInstructionType() {
        return this.instructionType;
    }

    public final ObservableField<String> getLimits() {
        return this.limits;
    }

    public final ObservableBoolean getCommissionAtmsSwitcherVisible() {
        return this.commissionAtmsSwitcherVisible;
    }

    public final ObservableBoolean getLimitsVisible() {
        return this.limitsVisible;
    }

    public final ObservableBoolean getShowMyLocation() {
        return this.showMyLocation;
    }
}
