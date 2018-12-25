package android.support.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

final class PathProperty<T> extends Property<T, Float> {
    private float mCurrentFraction;
    private final float mPathLength;
    private final PathMeasure mPathMeasure;
    private final PointF mPointF = new PointF();
    private final float[] mPosition = new float[2];
    private final Property<T, PointF> mProperty;

    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        Float f = (Float) obj2;
        this.mCurrentFraction = f.floatValue();
        this.mPathMeasure.getPosTan(this.mPathLength * f.floatValue(), this.mPosition, null);
        this.mPointF.x = this.mPosition[0];
        this.mPointF.y = this.mPosition[1];
        this.mProperty.set(obj, this.mPointF);
    }

    PathProperty(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.mProperty = property;
        this.mPathMeasure = new PathMeasure(path, false);
        this.mPathLength = this.mPathMeasure.getLength();
    }

    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        return Float.valueOf(this.mCurrentFraction);
    }
}
