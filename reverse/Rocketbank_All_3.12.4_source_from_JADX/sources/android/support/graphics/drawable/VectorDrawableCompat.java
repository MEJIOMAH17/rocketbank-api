package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;
import android.os.Build.VERSION;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.PathParser.PathDataNode;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class VectorDrawableCompat extends VectorDrawableCommon {
    static final Mode DEFAULT_TINT_MODE = Mode.SRC_IN;
    private boolean mAllowCaching;
    private ConstantState mCachedConstantStateDelegate;
    private ColorFilter mColorFilter;
    private boolean mMutated;
    private PorterDuffColorFilter mTintFilter;
    private final Rect mTmpBounds;
    private final float[] mTmpFloats;
    private final Matrix mTmpMatrix;
    private VectorDrawableCompatState mVectorState;

    static class VGroup {
        int mChangingConfigurations;
        final ArrayList<Object> mChildren = new ArrayList();
        private String mGroupName = null;
        private final Matrix mLocalMatrix = new Matrix();
        private float mPivotX = BitmapDescriptorFactory.HUE_RED;
        private float mPivotY = BitmapDescriptorFactory.HUE_RED;
        float mRotate = BitmapDescriptorFactory.HUE_RED;
        private float mScaleX = 1.0f;
        private float mScaleY = 1.0f;
        private final Matrix mStackedMatrix = new Matrix();
        private int[] mThemeAttrs;
        private float mTranslateX = BitmapDescriptorFactory.HUE_RED;
        private float mTranslateY = BitmapDescriptorFactory.HUE_RED;

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            this.mRotate = vGroup.mRotate;
            this.mPivotX = vGroup.mPivotX;
            this.mPivotY = vGroup.mPivotY;
            this.mScaleX = vGroup.mScaleX;
            this.mScaleY = vGroup.mScaleY;
            this.mTranslateX = vGroup.mTranslateX;
            this.mTranslateY = vGroup.mTranslateY;
            this.mThemeAttrs = vGroup.mThemeAttrs;
            this.mGroupName = vGroup.mGroupName;
            this.mChangingConfigurations = vGroup.mChangingConfigurations;
            if (this.mGroupName != null) {
                arrayMap.put(this.mGroupName, this);
            }
            this.mLocalMatrix.set(vGroup.mLocalMatrix);
            vGroup = vGroup.mChildren;
            for (int i = 0; i < vGroup.size(); i++) {
                Object obj = vGroup.get(i);
                if (obj instanceof VGroup) {
                    this.mChildren.add(new VGroup((VGroup) obj, arrayMap));
                } else {
                    VPath vFullPath;
                    if (obj instanceof VFullPath) {
                        vFullPath = new VFullPath((VFullPath) obj);
                    } else if (obj instanceof VClipPath) {
                        vFullPath = new VClipPath((VClipPath) obj);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.mChildren.add(vFullPath);
                    if (vFullPath.mPathName != null) {
                        arrayMap.put(vFullPath.mPathName, vFullPath);
                    }
                }
            }
        }

        public final String getGroupName() {
            return this.mGroupName;
        }

        public final Matrix getLocalMatrix() {
            return this.mLocalMatrix;
        }

        public final void inflate(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            int[] iArr = AndroidResources.STYLEABLE_VECTOR_DRAWABLE_GROUP;
            if (theme == null) {
                resources = resources.obtainAttributes(attributeSet, iArr);
            } else {
                resources = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
            }
            this.mThemeAttrs = null;
            theme = this.mRotate;
            int i = 1;
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "rotation") != null ? 1 : null) != null) {
                theme = resources.getFloat(5, theme);
            }
            this.mRotate = theme;
            this.mPivotX = resources.getFloat(1, this.mPivotX);
            this.mPivotY = resources.getFloat(2, this.mPivotY);
            theme = this.mScaleX;
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null ? 1 : null) != null) {
                theme = resources.getFloat(3, theme);
            }
            this.mScaleX = theme;
            theme = this.mScaleY;
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null ? 1 : null) != null) {
                theme = resources.getFloat(4, theme);
            }
            this.mScaleY = theme;
            theme = this.mTranslateX;
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null ? 1 : null) != null) {
                theme = resources.getFloat(6, theme);
            }
            this.mTranslateX = theme;
            theme = this.mTranslateY;
            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") == null) {
                i = 0;
            }
            if (i != 0) {
                theme = resources.getFloat(7, theme);
            }
            this.mTranslateY = theme;
            attributeSet = resources.getString(0);
            if (attributeSet != null) {
                this.mGroupName = attributeSet;
            }
            updateLocalMatrix();
            resources.recycle();
        }

        private void updateLocalMatrix() {
            this.mLocalMatrix.reset();
            this.mLocalMatrix.postTranslate(-this.mPivotX, -this.mPivotY);
            this.mLocalMatrix.postScale(this.mScaleX, this.mScaleY);
            this.mLocalMatrix.postRotate(this.mRotate, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.mLocalMatrix.postTranslate(this.mTranslateX + this.mPivotX, this.mTranslateY + this.mPivotY);
        }

        public final float getRotation() {
            return this.mRotate;
        }

        public final void setRotation(float f) {
            if (f != this.mRotate) {
                this.mRotate = f;
                updateLocalMatrix();
            }
        }

        public final float getPivotX() {
            return this.mPivotX;
        }

        public final void setPivotX(float f) {
            if (f != this.mPivotX) {
                this.mPivotX = f;
                updateLocalMatrix();
            }
        }

        public final float getPivotY() {
            return this.mPivotY;
        }

        public final void setPivotY(float f) {
            if (f != this.mPivotY) {
                this.mPivotY = f;
                updateLocalMatrix();
            }
        }

        public final float getScaleX() {
            return this.mScaleX;
        }

        public final void setScaleX(float f) {
            if (f != this.mScaleX) {
                this.mScaleX = f;
                updateLocalMatrix();
            }
        }

        public final float getScaleY() {
            return this.mScaleY;
        }

        public final void setScaleY(float f) {
            if (f != this.mScaleY) {
                this.mScaleY = f;
                updateLocalMatrix();
            }
        }

        public final float getTranslateX() {
            return this.mTranslateX;
        }

        public final void setTranslateX(float f) {
            if (f != this.mTranslateX) {
                this.mTranslateX = f;
                updateLocalMatrix();
            }
        }

        public final float getTranslateY() {
            return this.mTranslateY;
        }

        public final void setTranslateY(float f) {
            if (f != this.mTranslateY) {
                this.mTranslateY = f;
                updateLocalMatrix();
            }
        }
    }

    static class VPath {
        int mChangingConfigurations;
        protected PathDataNode[] mNodes = null;
        String mPathName;

        public boolean isClipPath() {
            return false;
        }

        public VPath(VPath vPath) {
            this.mPathName = vPath.mPathName;
            this.mChangingConfigurations = vPath.mChangingConfigurations;
            this.mNodes = PathParser.deepCopyNodes(vPath.mNodes);
        }

        public final void toPath(Path path) {
            path.reset();
            if (this.mNodes != null) {
                PathDataNode.nodesToPath(this.mNodes, path);
            }
        }

        public String getPathName() {
            return this.mPathName;
        }

        public PathDataNode[] getPathData() {
            return this.mNodes;
        }

        public void setPathData(PathDataNode[] pathDataNodeArr) {
            if (PathParser.canMorph(this.mNodes, pathDataNodeArr)) {
                PathDataNode[] pathDataNodeArr2 = this.mNodes;
                for (int i = 0; i < pathDataNodeArr.length; i++) {
                    pathDataNodeArr2[i].mType = pathDataNodeArr[i].mType;
                    for (int i2 = 0; i2 < pathDataNodeArr[i].mParams.length; i2++) {
                        pathDataNodeArr2[i].mParams[i2] = pathDataNodeArr[i].mParams[i2];
                    }
                }
                return;
            }
            this.mNodes = PathParser.deepCopyNodes(pathDataNodeArr);
        }
    }

    static class VPathRenderer {
        private static final Matrix IDENTITY_MATRIX = new Matrix();
        float mBaseHeight;
        float mBaseWidth;
        private int mChangingConfigurations;
        private Paint mFillPaint;
        private final Matrix mFinalPathMatrix;
        private final Path mPath;
        private PathMeasure mPathMeasure;
        private final Path mRenderPath;
        int mRootAlpha;
        final VGroup mRootGroup;
        String mRootName;
        private Paint mStrokePaint;
        final ArrayMap<String, Object> mVGTargetsMap;
        float mViewportHeight;
        float mViewportWidth;

        public VPathRenderer() {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = BitmapDescriptorFactory.HUE_RED;
            this.mBaseHeight = BitmapDescriptorFactory.HUE_RED;
            this.mViewportWidth = BitmapDescriptorFactory.HUE_RED;
            this.mViewportHeight = BitmapDescriptorFactory.HUE_RED;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mVGTargetsMap = new ArrayMap();
            this.mRootGroup = new VGroup();
            this.mPath = new Path();
            this.mRenderPath = new Path();
        }

        public final void setRootAlpha(int i) {
            this.mRootAlpha = i;
        }

        public final int getRootAlpha() {
            return this.mRootAlpha;
        }

        public final void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public final float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.mFinalPathMatrix = new Matrix();
            this.mBaseWidth = BitmapDescriptorFactory.HUE_RED;
            this.mBaseHeight = BitmapDescriptorFactory.HUE_RED;
            this.mViewportWidth = BitmapDescriptorFactory.HUE_RED;
            this.mViewportHeight = BitmapDescriptorFactory.HUE_RED;
            this.mRootAlpha = 255;
            this.mRootName = null;
            this.mVGTargetsMap = new ArrayMap();
            this.mRootGroup = new VGroup(vPathRenderer.mRootGroup, this.mVGTargetsMap);
            this.mPath = new Path(vPathRenderer.mPath);
            this.mRenderPath = new Path(vPathRenderer.mRenderPath);
            this.mBaseWidth = vPathRenderer.mBaseWidth;
            this.mBaseHeight = vPathRenderer.mBaseHeight;
            this.mViewportWidth = vPathRenderer.mViewportWidth;
            this.mViewportHeight = vPathRenderer.mViewportHeight;
            this.mChangingConfigurations = vPathRenderer.mChangingConfigurations;
            this.mRootAlpha = vPathRenderer.mRootAlpha;
            this.mRootName = vPathRenderer.mRootName;
            if (vPathRenderer.mRootName != null) {
                this.mVGTargetsMap.put(vPathRenderer.mRootName, this);
            }
        }

        private void drawGroupTree(VGroup vGroup, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            VPathRenderer vPathRenderer;
            VPathRenderer vPathRenderer2 = this;
            VGroup vGroup2 = vGroup;
            Canvas canvas2 = canvas;
            ColorFilter colorFilter2 = colorFilter;
            vGroup.mStackedMatrix.set(matrix);
            vGroup.mStackedMatrix.preConcat(vGroup.mLocalMatrix);
            canvas.save();
            boolean z = false;
            int i3 = 0;
            while (i3 < vGroup2.mChildren.size()) {
                Object obj = vGroup2.mChildren.get(i3);
                if (obj instanceof VGroup) {
                    vPathRenderer2.drawGroupTree((VGroup) obj, vGroup.mStackedMatrix, canvas2, i, i2, colorFilter2);
                } else if (obj instanceof VPath) {
                    VPath vPath = (VPath) obj;
                    float f = ((float) i) / vPathRenderer2.mViewportWidth;
                    float f2 = ((float) i2) / vPathRenderer2.mViewportHeight;
                    float min = Math.min(f, f2);
                    Matrix access$200 = vGroup.mStackedMatrix;
                    vPathRenderer2.mFinalPathMatrix.set(access$200);
                    vPathRenderer2.mFinalPathMatrix.postScale(f, f2);
                    float[] fArr = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED};
                    access$200.mapVectors(fArr);
                    float f3 = min;
                    float f4 = (fArr[z] * fArr[3]) - (fArr[1] * fArr[2]);
                    f = Math.max((float) Math.hypot((double) fArr[z], (double) fArr[1]), (float) Math.hypot((double) fArr[2], (double) fArr[3]));
                    f = f > BitmapDescriptorFactory.HUE_RED ? Math.abs(f4) / f : BitmapDescriptorFactory.HUE_RED;
                    if (f != BitmapDescriptorFactory.HUE_RED) {
                        vPath.toPath(this.mPath);
                        Path path = this.mPath;
                        this.mRenderPath.reset();
                        if (vPath.isClipPath()) {
                            vPathRenderer.mRenderPath.addPath(path, vPathRenderer.mFinalPathMatrix);
                            canvas2.clipPath(vPathRenderer.mRenderPath);
                        } else {
                            Paint paint;
                            VFullPath vFullPath = (VFullPath) vPath;
                            if (!(vFullPath.mTrimPathStart == BitmapDescriptorFactory.HUE_RED && vFullPath.mTrimPathEnd == 1.0f)) {
                                float f5;
                                float f6 = (vFullPath.mTrimPathStart + vFullPath.mTrimPathOffset) % 1.0f;
                                float f7 = (vFullPath.mTrimPathEnd + vFullPath.mTrimPathOffset) % 1.0f;
                                if (vPathRenderer.mPathMeasure == null) {
                                    vPathRenderer.mPathMeasure = new PathMeasure();
                                }
                                vPathRenderer.mPathMeasure.setPath(vPathRenderer.mPath, z);
                                f2 = vPathRenderer.mPathMeasure.getLength();
                                f6 *= f2;
                                f7 *= f2;
                                path.reset();
                                if (f6 > f7) {
                                    vPathRenderer.mPathMeasure.getSegment(f6, f2, path, true);
                                    PathMeasure pathMeasure = vPathRenderer.mPathMeasure;
                                    f5 = BitmapDescriptorFactory.HUE_RED;
                                    pathMeasure.getSegment(BitmapDescriptorFactory.HUE_RED, f7, path, true);
                                } else {
                                    f5 = BitmapDescriptorFactory.HUE_RED;
                                    vPathRenderer.mPathMeasure.getSegment(f6, f7, path, true);
                                }
                                path.rLineTo(f5, f5);
                            }
                            vPathRenderer.mRenderPath.addPath(path, vPathRenderer.mFinalPathMatrix);
                            if (vFullPath.mFillColor != 0) {
                                if (vPathRenderer.mFillPaint == null) {
                                    vPathRenderer.mFillPaint = new Paint();
                                    vPathRenderer.mFillPaint.setStyle(Style.FILL);
                                    vPathRenderer.mFillPaint.setAntiAlias(true);
                                }
                                paint = vPathRenderer.mFillPaint;
                                paint.setColor(VectorDrawableCompat.applyAlpha(vFullPath.mFillColor, vFullPath.mFillAlpha));
                                paint.setColorFilter(colorFilter2);
                                vPathRenderer.mRenderPath.setFillType(vFullPath.mFillRule == 0 ? FillType.WINDING : FillType.EVEN_ODD);
                                canvas2.drawPath(vPathRenderer.mRenderPath, paint);
                            }
                            if (vFullPath.mStrokeColor != 0) {
                                if (vPathRenderer.mStrokePaint == null) {
                                    vPathRenderer.mStrokePaint = new Paint();
                                    vPathRenderer.mStrokePaint.setStyle(Style.STROKE);
                                    vPathRenderer.mStrokePaint.setAntiAlias(true);
                                }
                                paint = vPathRenderer.mStrokePaint;
                                if (vFullPath.mStrokeLineJoin != null) {
                                    paint.setStrokeJoin(vFullPath.mStrokeLineJoin);
                                }
                                if (vFullPath.mStrokeLineCap != null) {
                                    paint.setStrokeCap(vFullPath.mStrokeLineCap);
                                }
                                paint.setStrokeMiter(vFullPath.mStrokeMiterlimit);
                                paint.setColor(VectorDrawableCompat.applyAlpha(vFullPath.mStrokeColor, vFullPath.mStrokeAlpha));
                                paint.setColorFilter(colorFilter2);
                                paint.setStrokeWidth(vFullPath.mStrokeWidth * (f * f3));
                                canvas2.drawPath(vPathRenderer.mRenderPath, paint);
                            }
                        }
                    } else {
                        vPathRenderer = this;
                    }
                    i3++;
                    vPathRenderer2 = vPathRenderer;
                    z = false;
                }
                int i4 = i;
                int i5 = i2;
                vPathRenderer = vPathRenderer2;
                i3++;
                vPathRenderer2 = vPathRenderer;
                z = false;
            }
            vPathRenderer = vPathRenderer2;
            canvas.restore();
        }

        public final void draw$65b72e48(Canvas canvas, int i, int i2) {
            drawGroupTree(this.mRootGroup, IDENTITY_MATRIX, canvas, i, i2, null);
        }
    }

    static class VectorDrawableCompatState extends ConstantState {
        boolean mAutoMirrored;
        boolean mCacheDirty;
        boolean mCachedAutoMirrored;
        Bitmap mCachedBitmap;
        int mCachedRootAlpha;
        ColorStateList mCachedTint;
        Mode mCachedTintMode;
        int mChangingConfigurations;
        Paint mTempPaint;
        ColorStateList mTint;
        Mode mTintMode;
        VPathRenderer mVPathRenderer;

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            this.mTint = null;
            this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
            if (vectorDrawableCompatState != null) {
                this.mChangingConfigurations = vectorDrawableCompatState.mChangingConfigurations;
                this.mVPathRenderer = new VPathRenderer(vectorDrawableCompatState.mVPathRenderer);
                if (vectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                    this.mVPathRenderer.mFillPaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mFillPaint);
                }
                if (vectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                    this.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompatState.mVPathRenderer.mStrokePaint);
                }
                this.mTint = vectorDrawableCompatState.mTint;
                this.mTintMode = vectorDrawableCompatState.mTintMode;
                this.mAutoMirrored = vectorDrawableCompatState.mAutoMirrored;
            }
        }

        public VectorDrawableCompatState() {
            this.mTint = null;
            this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
            this.mVPathRenderer = new VPathRenderer();
        }

        public final Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        public final Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public final int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }
    }

    static class VectorDrawableDelegateState extends ConstantState {
        private final ConstantState mDelegateState;

        public VectorDrawableDelegateState(ConstantState constantState) {
            this.mDelegateState = constantState;
        }

        public final Drawable newDrawable() {
            Drawable vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable();
            return vectorDrawableCompat;
        }

        public final Drawable newDrawable(Resources resources) {
            Drawable vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources);
            return vectorDrawableCompat;
        }

        public final Drawable newDrawable(Resources resources, Theme theme) {
            Drawable vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.mDelegateDrawable = (VectorDrawable) this.mDelegateState.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }

        public final boolean canApplyTheme() {
            return this.mDelegateState.canApplyTheme();
        }

        public final int getChangingConfigurations() {
            return this.mDelegateState.getChangingConfigurations();
        }
    }

    static class VClipPath extends VPath {
        public final boolean isClipPath() {
            return true;
        }

        public VClipPath(VClipPath vClipPath) {
            super(vClipPath);
        }

        public final void inflate(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null ? 1 : null) != null) {
                xmlPullParser = AndroidResources.STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH;
                if (theme == null) {
                    resources = resources.obtainAttributes(attributeSet, xmlPullParser);
                } else {
                    resources = theme.obtainStyledAttributes(attributeSet, xmlPullParser, 0, 0);
                }
                attributeSet = resources.getString(0);
                if (attributeSet != null) {
                    this.mPathName = attributeSet;
                }
                attributeSet = resources.getString(1);
                if (attributeSet != null) {
                    this.mNodes = PathParser.createNodesFromPathData(attributeSet);
                }
                resources.recycle();
            }
        }
    }

    static class VFullPath extends VPath {
        float mFillAlpha = 1.0f;
        int mFillColor = 0;
        int mFillRule = 0;
        float mStrokeAlpha = 1.0f;
        int mStrokeColor = 0;
        Cap mStrokeLineCap = Cap.BUTT;
        Join mStrokeLineJoin = Join.MITER;
        float mStrokeMiterlimit = 4.0f;
        float mStrokeWidth = BitmapDescriptorFactory.HUE_RED;
        private int[] mThemeAttrs;
        float mTrimPathEnd = 1.0f;
        float mTrimPathOffset = BitmapDescriptorFactory.HUE_RED;
        float mTrimPathStart = BitmapDescriptorFactory.HUE_RED;

        public VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.mThemeAttrs = vFullPath.mThemeAttrs;
            this.mStrokeColor = vFullPath.mStrokeColor;
            this.mStrokeWidth = vFullPath.mStrokeWidth;
            this.mStrokeAlpha = vFullPath.mStrokeAlpha;
            this.mFillColor = vFullPath.mFillColor;
            this.mFillRule = vFullPath.mFillRule;
            this.mFillAlpha = vFullPath.mFillAlpha;
            this.mTrimPathStart = vFullPath.mTrimPathStart;
            this.mTrimPathEnd = vFullPath.mTrimPathEnd;
            this.mTrimPathOffset = vFullPath.mTrimPathOffset;
            this.mStrokeLineCap = vFullPath.mStrokeLineCap;
            this.mStrokeLineJoin = vFullPath.mStrokeLineJoin;
            this.mStrokeMiterlimit = vFullPath.mStrokeMiterlimit;
        }

        public final void inflate(Resources resources, AttributeSet attributeSet, Theme theme, XmlPullParser xmlPullParser) {
            int[] iArr = AndroidResources.STYLEABLE_VECTOR_DRAWABLE_PATH;
            if (theme == null) {
                resources = resources.obtainAttributes(attributeSet, iArr);
            } else {
                resources = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
            }
            this.mThemeAttrs = null;
            theme = true;
            if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null ? 1 : null) != null) {
                attributeSet = resources.getString(0);
                if (attributeSet != null) {
                    this.mPathName = attributeSet;
                }
                attributeSet = resources.getString(2);
                if (attributeSet != null) {
                    this.mNodes = PathParser.createNodesFromPathData(attributeSet);
                }
                int i = this.mFillColor;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillColor") != null ? 1 : null) != null) {
                    i = resources.getColor(1, i);
                }
                this.mFillColor = i;
                float f = this.mFillAlpha;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null ? 1 : null) != null) {
                    f = resources.getFloat(12, f);
                }
                this.mFillAlpha = f;
                i = -1;
                attributeSet = (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? 1 : null) == null ? -1 : resources.getInt(8, -1);
                Cap cap = this.mStrokeLineCap;
                switch (attributeSet) {
                    case null:
                        cap = Cap.BUTT;
                        break;
                    case 1:
                        cap = Cap.ROUND;
                        break;
                    case 2:
                        cap = Cap.SQUARE;
                        break;
                    default:
                        break;
                }
                this.mStrokeLineCap = cap;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? 1 : null) != null) {
                    i = resources.getInt(9, -1);
                }
                attributeSet = this.mStrokeLineJoin;
                switch (i) {
                    case 0:
                        attributeSet = Join.MITER;
                        break;
                    case 1:
                        attributeSet = Join.ROUND;
                        break;
                    case 2:
                        attributeSet = Join.BEVEL;
                        break;
                    default:
                        break;
                }
                this.mStrokeLineJoin = attributeSet;
                f = this.mStrokeMiterlimit;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null ? 1 : null) != null) {
                    f = resources.getFloat(10, f);
                }
                this.mStrokeMiterlimit = f;
                i = this.mStrokeColor;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeColor") != null ? 1 : null) != null) {
                    i = resources.getColor(3, i);
                }
                this.mStrokeColor = i;
                f = this.mStrokeAlpha;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null ? 1 : null) != null) {
                    f = resources.getFloat(11, f);
                }
                this.mStrokeAlpha = f;
                f = this.mStrokeWidth;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null ? 1 : null) != null) {
                    f = resources.getFloat(4, f);
                }
                this.mStrokeWidth = f;
                f = this.mTrimPathEnd;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null ? 1 : null) != null) {
                    f = resources.getFloat(6, f);
                }
                this.mTrimPathEnd = f;
                f = this.mTrimPathOffset;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null ? 1 : null) != null) {
                    f = resources.getFloat(7, f);
                }
                this.mTrimPathOffset = f;
                f = this.mTrimPathStart;
                if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null ? 1 : null) != null) {
                    f = resources.getFloat(5, f);
                }
                this.mTrimPathStart = f;
                i = this.mFillRule;
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") == null) {
                    theme = null;
                }
                if (theme != null) {
                    i = resources.getInt(13, i);
                }
                this.mFillRule = i;
            }
            resources.recycle();
        }

        final int getStrokeColor() {
            return this.mStrokeColor;
        }

        final void setStrokeColor(int i) {
            this.mStrokeColor = i;
        }

        final float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        final void setStrokeWidth(float f) {
            this.mStrokeWidth = f;
        }

        final float getStrokeAlpha() {
            return this.mStrokeAlpha;
        }

        final void setStrokeAlpha(float f) {
            this.mStrokeAlpha = f;
        }

        final int getFillColor() {
            return this.mFillColor;
        }

        final void setFillColor(int i) {
            this.mFillColor = i;
        }

        final float getFillAlpha() {
            return this.mFillAlpha;
        }

        final void setFillAlpha(float f) {
            this.mFillAlpha = f;
        }

        final float getTrimPathStart() {
            return this.mTrimPathStart;
        }

        final void setTrimPathStart(float f) {
            this.mTrimPathStart = f;
        }

        final float getTrimPathEnd() {
            return this.mTrimPathEnd;
        }

        final void setTrimPathEnd(float f) {
            this.mTrimPathEnd = f;
        }

        final float getTrimPathOffset() {
            return this.mTrimPathOffset;
        }

        final void setTrimPathOffset(float f) {
            this.mTrimPathOffset = f;
        }
    }

    public final /* bridge */ /* synthetic */ void applyTheme(Theme theme) {
        super.applyTheme(theme);
    }

    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public final /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    public final /* bridge */ /* synthetic */ void setColorFilter(int i, Mode mode) {
        super.setColorFilter(i, mode);
    }

    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    VectorDrawableCompat() {
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = new VectorDrawableCompatState();
    }

    VectorDrawableCompat(VectorDrawableCompatState vectorDrawableCompatState) {
        PorterDuffColorFilter porterDuffColorFilter;
        this.mAllowCaching = true;
        this.mTmpFloats = new float[9];
        this.mTmpMatrix = new Matrix();
        this.mTmpBounds = new Rect();
        this.mVectorState = vectorDrawableCompatState;
        ColorStateList colorStateList = vectorDrawableCompatState.mTint;
        vectorDrawableCompatState = vectorDrawableCompatState.mTintMode;
        if (colorStateList != null) {
            if (vectorDrawableCompatState != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), vectorDrawableCompatState);
                this.mTintFilter = porterDuffColorFilter;
            }
        }
        porterDuffColorFilter = null;
        this.mTintFilter = porterDuffColorFilter;
    }

    public final Drawable mutate() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.mutate();
            return this;
        }
        if (!this.mMutated && super.mutate() == this) {
            this.mVectorState = new VectorDrawableCompatState(this.mVectorState);
            this.mMutated = true;
        }
        return this;
    }

    final Object getTargetByName(String str) {
        return this.mVectorState.mVPathRenderer.mVGTargetsMap.get(str);
    }

    public final ConstantState getConstantState() {
        if (this.mDelegateDrawable != null && VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState());
        }
        this.mVectorState.mChangingConfigurations = getChangingConfigurations();
        return this.mVectorState;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void draw(android.graphics.Canvas r11) {
        /*
        r10 = this;
        r0 = r10.mDelegateDrawable;
        if (r0 == 0) goto L_0x000a;
    L_0x0004:
        r0 = r10.mDelegateDrawable;
        r0.draw(r11);
        return;
    L_0x000a:
        r0 = r10.mTmpBounds;
        r10.copyBounds(r0);
        r0 = r10.mTmpBounds;
        r0 = r0.width();
        if (r0 <= 0) goto L_0x0196;
    L_0x0017:
        r0 = r10.mTmpBounds;
        r0 = r0.height();
        if (r0 > 0) goto L_0x0021;
    L_0x001f:
        goto L_0x0196;
    L_0x0021:
        r0 = r10.mColorFilter;
        if (r0 != 0) goto L_0x0028;
    L_0x0025:
        r0 = r10.mTintFilter;
        goto L_0x002a;
    L_0x0028:
        r0 = r10.mColorFilter;
    L_0x002a:
        r1 = r10.mTmpMatrix;
        r11.getMatrix(r1);
        r1 = r10.mTmpMatrix;
        r2 = r10.mTmpFloats;
        r1.getValues(r2);
        r1 = r10.mTmpFloats;
        r2 = 0;
        r1 = r1[r2];
        r1 = java.lang.Math.abs(r1);
        r3 = r10.mTmpFloats;
        r4 = 4;
        r3 = r3[r4];
        r3 = java.lang.Math.abs(r3);
        r4 = r10.mTmpFloats;
        r5 = 1;
        r4 = r4[r5];
        r4 = java.lang.Math.abs(r4);
        r6 = r10.mTmpFloats;
        r7 = 3;
        r6 = r6[r7];
        r6 = java.lang.Math.abs(r6);
        r7 = 0;
        r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1));
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        if (r4 != 0) goto L_0x0065;
    L_0x0061:
        r4 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r4 == 0) goto L_0x0067;
    L_0x0065:
        r1 = r8;
        r3 = r1;
    L_0x0067:
        r4 = r10.mTmpBounds;
        r4 = r4.width();
        r4 = (float) r4;
        r4 = r4 * r1;
        r1 = (int) r4;
        r4 = r10.mTmpBounds;
        r4 = r4.height();
        r4 = (float) r4;
        r4 = r4 * r3;
        r3 = (int) r4;
        r4 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r1 = java.lang.Math.min(r4, r1);
        r3 = java.lang.Math.min(r4, r3);
        if (r1 <= 0) goto L_0x0195;
    L_0x0085:
        if (r3 > 0) goto L_0x0089;
    L_0x0087:
        goto L_0x0195;
    L_0x0089:
        r4 = r11.save();
        r6 = r10.mTmpBounds;
        r6 = r6.left;
        r6 = (float) r6;
        r9 = r10.mTmpBounds;
        r9 = r9.top;
        r9 = (float) r9;
        r11.translate(r6, r9);
        r6 = android.os.Build.VERSION.SDK_INT;
        r9 = 17;
        if (r6 < r9) goto L_0x00ae;
    L_0x00a0:
        r6 = r10.isAutoMirrored();
        if (r6 == 0) goto L_0x00ae;
    L_0x00a6:
        r6 = android.support.v4.graphics.drawable.DrawableCompat.getLayoutDirection(r10);
        if (r6 != r5) goto L_0x00ae;
    L_0x00ac:
        r6 = r5;
        goto L_0x00af;
    L_0x00ae:
        r6 = r2;
    L_0x00af:
        if (r6 == 0) goto L_0x00c0;
    L_0x00b1:
        r6 = r10.mTmpBounds;
        r6 = r6.width();
        r6 = (float) r6;
        r11.translate(r6, r7);
        r6 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r11.scale(r6, r8);
    L_0x00c0:
        r6 = r10.mTmpBounds;
        r6.offsetTo(r2, r2);
        r6 = r10.mVectorState;
        r7 = r6.mCachedBitmap;
        if (r7 == 0) goto L_0x00e0;
    L_0x00cb:
        r7 = r6.mCachedBitmap;
        r7 = r7.getWidth();
        if (r1 != r7) goto L_0x00dd;
    L_0x00d3:
        r7 = r6.mCachedBitmap;
        r7 = r7.getHeight();
        if (r3 != r7) goto L_0x00dd;
    L_0x00db:
        r7 = r5;
        goto L_0x00de;
    L_0x00dd:
        r7 = r2;
    L_0x00de:
        if (r7 != 0) goto L_0x00ea;
    L_0x00e0:
        r7 = android.graphics.Bitmap.Config.ARGB_8888;
        r7 = android.graphics.Bitmap.createBitmap(r1, r3, r7);
        r6.mCachedBitmap = r7;
        r6.mCacheDirty = r5;
    L_0x00ea:
        r6 = r10.mAllowCaching;
        if (r6 != 0) goto L_0x0102;
    L_0x00ee:
        r6 = r10.mVectorState;
        r7 = r6.mCachedBitmap;
        r7.eraseColor(r2);
        r7 = new android.graphics.Canvas;
        r8 = r6.mCachedBitmap;
        r7.<init>(r8);
        r6 = r6.mVPathRenderer;
        r6.draw$65b72e48(r7, r1, r3);
        goto L_0x0154;
    L_0x0102:
        r6 = r10.mVectorState;
        r7 = r6.mCacheDirty;
        if (r7 != 0) goto L_0x0126;
    L_0x0108:
        r7 = r6.mCachedTint;
        r8 = r6.mTint;
        if (r7 != r8) goto L_0x0126;
    L_0x010e:
        r7 = r6.mCachedTintMode;
        r8 = r6.mTintMode;
        if (r7 != r8) goto L_0x0126;
    L_0x0114:
        r7 = r6.mCachedAutoMirrored;
        r8 = r6.mAutoMirrored;
        if (r7 != r8) goto L_0x0126;
    L_0x011a:
        r7 = r6.mCachedRootAlpha;
        r6 = r6.mVPathRenderer;
        r6 = r6.getRootAlpha();
        if (r7 != r6) goto L_0x0126;
    L_0x0124:
        r6 = r5;
        goto L_0x0127;
    L_0x0126:
        r6 = r2;
    L_0x0127:
        if (r6 != 0) goto L_0x0154;
    L_0x0129:
        r6 = r10.mVectorState;
        r7 = r6.mCachedBitmap;
        r7.eraseColor(r2);
        r7 = new android.graphics.Canvas;
        r8 = r6.mCachedBitmap;
        r7.<init>(r8);
        r6 = r6.mVPathRenderer;
        r6.draw$65b72e48(r7, r1, r3);
        r1 = r10.mVectorState;
        r3 = r1.mTint;
        r1.mCachedTint = r3;
        r3 = r1.mTintMode;
        r1.mCachedTintMode = r3;
        r3 = r1.mVPathRenderer;
        r3 = r3.getRootAlpha();
        r1.mCachedRootAlpha = r3;
        r3 = r1.mAutoMirrored;
        r1.mCachedAutoMirrored = r3;
        r1.mCacheDirty = r2;
    L_0x0154:
        r1 = r10.mVectorState;
        r3 = r10.mTmpBounds;
        r6 = r1.mVPathRenderer;
        r6 = r6.getRootAlpha();
        r7 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        if (r6 >= r7) goto L_0x0163;
    L_0x0162:
        r2 = r5;
    L_0x0163:
        r6 = 0;
        if (r2 != 0) goto L_0x016a;
    L_0x0166:
        if (r0 != 0) goto L_0x016a;
    L_0x0168:
        r0 = r6;
        goto L_0x018c;
    L_0x016a:
        r2 = r1.mTempPaint;
        if (r2 != 0) goto L_0x017a;
    L_0x016e:
        r2 = new android.graphics.Paint;
        r2.<init>();
        r1.mTempPaint = r2;
        r2 = r1.mTempPaint;
        r2.setFilterBitmap(r5);
    L_0x017a:
        r2 = r1.mTempPaint;
        r5 = r1.mVPathRenderer;
        r5 = r5.getRootAlpha();
        r2.setAlpha(r5);
        r2 = r1.mTempPaint;
        r2.setColorFilter(r0);
        r0 = r1.mTempPaint;
    L_0x018c:
        r1 = r1.mCachedBitmap;
        r11.drawBitmap(r1, r6, r3, r0);
        r11.restoreToCount(r4);
        return;
    L_0x0195:
        return;
    L_0x0196:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.VectorDrawableCompat.draw(android.graphics.Canvas):void");
    }

    public final int getAlpha() {
        if (this.mDelegateDrawable == null) {
            return this.mVectorState.mVPathRenderer.getRootAlpha();
        }
        Drawable drawable = this.mDelegateDrawable;
        if (VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    public final void setAlpha(int i) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setAlpha(i);
            return;
        }
        if (this.mVectorState.mVPathRenderer.getRootAlpha() != i) {
            this.mVectorState.mVPathRenderer.setRootAlpha(i);
            invalidateSelf();
        }
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setColorFilter(colorFilter);
            return;
        }
        this.mColorFilter = colorFilter;
        invalidateSelf();
    }

    public final void setTint(int i) {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 21) {
                drawable.setTint(i);
                return;
            }
            if (drawable instanceof TintAwareDrawable) {
                ((TintAwareDrawable) drawable).setTint(i);
            }
            return;
        }
        setTintList(ColorStateList.valueOf(i));
    }

    public final void setTintList(ColorStateList colorStateList) {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 21) {
                drawable.setTintList(colorStateList);
                return;
            }
            if (drawable instanceof TintAwareDrawable) {
                ((TintAwareDrawable) drawable).setTintList(colorStateList);
            }
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTint != colorStateList) {
            PorterDuffColorFilter porterDuffColorFilter;
            vectorDrawableCompatState.mTint = colorStateList;
            Mode mode = vectorDrawableCompatState.mTintMode;
            if (colorStateList != null) {
                if (mode != null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
                    this.mTintFilter = porterDuffColorFilter;
                    invalidateSelf();
                }
            }
            porterDuffColorFilter = null;
            this.mTintFilter = porterDuffColorFilter;
            invalidateSelf();
        }
    }

    public final void setTintMode(Mode mode) {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 21) {
                drawable.setTintMode(mode);
                return;
            }
            if (drawable instanceof TintAwareDrawable) {
                ((TintAwareDrawable) drawable).setTintMode(mode);
            }
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        if (vectorDrawableCompatState.mTintMode != mode) {
            PorterDuffColorFilter porterDuffColorFilter;
            vectorDrawableCompatState.mTintMode = mode;
            ColorStateList colorStateList = vectorDrawableCompatState.mTint;
            if (colorStateList != null) {
                if (mode != null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
                    this.mTintFilter = porterDuffColorFilter;
                    invalidateSelf();
                }
            }
            porterDuffColorFilter = null;
            this.mTintFilter = porterDuffColorFilter;
            invalidateSelf();
        }
    }

    public final boolean isStateful() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.isStateful();
        }
        if (!super.isStateful()) {
            if (this.mVectorState == null || this.mVectorState.mTint == null || !this.mVectorState.mTint.isStateful()) {
                return false;
            }
        }
        return true;
    }

    protected final boolean onStateChange(int[] iArr) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setState(iArr);
        }
        iArr = this.mVectorState;
        if (iArr.mTint == null || iArr.mTintMode == null) {
            return false;
        }
        PorterDuffColorFilter porterDuffColorFilter;
        ColorStateList colorStateList = iArr.mTint;
        iArr = iArr.mTintMode;
        if (colorStateList != null) {
            if (iArr != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), iArr);
                this.mTintFilter = porterDuffColorFilter;
                invalidateSelf();
                return 1;
            }
        }
        porterDuffColorFilter = null;
        this.mTintFilter = porterDuffColorFilter;
        invalidateSelf();
        return 1;
    }

    public final int getOpacity() {
        return this.mDelegateDrawable != null ? this.mDelegateDrawable.getOpacity() : -3;
    }

    public final int getIntrinsicWidth() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicWidth();
        }
        return (int) this.mVectorState.mVPathRenderer.mBaseWidth;
    }

    public final int getIntrinsicHeight() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getIntrinsicHeight();
        }
        return (int) this.mVectorState.mVPathRenderer.mBaseHeight;
    }

    public final boolean canApplyTheme() {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 21) {
                drawable.canApplyTheme();
            }
        }
        return false;
    }

    public final boolean isAutoMirrored() {
        if (this.mDelegateDrawable == null) {
            return this.mVectorState.mAutoMirrored;
        }
        Drawable drawable = this.mDelegateDrawable;
        if (VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    public final void setAutoMirrored(boolean z) {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(z);
            }
            return;
        }
        this.mVectorState.mAutoMirrored = z;
    }

    public static VectorDrawableCompat create(Resources resources, int i, Theme theme) {
        if (VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            if (VERSION.SDK_INT >= 21) {
                resources = resources.getDrawable(i, theme);
            } else {
                resources = resources.getDrawable(i);
            }
            vectorDrawableCompat.mDelegateDrawable = resources;
            vectorDrawableCompat.mCachedConstantStateDelegate = new VectorDrawableDelegateState(vectorDrawableCompat.mDelegateDrawable.getConstantState());
            return vectorDrawableCompat;
        }
        try {
            int next;
            i = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(i);
            do {
                next = i.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            VectorDrawableCompat vectorDrawableCompat2 = new VectorDrawableCompat();
            vectorDrawableCompat2.inflate(resources, i, asAttributeSet, theme);
            return vectorDrawableCompat2;
        } catch (Resources resources2) {
            Log.e("VectorDrawableCompat", "parser error", resources2);
            return null;
        } catch (Resources resources22) {
            Log.e("VectorDrawableCompat", "parser error", resources22);
            return null;
        }
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    static int applyAlpha(int i, float f) {
        return (i & ViewCompat.MEASURED_SIZE_MASK) | (((int) (((float) Color.alpha(i)) * f)) << 24);
    }

    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        if (this.mDelegateDrawable != null) {
            Drawable drawable = this.mDelegateDrawable;
            if (VERSION.SDK_INT >= 21) {
                drawable.inflate(resources, xmlPullParser, attributeSet, theme);
                return;
            } else {
                drawable.inflate(resources, xmlPullParser, attributeSet);
                return;
            }
        }
        TypedArray obtainAttributes;
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        vectorDrawableCompatState.mVPathRenderer = new VPathRenderer();
        int[] iArr = AndroidResources.STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY;
        if (theme == null) {
            obtainAttributes = resources.obtainAttributes(attributeSet, iArr);
        } else {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        }
        VectorDrawableCompatState vectorDrawableCompatState2 = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState2.mVPathRenderer;
        int i = -1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tintMode") != null) {
            i = obtainAttributes.getInt(6, -1);
        }
        Mode mode = Mode.SRC_IN;
        if (i == 3) {
            mode = Mode.SRC_OVER;
        } else if (i == 5) {
            mode = Mode.SRC_IN;
        } else if (i != 9) {
            switch (i) {
                case 14:
                    mode = Mode.MULTIPLY;
                    break;
                case 15:
                    mode = Mode.SCREEN;
                    break;
                case 16:
                    mode = Mode.ADD;
                    break;
                default:
                    break;
            }
        } else {
            mode = Mode.SRC_ATOP;
        }
        vectorDrawableCompatState2.mTintMode = mode;
        ColorStateList colorStateList = obtainAttributes.getColorStateList(1);
        if (colorStateList != null) {
            vectorDrawableCompatState2.mTint = colorStateList;
        }
        boolean z = vectorDrawableCompatState2.mAutoMirrored;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = obtainAttributes.getBoolean(5, z);
        }
        vectorDrawableCompatState2.mAutoMirrored = z;
        float f = vPathRenderer.mViewportWidth;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f = obtainAttributes.getFloat(7, f);
        }
        vPathRenderer.mViewportWidth = f;
        f = vPathRenderer.mViewportHeight;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f = obtainAttributes.getFloat(8, f);
        }
        vPathRenderer.mViewportHeight = f;
        if (vPathRenderer.mViewportWidth <= BitmapDescriptorFactory.HUE_RED) {
            xmlPullParser = new StringBuilder();
            xmlPullParser.append(obtainAttributes.getPositionDescription());
            xmlPullParser.append("<vector> tag requires viewportWidth > 0");
            throw new XmlPullParserException(xmlPullParser.toString());
        } else if (vPathRenderer.mViewportHeight <= BitmapDescriptorFactory.HUE_RED) {
            xmlPullParser = new StringBuilder();
            xmlPullParser.append(obtainAttributes.getPositionDescription());
            xmlPullParser.append("<vector> tag requires viewportHeight > 0");
            throw new XmlPullParserException(xmlPullParser.toString());
        } else {
            vPathRenderer.mBaseWidth = obtainAttributes.getDimension(3, vPathRenderer.mBaseWidth);
            vPathRenderer.mBaseHeight = obtainAttributes.getDimension(2, vPathRenderer.mBaseHeight);
            if (vPathRenderer.mBaseWidth <= BitmapDescriptorFactory.HUE_RED) {
                xmlPullParser = new StringBuilder();
                xmlPullParser.append(obtainAttributes.getPositionDescription());
                xmlPullParser.append("<vector> tag requires width > 0");
                throw new XmlPullParserException(xmlPullParser.toString());
            } else if (vPathRenderer.mBaseHeight <= BitmapDescriptorFactory.HUE_RED) {
                xmlPullParser = new StringBuilder();
                xmlPullParser.append(obtainAttributes.getPositionDescription());
                xmlPullParser.append("<vector> tag requires height > 0");
                throw new XmlPullParserException(xmlPullParser.toString());
            } else {
                f = vPathRenderer.getAlpha();
                if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
                    f = obtainAttributes.getFloat(4, f);
                }
                vPathRenderer.setAlpha(f);
                String string = obtainAttributes.getString(0);
                if (string != null) {
                    vPathRenderer.mRootName = string;
                    vPathRenderer.mVGTargetsMap.put(string, vPathRenderer);
                }
                obtainAttributes.recycle();
                vectorDrawableCompatState.mChangingConfigurations = getChangingConfigurations();
                vectorDrawableCompatState.mCacheDirty = true;
                inflateInternal(resources, xmlPullParser, attributeSet, theme);
                resources = vectorDrawableCompatState.mTint;
                xmlPullParser = vectorDrawableCompatState.mTintMode;
                if (resources != null) {
                    if (xmlPullParser != null) {
                        attributeSet = new PorterDuffColorFilter(resources.getColorForState(getState(), 0), xmlPullParser);
                        this.mTintFilter = attributeSet;
                    }
                }
                attributeSet = null;
                this.mTintFilter = attributeSet;
            }
        }
    }

    private void inflateInternal(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompatState vectorDrawableCompatState = this.mVectorState;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.mVPathRenderer;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(vPathRenderer.mRootGroup);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        int i = 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) arrayDeque.peek();
                if ("path".equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vFullPath.getPathName(), vFullPath);
                    }
                    i = 0;
                    vectorDrawableCompatState.mChangingConfigurations = vFullPath.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                } else if ("clip-path".equals(name)) {
                    VClipPath vClipPath = new VClipPath();
                    vClipPath.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vClipPath);
                    if (vClipPath.getPathName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vClipPath.getPathName(), vClipPath);
                    }
                    vectorDrawableCompatState.mChangingConfigurations = vClipPath.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                } else if ("group".equals(name)) {
                    VGroup vGroup2 = new VGroup();
                    vGroup2.inflate(resources, attributeSet, theme, xmlPullParser);
                    vGroup.mChildren.add(vGroup2);
                    arrayDeque.push(vGroup2);
                    if (vGroup2.getGroupName() != null) {
                        vPathRenderer.mVGTargetsMap.put(vGroup2.getGroupName(), vGroup2);
                    }
                    vectorDrawableCompatState.mChangingConfigurations = vGroup2.mChangingConfigurations | vectorDrawableCompatState.mChangingConfigurations;
                }
            } else if (eventType == 3) {
                if ("group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
        }
        if (i != 0) {
            throw new XmlPullParserException("no path defined");
        }
    }

    final void setAllowCaching$1385ff() {
        this.mAllowCaching = false;
    }

    protected final void onBoundsChange(Rect rect) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.setBounds(rect);
        }
    }

    public final int getChangingConfigurations() {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.mVectorState.getChangingConfigurations();
    }

    public final void invalidateSelf() {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public final void scheduleSelf(Runnable runnable, long j) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    public final boolean setVisible(boolean z, boolean z2) {
        if (this.mDelegateDrawable != null) {
            return this.mDelegateDrawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    public final void unscheduleSelf(Runnable runnable) {
        if (this.mDelegateDrawable != null) {
            this.mDelegateDrawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
