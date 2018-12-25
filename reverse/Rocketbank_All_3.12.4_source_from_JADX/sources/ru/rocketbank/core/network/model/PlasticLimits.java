package ru.rocketbank.core.network.model;

/* compiled from: SexyCardLimits.kt */
public class PlasticLimits {
    private SexyCardLimits plastic = new SexyCardLimits();

    /* compiled from: SexyCardLimits.kt */
    public static final class SexyCardLimits {
        private SexyLimits limits;

        public final SexyLimits getLimits() {
            return this.limits;
        }

        public final void setLimits(SexyLimits sexyLimits) {
            this.limits = sexyLimits;
        }
    }

    public final SexyCardLimits getPlastic() {
        return this.plastic;
    }

    public final void setPlastic(SexyCardLimits sexyCardLimits) {
        this.plastic = sexyCardLimits;
    }
}
