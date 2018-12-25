package kotlin.jvm.internal;

/* compiled from: PrimitiveCompanionObjects.kt */
public final class DoubleCompanionObject {
    public static final DoubleCompanionObject INSTANCE = new DoubleCompanionObject();
    private static final double MAX_VALUE = Double.MAX_VALUE;
    private static final double MIN_VALUE = Double.MIN_VALUE;
    private static final double NEGATIVE_INFINITY = Double.NEGATIVE_INFINITY;
    private static final double NaN = Double.NaN;
    private static final double POSITIVE_INFINITY = Double.POSITIVE_INFINITY;

    public static double getNEGATIVE_INFINITY() {
        return NEGATIVE_INFINITY;
    }

    public static double getPOSITIVE_INFINITY() {
        return POSITIVE_INFINITY;
    }

    private DoubleCompanionObject() {
    }
}
