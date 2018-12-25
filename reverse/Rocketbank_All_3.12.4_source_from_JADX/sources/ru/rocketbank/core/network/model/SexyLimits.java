package ru.rocketbank.core.network.model;

/* compiled from: SexyCardLimits.kt */
public final class SexyLimits {
    private boolean atm;
    private boolean atm_abroad;
    private boolean internet;
    private boolean pos;

    public final boolean getAtm() {
        return this.atm;
    }

    public final void setAtm(boolean z) {
        this.atm = z;
    }

    public final boolean getAtm_abroad() {
        return this.atm_abroad;
    }

    public final void setAtm_abroad(boolean z) {
        this.atm_abroad = z;
    }

    public final boolean getInternet() {
        return this.internet;
    }

    public final void setInternet(boolean z) {
        this.internet = z;
    }

    public final boolean getPos() {
        return this.pos;
    }

    public final void setPos(boolean z) {
        this.pos = z;
    }
}
