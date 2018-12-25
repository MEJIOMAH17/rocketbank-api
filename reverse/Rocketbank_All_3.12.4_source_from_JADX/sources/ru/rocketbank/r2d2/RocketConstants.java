package ru.rocketbank.r2d2;

import ru.rocketbank.core.network.Request;

/* compiled from: RocketConstants.kt */
public final class RocketConstants {
    public static final RocketConstants INSTANCE = new RocketConstants();
    private static final String LINK = Request.LINK;
    private static final String LINK_API = Request.LINK_API;

    private RocketConstants() {
    }

    public final String getLINK() {
        return LINK;
    }

    public final String getLINK_API() {
        return LINK_API;
    }
}
