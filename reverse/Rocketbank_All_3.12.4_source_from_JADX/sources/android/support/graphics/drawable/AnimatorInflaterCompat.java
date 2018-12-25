package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.ParcelFileDescriptor;
import android.support.annotation.RestrictTo;
import android.support.coreui.C0888R.style;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.PathParser.PathDataNode;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.VideoBitmapDecoder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
public final class AnimatorInflaterCompat implements ResourceDecoder<ParcelFileDescriptor, Bitmap> {
    private final VideoBitmapDecoder bitmapDecoder;
    private final BitmapPool bitmapPool;
    private DecodeFormat decodeFormat;

    static class PathDataEvaluator implements TypeEvaluator<PathDataNode[]> {
        private PathDataNode[] mNodeArray;

        public final /* bridge */ /* synthetic */ Object evaluate(float f, Object obj, Object obj2) {
            PathDataNode[] pathDataNodeArr = (PathDataNode[]) obj;
            PathDataNode[] pathDataNodeArr2 = (PathDataNode[]) obj2;
            if (PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                if (this.mNodeArray == null || !PathParser.canMorph(this.mNodeArray, pathDataNodeArr)) {
                    this.mNodeArray = PathParser.deepCopyNodes(pathDataNodeArr);
                }
                for (int i = 0; i < pathDataNodeArr.length; i++) {
                    this.mNodeArray[i].interpolatePathDataNode(pathDataNodeArr[i], pathDataNodeArr2[i], f);
                }
                return this.mNodeArray;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }

        private PathDataEvaluator() {
        }
    }

    public final String getId() {
        return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
    }

    public static Animator loadAnimator$3ff1a0b8(Context context, Resources resources, Theme theme, int i) throws NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        try {
            XmlPullParser animation = resources.getAnimation(i);
            try {
                context = createAnimatorFromXml(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, 1.0f);
                if (animation != null) {
                    animation.close();
                }
                return context;
            } catch (XmlPullParserException e) {
                context = e;
                XmlPullParser xmlPullParser = animation;
                theme = new StringBuilder("Can't load animation resource ID #0x");
                theme.append(Integer.toHexString(i));
                resources = new NotFoundException(theme.toString());
                resources.initCause(context);
                throw resources;
            } catch (IOException e2) {
                context = e2;
                xmlResourceParser = animation;
                theme = new StringBuilder("Can't load animation resource ID #0x");
                theme.append(Integer.toHexString(i));
                resources = new NotFoundException(theme.toString());
                resources.initCause(context);
                throw resources;
            } catch (Throwable th) {
                context = th;
                xmlResourceParser = animation;
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw context;
            }
        } catch (XmlPullParserException e3) {
            context = e3;
            theme = new StringBuilder("Can't load animation resource ID #0x");
            theme.append(Integer.toHexString(i));
            resources = new NotFoundException(theme.toString());
            resources.initCause(context);
            throw resources;
        } catch (IOException e4) {
            context = e4;
            theme = new StringBuilder("Can't load animation resource ID #0x");
            theme.append(Integer.toHexString(i));
            resources = new NotFoundException(theme.toString());
            resources.initCause(context);
            throw resources;
        } catch (Throwable th2) {
            context = th2;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw context;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.animation.PropertyValuesHolder getPVH(android.content.res.TypedArray r17, int r18, int r19, int r20, java.lang.String r21) {
        /*
        r0 = r17;
        r1 = r19;
        r2 = r20;
        r3 = r21;
        r4 = r0.peekValue(r1);
        r5 = 1;
        r6 = 0;
        if (r4 == 0) goto L_0x0012;
    L_0x0010:
        r7 = r5;
        goto L_0x0013;
    L_0x0012:
        r7 = r6;
    L_0x0013:
        if (r7 == 0) goto L_0x0018;
    L_0x0015:
        r4 = r4.type;
        goto L_0x0019;
    L_0x0018:
        r4 = r6;
    L_0x0019:
        r8 = r0.peekValue(r2);
        if (r8 == 0) goto L_0x0021;
    L_0x001f:
        r9 = r5;
        goto L_0x0022;
    L_0x0021:
        r9 = r6;
    L_0x0022:
        if (r9 == 0) goto L_0x0027;
    L_0x0024:
        r8 = r8.type;
        goto L_0x0028;
    L_0x0027:
        r8 = r6;
    L_0x0028:
        r10 = 4;
        r11 = 3;
        r12 = 31;
        r13 = 28;
        r14 = r18;
        if (r14 != r10) goto L_0x004b;
    L_0x0032:
        if (r7 == 0) goto L_0x003d;
    L_0x0034:
        if (r4 < r13) goto L_0x003a;
    L_0x0036:
        if (r4 > r12) goto L_0x003a;
    L_0x0038:
        r10 = r5;
        goto L_0x003b;
    L_0x003a:
        r10 = r6;
    L_0x003b:
        if (r10 != 0) goto L_0x0048;
    L_0x003d:
        if (r9 == 0) goto L_0x004a;
    L_0x003f:
        if (r8 < r13) goto L_0x0045;
    L_0x0041:
        if (r8 > r12) goto L_0x0045;
    L_0x0043:
        r10 = r5;
        goto L_0x0046;
    L_0x0045:
        r10 = r6;
    L_0x0046:
        if (r10 == 0) goto L_0x004a;
    L_0x0048:
        r14 = r11;
        goto L_0x004b;
    L_0x004a:
        r14 = r6;
    L_0x004b:
        if (r14 != 0) goto L_0x004f;
    L_0x004d:
        r10 = r5;
        goto L_0x0050;
    L_0x004f:
        r10 = r6;
    L_0x0050:
        r15 = 2;
        if (r14 != r15) goto L_0x00bd;
    L_0x0053:
        r1 = r0.getString(r1);
        r0 = r0.getString(r2);
        r2 = android.support.v4.graphics.PathParser.createNodesFromPathData(r1);
        r4 = android.support.v4.graphics.PathParser.createNodesFromPathData(r0);
        if (r2 != 0) goto L_0x0067;
    L_0x0065:
        if (r4 == 0) goto L_0x00ba;
    L_0x0067:
        if (r2 == 0) goto L_0x00a8;
    L_0x0069:
        r7 = new android.support.graphics.drawable.AnimatorInflaterCompat$PathDataEvaluator;
        r7.<init>();
        if (r4 == 0) goto L_0x009e;
    L_0x0070:
        r8 = android.support.v4.graphics.PathParser.canMorph(r2, r4);
        if (r8 != 0) goto L_0x0092;
    L_0x0076:
        r2 = new android.view.InflateException;
        r3 = new java.lang.StringBuilder;
        r4 = " Can't morph from ";
        r3.<init>(r4);
        r3.append(r1);
        r1 = " to ";
        r3.append(r1);
        r3.append(r0);
        r0 = r3.toString();
        r2.<init>(r0);
        throw r2;
    L_0x0092:
        r0 = new java.lang.Object[r15];
        r0[r6] = r2;
        r0[r5] = r4;
        r0 = android.animation.PropertyValuesHolder.ofObject(r3, r7, r0);
        goto L_0x018c;
    L_0x009e:
        r0 = new java.lang.Object[r5];
        r0[r6] = r2;
        r0 = android.animation.PropertyValuesHolder.ofObject(r3, r7, r0);
        goto L_0x018c;
    L_0x00a8:
        if (r4 == 0) goto L_0x00ba;
    L_0x00aa:
        r0 = new android.support.graphics.drawable.AnimatorInflaterCompat$PathDataEvaluator;
        r0.<init>();
        r1 = new java.lang.Object[r5];
        r1[r6] = r4;
        r15 = android.animation.PropertyValuesHolder.ofObject(r3, r0, r1);
        r0 = r15;
        goto L_0x018c;
    L_0x00ba:
        r0 = 0;
        goto L_0x018c;
    L_0x00bd:
        if (r14 != r11) goto L_0x00c4;
    L_0x00bf:
        r11 = android.support.graphics.drawable.ArgbEvaluator.getInstance();
        goto L_0x00c5;
    L_0x00c4:
        r11 = 0;
    L_0x00c5:
        r14 = 5;
        r12 = 0;
        if (r10 == 0) goto L_0x010d;
    L_0x00c9:
        if (r7 == 0) goto L_0x00f7;
    L_0x00cb:
        if (r4 != r14) goto L_0x00d2;
    L_0x00cd:
        r1 = r0.getDimension(r1, r12);
        goto L_0x00d6;
    L_0x00d2:
        r1 = r0.getFloat(r1, r12);
    L_0x00d6:
        if (r9 == 0) goto L_0x00ee;
    L_0x00d8:
        if (r8 != r14) goto L_0x00df;
    L_0x00da:
        r0 = r0.getDimension(r2, r12);
        goto L_0x00e3;
    L_0x00df:
        r0 = r0.getFloat(r2, r12);
    L_0x00e3:
        r2 = new float[r15];
        r2[r6] = r1;
        r2[r5] = r0;
        r15 = android.animation.PropertyValuesHolder.ofFloat(r3, r2);
        goto L_0x010a;
    L_0x00ee:
        r0 = new float[r5];
        r0[r6] = r1;
        r15 = android.animation.PropertyValuesHolder.ofFloat(r3, r0);
        goto L_0x010a;
    L_0x00f7:
        if (r8 != r14) goto L_0x00fe;
    L_0x00f9:
        r0 = r0.getDimension(r2, r12);
        goto L_0x0102;
    L_0x00fe:
        r0 = r0.getFloat(r2, r12);
    L_0x0102:
        r1 = new float[r5];
        r1[r6] = r0;
        r15 = android.animation.PropertyValuesHolder.ofFloat(r3, r1);
    L_0x010a:
        r0 = r15;
        goto L_0x0185;
    L_0x010d:
        if (r7 == 0) goto L_0x015d;
    L_0x010f:
        if (r4 != r14) goto L_0x0117;
    L_0x0111:
        r1 = r0.getDimension(r1, r12);
        r1 = (int) r1;
        goto L_0x012b;
    L_0x0117:
        if (r4 < r13) goto L_0x011f;
    L_0x0119:
        r7 = 31;
        if (r4 > r7) goto L_0x011f;
    L_0x011d:
        r4 = r5;
        goto L_0x0120;
    L_0x011f:
        r4 = r6;
    L_0x0120:
        if (r4 == 0) goto L_0x0127;
    L_0x0122:
        r1 = r0.getColor(r1, r6);
        goto L_0x012b;
    L_0x0127:
        r1 = r0.getInt(r1, r6);
    L_0x012b:
        if (r9 == 0) goto L_0x0154;
    L_0x012d:
        if (r8 != r14) goto L_0x0135;
    L_0x012f:
        r0 = r0.getDimension(r2, r12);
        r0 = (int) r0;
        goto L_0x0149;
    L_0x0135:
        if (r8 < r13) goto L_0x013d;
    L_0x0137:
        r4 = 31;
        if (r8 > r4) goto L_0x013d;
    L_0x013b:
        r4 = r5;
        goto L_0x013e;
    L_0x013d:
        r4 = r6;
    L_0x013e:
        if (r4 == 0) goto L_0x0145;
    L_0x0140:
        r0 = r0.getColor(r2, r6);
        goto L_0x0149;
    L_0x0145:
        r0 = r0.getInt(r2, r6);
    L_0x0149:
        r2 = new int[r15];
        r2[r6] = r1;
        r2[r5] = r0;
        r15 = android.animation.PropertyValuesHolder.ofInt(r3, r2);
        goto L_0x010a;
    L_0x0154:
        r0 = new int[r5];
        r0[r6] = r1;
        r15 = android.animation.PropertyValuesHolder.ofInt(r3, r0);
        goto L_0x010a;
    L_0x015d:
        if (r9 == 0) goto L_0x0184;
    L_0x015f:
        if (r8 != r14) goto L_0x0167;
    L_0x0161:
        r0 = r0.getDimension(r2, r12);
        r0 = (int) r0;
        goto L_0x017b;
    L_0x0167:
        if (r8 < r13) goto L_0x016f;
    L_0x0169:
        r1 = 31;
        if (r8 > r1) goto L_0x016f;
    L_0x016d:
        r1 = r5;
        goto L_0x0170;
    L_0x016f:
        r1 = r6;
    L_0x0170:
        if (r1 == 0) goto L_0x0177;
    L_0x0172:
        r0 = r0.getColor(r2, r6);
        goto L_0x017b;
    L_0x0177:
        r0 = r0.getInt(r2, r6);
    L_0x017b:
        r1 = new int[r5];
        r1[r6] = r0;
        r15 = android.animation.PropertyValuesHolder.ofInt(r3, r1);
        goto L_0x010a;
    L_0x0184:
        r0 = 0;
    L_0x0185:
        if (r0 == 0) goto L_0x018c;
    L_0x0187:
        if (r11 == 0) goto L_0x018c;
    L_0x0189:
        r0.setEvaluator(r11);
    L_0x018c:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.AnimatorInflaterCompat.getPVH(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    private static void setupPathMotion(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        Path path2 = path;
        ObjectAnimator objectAnimator2 = objectAnimator;
        String str3 = str;
        String str4 = str2;
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path2, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(BitmapDescriptorFactory.HUE_RED));
        float f2 = BitmapDescriptorFactory.HUE_RED;
        do {
            f2 += pathMeasure.getLength();
            arrayList.add(Float.valueOf(f2));
        } while (pathMeasure.nextContour());
        pathMeasure = new PathMeasure(path2, false);
        int min = Math.min(100, ((int) (f2 / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        f2 /= (float) (min - 1);
        int i2 = 0;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        int i3 = i2;
        while (true) {
            float[] fArr4 = null;
            if (i3 >= min) {
                break;
            }
            pathMeasure.getPosTan(f3, fArr3, null);
            fArr[i3] = fArr3[i];
            fArr2[i3] = fArr3[1];
            f3 += f2;
            int i4 = i2 + 1;
            if (i4 < arrayList.size() && f3 > ((Float) arrayList.get(i4)).floatValue()) {
                f3 -= ((Float) arrayList.get(i4)).floatValue();
                pathMeasure.nextContour();
                i2 = i4;
            }
            i3++;
            i = 0;
        }
        PropertyValuesHolder ofFloat = str3 != null ? PropertyValuesHolder.ofFloat(str3, fArr) : null;
        if (str4 != null) {
            fArr4 = PropertyValuesHolder.ofFloat(str4, fArr2);
        }
        if (ofFloat == null) {
            objectAnimator2.setValues(new PropertyValuesHolder[]{fArr4});
        } else if (fArr4 == null) {
            objectAnimator2.setValues(new PropertyValuesHolder[]{ofFloat});
        } else {
            objectAnimator2.setValues(new PropertyValuesHolder[]{ofFloat, fArr4});
        }
    }

    private static Animator createAnimatorFromXml(Context context, Resources resources, Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
        Resources resources2 = resources;
        Theme theme2 = theme;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        AttributeSet attributeSet2 = attributeSet;
        AnimatorSet animatorSet2 = animatorSet;
        int depth = xmlPullParser.getDepth();
        Animator animator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            int i2 = 0;
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                break;
            }
            int i3 = 1;
            if (next == 1) {
                break;
            } else if (next == 2) {
                String name = xmlPullParser.getName();
                Animator objectAnimator;
                if (name.equals("objectAnimator")) {
                    objectAnimator = new ObjectAnimator();
                    loadAnimator(context, resources2, theme2, attributeSet2, objectAnimator, f, xmlPullParser2);
                    r3 = context;
                    animator = objectAnimator;
                } else if (name.equals("animator")) {
                    animator = loadAnimator(context, resources2, theme2, attributeSet2, null, f, xmlPullParser2);
                    r3 = context;
                } else if (name.equals("set")) {
                    TypedArray obtainAttributes;
                    objectAnimator = new AnimatorSet();
                    int[] iArr = AndroidResources.STYLEABLE_ANIMATOR_SET;
                    if (theme2 == null) {
                        obtainAttributes = resources2.obtainAttributes(attributeSet2, iArr);
                    } else {
                        obtainAttributes = theme2.obtainStyledAttributes(attributeSet2, iArr, 0, 0);
                    }
                    TypedArray typedArray = obtainAttributes;
                    if (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "ordering") == null) {
                        i3 = 0;
                    }
                    TypedArray typedArray2 = typedArray;
                    int i4 = i3 == 0 ? 0 : typedArray.getInt(0, 0);
                    Animator animator2 = objectAnimator;
                    createAnimatorFromXml(context, resources2, theme2, xmlPullParser2, attributeSet2, (AnimatorSet) objectAnimator, i4, f);
                    typedArray2.recycle();
                    r3 = context;
                    animator = animator2;
                    i2 = 0;
                } else if (name.equals("propertyValuesHolder")) {
                    PropertyValuesHolder[] loadValues = loadValues(context, resources2, theme2, xmlPullParser2, Xml.asAttributeSet(xmlPullParser));
                    if (!(loadValues == null || animator == null || !(animator instanceof ValueAnimator))) {
                        ((ValueAnimator) animator).setValues(loadValues);
                    }
                    i2 = 1;
                } else {
                    StringBuilder stringBuilder = new StringBuilder("Unknown animator name: ");
                    stringBuilder.append(xmlPullParser.getName());
                    throw new RuntimeException(stringBuilder.toString());
                }
                if (animatorSet2 != null && r15 == 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(animator);
                }
            } else {
                r3 = context;
            }
        }
        if (!(animatorSet2 == null || arrayList == null)) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                int i6 = i5 + 1;
                animatorArr[i5] = (Animator) it.next();
                i5 = i6;
            }
            if (i == 0) {
                animatorSet2.playTogether(animatorArr);
            } else {
                animatorSet2.playSequentially(animatorArr);
            }
        }
        return animator;
    }

    private static PropertyValuesHolder[] loadValues(Context context, Resources resources, Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Resources resources2 = resources;
        Theme theme2 = theme;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        AttributeSet attributeSet2 = attributeSet;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            int i = 3;
            int i2 = 0;
            if (eventType != 3) {
                int i3 = 1;
                if (eventType != 1) {
                    if (eventType != 2) {
                        xmlPullParser.next();
                    } else {
                        Context context2;
                        if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                            TypedArray obtainAttributes;
                            int[] iArr = AndroidResources.STYLEABLE_PROPERTY_VALUES_HOLDER;
                            if (theme2 == null) {
                                obtainAttributes = resources2.obtainAttributes(attributeSet2, iArr);
                            } else {
                                obtainAttributes = theme2.obtainStyledAttributes(attributeSet2, iArr, 0, 0);
                            }
                            String string = (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "propertyName") != null ? 1 : 0) == 0 ? null : obtainAttributes.getString(3);
                            int i4 = 4;
                            int i5 = (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? 1 : 0) == 0 ? 4 : obtainAttributes.getInt(2, 4);
                            int i6 = i5;
                            ArrayList arrayList2 = null;
                            while (true) {
                                int next = xmlPullParser.next();
                                Keyframe keyframe;
                                if (next == i || next == r9) {
                                    Object ofKeyframe;
                                    context2 = context;
                                    if (arrayList2 != null) {
                                        int size = arrayList2.size();
                                        if (size > 0) {
                                            Keyframe keyframe2 = (Keyframe) arrayList2.get(0);
                                            keyframe = (Keyframe) arrayList2.get(size - 1);
                                            float fraction = keyframe.getFraction();
                                            if (fraction < 1.0f) {
                                                if (fraction < BitmapDescriptorFactory.HUE_RED) {
                                                    keyframe.setFraction(1.0f);
                                                } else {
                                                    arrayList2.add(arrayList2.size(), createNewKeyframe(keyframe, 1.0f));
                                                    size++;
                                                }
                                            }
                                            float fraction2 = keyframe2.getFraction();
                                            if (fraction2 != BitmapDescriptorFactory.HUE_RED) {
                                                if (fraction2 < BitmapDescriptorFactory.HUE_RED) {
                                                    keyframe2.setFraction(BitmapDescriptorFactory.HUE_RED);
                                                } else {
                                                    arrayList2.add(0, createNewKeyframe(keyframe2, BitmapDescriptorFactory.HUE_RED));
                                                    size++;
                                                }
                                            }
                                            Keyframe[] keyframeArr = new Keyframe[size];
                                            arrayList2.toArray(keyframeArr);
                                            i2 = 0;
                                            while (i2 < size) {
                                                Keyframe keyframe3 = keyframeArr[i2];
                                                if (keyframe3.getFraction() < BitmapDescriptorFactory.HUE_RED) {
                                                    if (i2 == 0) {
                                                        keyframe3.setFraction(BitmapDescriptorFactory.HUE_RED);
                                                    } else {
                                                        i4 = size - 1;
                                                        if (i2 == i4) {
                                                            keyframe3.setFraction(1.0f);
                                                        } else {
                                                            int i7 = i2 + 1;
                                                            next = i2;
                                                            while (i7 < i4) {
                                                                if (keyframeArr[i7].getFraction() < BitmapDescriptorFactory.HUE_RED) {
                                                                    next = i7;
                                                                    i7++;
                                                                    resources2 = resources;
                                                                } else {
                                                                    distributeKeyframes(keyframeArr, keyframeArr[next + 1].getFraction() - keyframeArr[i2 - 1].getFraction(), i2, next);
                                                                }
                                                            }
                                                            distributeKeyframes(keyframeArr, keyframeArr[next + 1].getFraction() - keyframeArr[i2 - 1].getFraction(), i2, next);
                                                        }
                                                        i2++;
                                                        resources2 = resources;
                                                    }
                                                }
                                                float f = BitmapDescriptorFactory.HUE_RED;
                                                i2++;
                                                resources2 = resources;
                                            }
                                            ofKeyframe = PropertyValuesHolder.ofKeyframe(string, keyframeArr);
                                            if (i6 == 3) {
                                                ofKeyframe.setEvaluator(ArgbEvaluator.getInstance());
                                            }
                                            if (ofKeyframe == null) {
                                                ofKeyframe = getPVH(obtainAttributes, i5, 0, 1, string);
                                            }
                                            if (ofKeyframe != null) {
                                                if (arrayList == null) {
                                                    arrayList = new ArrayList();
                                                }
                                                arrayList.add(ofKeyframe);
                                            }
                                            obtainAttributes.recycle();
                                        }
                                    }
                                    ofKeyframe = null;
                                    if (ofKeyframe == null) {
                                        ofKeyframe = getPVH(obtainAttributes, i5, 0, 1, string);
                                    }
                                    if (ofKeyframe != null) {
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(ofKeyframe);
                                    }
                                    obtainAttributes.recycle();
                                } else {
                                    if (xmlPullParser.getName().equals("keyframe")) {
                                        TypedArray obtainAttributes2;
                                        if (i6 == i4) {
                                            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                                            int[] iArr2 = AndroidResources.STYLEABLE_KEYFRAME;
                                            if (theme2 == null) {
                                                obtainAttributes2 = resources2.obtainAttributes(asAttributeSet, iArr2);
                                            } else {
                                                obtainAttributes2 = theme2.obtainStyledAttributes(asAttributeSet, iArr2, i2, i2);
                                            }
                                            TypedValue peekValue = (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? 1 : i2) == 0 ? null : obtainAttributes2.peekValue(i2);
                                            if ((peekValue != null ? 1 : i2) != 0) {
                                                i4 = peekValue.type;
                                                i4 = (i4 < 28 || i4 > 31) ? i2 : 1;
                                                if (i4 != 0) {
                                                    i4 = i;
                                                    obtainAttributes2.recycle();
                                                }
                                            }
                                            i4 = i2;
                                            obtainAttributes2.recycle();
                                        } else {
                                            i4 = i6;
                                        }
                                        AttributeSet asAttributeSet2 = Xml.asAttributeSet(xmlPullParser);
                                        int[] iArr3 = AndroidResources.STYLEABLE_KEYFRAME;
                                        if (theme2 == null) {
                                            obtainAttributes2 = resources2.obtainAttributes(asAttributeSet2, iArr3);
                                        } else {
                                            obtainAttributes2 = theme2.obtainStyledAttributes(asAttributeSet2, iArr3, i2, i2);
                                        }
                                        float f2 = -1.0f;
                                        if ((xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "fraction") != null ? 1 : i2) != 0) {
                                            f2 = obtainAttributes2.getFloat(i, -1.0f);
                                        }
                                        TypedValue peekValue2 = (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? 1 : i2) == 0 ? null : obtainAttributes2.peekValue(i2);
                                        if (peekValue2 != null) {
                                            i2 = 4;
                                            i3 = 1;
                                        } else {
                                            i3 = i2;
                                            i2 = 4;
                                        }
                                        if (i4 == i2) {
                                            if (i3 != 0) {
                                                i = peekValue2.type;
                                                Object obj = (i < 28 || i > 31) ? null : 1;
                                                if (obj != null) {
                                                    i = 3;
                                                }
                                            }
                                            i = 0;
                                        } else {
                                            i = i4;
                                        }
                                        if (i3 != 0) {
                                            if (i != 3) {
                                                switch (i) {
                                                    case 0:
                                                        keyframe = Keyframe.ofFloat(f2, (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? 1 : null) == null ? BitmapDescriptorFactory.HUE_RED : obtainAttributes2.getFloat(0, BitmapDescriptorFactory.HUE_RED));
                                                        break;
                                                    case 1:
                                                        break;
                                                    default:
                                                        keyframe = null;
                                                        break;
                                                }
                                            }
                                            keyframe = Keyframe.ofInt(f2, (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "value") != null ? 1 : null) == null ? 0 : obtainAttributes2.getInt(0, 0));
                                        } else if (i == 0) {
                                            keyframe = Keyframe.ofFloat(f2);
                                        } else {
                                            keyframe = Keyframe.ofInt(f2);
                                        }
                                        next = (xmlPullParser2.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? 1 : null) == null ? 0 : obtainAttributes2.getResourceId(1, 0);
                                        if (next > 0) {
                                            keyframe.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, next));
                                        } else {
                                            context2 = context;
                                        }
                                        obtainAttributes2.recycle();
                                        if (keyframe != null) {
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            arrayList2.add(keyframe);
                                        }
                                        xmlPullParser.next();
                                        i6 = i4;
                                    } else {
                                        context2 = context;
                                        i2 = i4;
                                    }
                                    i4 = i2;
                                    i = 3;
                                    i2 = 0;
                                    i3 = 1;
                                }
                            }
                        } else {
                            context2 = context;
                        }
                        xmlPullParser.next();
                        resources2 = resources;
                    }
                }
            }
            if (arrayList == null) {
                return null;
            }
            int size2 = arrayList.size();
            PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[size2];
            for (i = 0; i < size2; i++) {
                propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList.get(i);
            }
            return propertyValuesHolderArr;
        }
    }

    private static Keyframe createNewKeyframe(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    private static void distributeKeyframes(Keyframe[] keyframeArr, float f, int i, int i2) {
        f /= (float) ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f);
            i++;
        }
    }

    private static ValueAnimator loadAnimator(Context context, Resources resources, Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws NotFoundException {
        TypedArray obtainAttributes;
        int[] iArr = AndroidResources.STYLEABLE_ANIMATOR;
        int i = 0;
        if (theme == null) {
            obtainAttributes = resources.obtainAttributes(attributeSet, iArr);
        } else {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        }
        int[] iArr2 = AndroidResources.STYLEABLE_PROPERTY_ANIMATOR;
        if (theme == null) {
            resources = resources.obtainAttributes(attributeSet, iArr2);
        } else {
            resources = theme.obtainStyledAttributes(attributeSet, iArr2, 0, 0);
        }
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        parseAnimatorFromTypeArray(valueAnimator, obtainAttributes, resources, f, xmlPullParser);
        if ((xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? true : null) != null) {
            i = obtainAttributes.getResourceId(0, 0);
        }
        if (i > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, i));
        }
        obtainAttributes.recycle();
        if (resources != null) {
            resources.recycle();
        }
        return valueAnimator;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void parseAnimatorFromTypeArray(android.animation.ValueAnimator r19, android.content.res.TypedArray r20, android.content.res.TypedArray r21, float r22, org.xmlpull.v1.XmlPullParser r23) {
        /*
        r0 = r19;
        r1 = r20;
        r2 = r21;
        r3 = r23;
        r4 = "duration";
        r5 = "http://schemas.android.com/apk/res/android";
        r4 = r3.getAttributeValue(r5, r4);
        r5 = 1;
        r6 = 0;
        if (r4 == 0) goto L_0x0016;
    L_0x0014:
        r4 = r5;
        goto L_0x0017;
    L_0x0016:
        r4 = r6;
    L_0x0017:
        r7 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r4 != 0) goto L_0x001c;
    L_0x001b:
        goto L_0x0020;
    L_0x001c:
        r7 = r1.getInt(r5, r7);
    L_0x0020:
        r7 = (long) r7;
        r4 = "startOffset";
        r9 = "http://schemas.android.com/apk/res/android";
        r4 = r3.getAttributeValue(r9, r4);
        if (r4 == 0) goto L_0x002d;
    L_0x002b:
        r4 = r5;
        goto L_0x002e;
    L_0x002d:
        r4 = r6;
    L_0x002e:
        r9 = 2;
        if (r4 != 0) goto L_0x0033;
    L_0x0031:
        r4 = r6;
        goto L_0x0037;
    L_0x0033:
        r4 = r1.getInt(r9, r6);
    L_0x0037:
        r10 = (long) r4;
        r4 = "valueType";
        r12 = "http://schemas.android.com/apk/res/android";
        r4 = r3.getAttributeValue(r12, r4);
        if (r4 == 0) goto L_0x0044;
    L_0x0042:
        r4 = r5;
        goto L_0x0045;
    L_0x0044:
        r4 = r6;
    L_0x0045:
        r12 = 4;
        if (r4 != 0) goto L_0x004a;
    L_0x0048:
        r4 = r12;
        goto L_0x004f;
    L_0x004a:
        r4 = 7;
        r4 = r1.getInt(r4, r12);
    L_0x004f:
        r13 = "valueFrom";
        r14 = "http://schemas.android.com/apk/res/android";
        r13 = r3.getAttributeValue(r14, r13);
        if (r13 == 0) goto L_0x005b;
    L_0x0059:
        r13 = r5;
        goto L_0x005c;
    L_0x005b:
        r13 = r6;
    L_0x005c:
        if (r13 == 0) goto L_0x00bf;
    L_0x005e:
        r13 = "valueTo";
        r15 = "http://schemas.android.com/apk/res/android";
        r13 = r3.getAttributeValue(r15, r13);
        if (r13 == 0) goto L_0x006a;
    L_0x0068:
        r13 = r5;
        goto L_0x006b;
    L_0x006a:
        r13 = r6;
    L_0x006b:
        if (r13 == 0) goto L_0x00bf;
    L_0x006d:
        r13 = 6;
        r15 = 5;
        if (r4 != r12) goto L_0x00b0;
    L_0x0071:
        r4 = r1.peekValue(r15);
        if (r4 == 0) goto L_0x007a;
    L_0x0077:
        r16 = r5;
        goto L_0x007c;
    L_0x007a:
        r16 = r6;
    L_0x007c:
        if (r16 == 0) goto L_0x0081;
    L_0x007e:
        r4 = r4.type;
        goto L_0x0082;
    L_0x0081:
        r4 = r6;
    L_0x0082:
        r9 = r1.peekValue(r13);
        if (r9 == 0) goto L_0x008b;
    L_0x0088:
        r17 = r5;
        goto L_0x008d;
    L_0x008b:
        r17 = r6;
    L_0x008d:
        if (r17 == 0) goto L_0x0092;
    L_0x008f:
        r9 = r9.type;
        goto L_0x0093;
    L_0x0092:
        r9 = r6;
    L_0x0093:
        r12 = 31;
        r14 = 28;
        if (r16 == 0) goto L_0x00a2;
    L_0x0099:
        if (r4 < r14) goto L_0x009f;
    L_0x009b:
        if (r4 > r12) goto L_0x009f;
    L_0x009d:
        r4 = r5;
        goto L_0x00a0;
    L_0x009f:
        r4 = r6;
    L_0x00a0:
        if (r4 != 0) goto L_0x00ad;
    L_0x00a2:
        if (r17 == 0) goto L_0x00af;
    L_0x00a4:
        if (r9 < r14) goto L_0x00aa;
    L_0x00a6:
        if (r9 > r12) goto L_0x00aa;
    L_0x00a8:
        r4 = r5;
        goto L_0x00ab;
    L_0x00aa:
        r4 = r6;
    L_0x00ab:
        if (r4 == 0) goto L_0x00af;
    L_0x00ad:
        r4 = 3;
        goto L_0x00b0;
    L_0x00af:
        r4 = r6;
    L_0x00b0:
        r9 = "";
        r4 = getPVH(r1, r4, r15, r13, r9);
        if (r4 == 0) goto L_0x00bf;
    L_0x00b8:
        r9 = new android.animation.PropertyValuesHolder[r5];
        r9[r6] = r4;
        r0.setValues(r9);
    L_0x00bf:
        r0.setDuration(r7);
        r0.setStartDelay(r10);
        r4 = "repeatCount";
        r7 = "http://schemas.android.com/apk/res/android";
        r4 = r3.getAttributeValue(r7, r4);
        if (r4 == 0) goto L_0x00d1;
    L_0x00cf:
        r4 = r5;
        goto L_0x00d2;
    L_0x00d1:
        r4 = r6;
    L_0x00d2:
        if (r4 != 0) goto L_0x00d6;
    L_0x00d4:
        r7 = r6;
        goto L_0x00db;
    L_0x00d6:
        r4 = 3;
        r7 = r1.getInt(r4, r6);
    L_0x00db:
        r0.setRepeatCount(r7);
        r4 = "repeatMode";
        r7 = "http://schemas.android.com/apk/res/android";
        r4 = r3.getAttributeValue(r7, r4);
        if (r4 == 0) goto L_0x00ea;
    L_0x00e8:
        r4 = r5;
        goto L_0x00eb;
    L_0x00ea:
        r4 = r6;
    L_0x00eb:
        if (r4 != 0) goto L_0x00ef;
    L_0x00ed:
        r1 = r5;
        goto L_0x00f4;
    L_0x00ef:
        r4 = 4;
        r1 = r1.getInt(r4, r5);
    L_0x00f4:
        r0.setRepeatMode(r1);
        if (r2 == 0) goto L_0x017e;
    L_0x00f9:
        r0 = (android.animation.ObjectAnimator) r0;
        r1 = "pathData";
        r4 = "http://schemas.android.com/apk/res/android";
        r1 = r3.getAttributeValue(r4, r1);
        if (r1 == 0) goto L_0x0107;
    L_0x0105:
        r1 = r5;
        goto L_0x0108;
    L_0x0107:
        r1 = r6;
    L_0x0108:
        r4 = 0;
        if (r1 != 0) goto L_0x010d;
    L_0x010b:
        r1 = r4;
        goto L_0x0111;
    L_0x010d:
        r1 = r2.getString(r5);
    L_0x0111:
        if (r1 == 0) goto L_0x0168;
    L_0x0113:
        r7 = "propertyXName";
        r8 = "http://schemas.android.com/apk/res/android";
        r7 = r3.getAttributeValue(r8, r7);
        if (r7 == 0) goto L_0x011f;
    L_0x011d:
        r7 = r5;
        goto L_0x0120;
    L_0x011f:
        r7 = r6;
    L_0x0120:
        if (r7 != 0) goto L_0x0124;
    L_0x0122:
        r7 = r4;
        goto L_0x0129;
    L_0x0124:
        r7 = 2;
        r7 = r2.getString(r7);
    L_0x0129:
        r8 = "propertyYName";
        r9 = "http://schemas.android.com/apk/res/android";
        r3 = r3.getAttributeValue(r9, r8);
        if (r3 == 0) goto L_0x0134;
    L_0x0133:
        goto L_0x0135;
    L_0x0134:
        r5 = r6;
    L_0x0135:
        if (r5 != 0) goto L_0x0138;
    L_0x0137:
        goto L_0x013d;
    L_0x0138:
        r3 = 3;
        r4 = r2.getString(r3);
    L_0x013d:
        if (r7 != 0) goto L_0x015c;
    L_0x013f:
        if (r4 != 0) goto L_0x015c;
    L_0x0141:
        r0 = new android.view.InflateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r21.getPositionDescription();
        r1.append(r2);
        r2 = " propertyXName or propertyYName is needed for PathData";
        r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x015c:
        r1 = android.support.v4.graphics.PathParser.createPathFromPathData(r1);
        r2 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r2 = r2 * r22;
        setupPathMotion(r1, r0, r2, r7, r4);
        return;
    L_0x0168:
        r1 = "propertyName";
        r7 = "http://schemas.android.com/apk/res/android";
        r1 = r3.getAttributeValue(r7, r1);
        if (r1 == 0) goto L_0x0173;
    L_0x0172:
        goto L_0x0174;
    L_0x0173:
        r5 = r6;
    L_0x0174:
        if (r5 != 0) goto L_0x0177;
    L_0x0176:
        goto L_0x017b;
    L_0x0177:
        r4 = r2.getString(r6);
    L_0x017b:
        r0.setPropertyName(r4);
    L_0x017e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.AnimatorInflaterCompat.parseAnimatorFromTypeArray(android.animation.ValueAnimator, android.content.res.TypedArray, android.content.res.TypedArray, float, org.xmlpull.v1.XmlPullParser):void");
    }

    public AnimatorInflaterCompat(BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this(new VideoBitmapDecoder(), bitmapPool, decodeFormat);
    }

    public AnimatorInflaterCompat(VideoBitmapDecoder videoBitmapDecoder, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.bitmapDecoder = videoBitmapDecoder;
        this.bitmapPool = bitmapPool;
        this.decodeFormat = decodeFormat;
    }

    public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2) throws IOException {
        obj = this.bitmapDecoder.decode$5e836846((ParcelFileDescriptor) obj);
        return obj == null ? null : new style(obj, this.bitmapPool);
    }
}
