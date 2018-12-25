package com.nineoldandroids.animation;

import android.support.v7.cardview.C0943R;
import android.support.v7.cardview.C0943R.attr;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.util.IntProperty;
import com.nineoldandroids.util.Property;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class PropertyValuesHolder implements Cloneable {
    private static Class[] DOUBLE_VARIANTS = new Class[]{Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
    private static Class[] FLOAT_VARIANTS = new Class[]{Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
    private static Class[] INTEGER_VARIANTS = new Class[]{Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
    private static final TypeEvaluator sFloatEvaluator = new C0943R();
    private static final HashMap<Class, HashMap<String, Method>> sGetterPropertyMap = new HashMap();
    private static final TypeEvaluator sIntEvaluator = new attr();
    private static final HashMap<Class, HashMap<String, Method>> sSetterPropertyMap = new HashMap();
    private Object mAnimatedValue;
    private TypeEvaluator mEvaluator;
    private Method mGetter;
    KeyframeSet mKeyframeSet;
    protected Property mProperty;
    final ReentrantReadWriteLock mPropertyMapLock;
    String mPropertyName;
    Method mSetter;
    final Object[] mTmpValueArray;
    Class mValueType;

    static class FloatPropertyValuesHolder extends PropertyValuesHolder {
        float mFloatAnimatedValue;
        FloatKeyframeSet mFloatKeyframeSet = ((FloatKeyframeSet) this.mKeyframeSet);
        private FloatProperty mFloatProperty;

        public FloatPropertyValuesHolder(String str, float... fArr) {
            super(str);
            super.setFloatValues(fArr);
        }

        public FloatPropertyValuesHolder(Property property, float... fArr) {
            super(property);
            super.setFloatValues(fArr);
            if ((property instanceof FloatProperty) != null) {
                this.mFloatProperty = (FloatProperty) this.mProperty;
            }
        }

        public final void setFloatValues(float... fArr) {
            super.setFloatValues(fArr);
            this.mFloatKeyframeSet = (FloatKeyframeSet) this.mKeyframeSet;
        }

        final void calculateValue(float f) {
            this.mFloatAnimatedValue = this.mFloatKeyframeSet.getFloatValue(f);
        }

        final Object getAnimatedValue() {
            return Float.valueOf(this.mFloatAnimatedValue);
        }

        final void setAnimatedValue(Object obj) {
            if (this.mFloatProperty != null) {
                this.mFloatProperty.setValue(obj, this.mFloatAnimatedValue);
            } else if (this.mProperty != null) {
                this.mProperty.set(obj, Float.valueOf(this.mFloatAnimatedValue));
            } else {
                if (this.mSetter != null) {
                    try {
                        this.mTmpValueArray[0] = Float.valueOf(this.mFloatAnimatedValue);
                        this.mSetter.invoke(obj, this.mTmpValueArray);
                    } catch (Object obj2) {
                        Log.e("PropertyValuesHolder", obj2.toString());
                    } catch (Object obj22) {
                        Log.e("PropertyValuesHolder", obj22.toString());
                    }
                }
            }
        }

        final void setupSetter(Class cls) {
            if (this.mProperty == null) {
                super.setupSetter(cls);
            }
        }
    }

    static class IntPropertyValuesHolder extends PropertyValuesHolder {
        int mIntAnimatedValue;
        IntKeyframeSet mIntKeyframeSet = ((IntKeyframeSet) this.mKeyframeSet);
        private IntProperty mIntProperty;

        public IntPropertyValuesHolder(String str, int... iArr) {
            super(str);
            super.setIntValues(iArr);
        }

        public IntPropertyValuesHolder(Property property, int... iArr) {
            super(property);
            super.setIntValues(iArr);
            if ((property instanceof IntProperty) != null) {
                this.mIntProperty = (IntProperty) this.mProperty;
            }
        }

        public final void setIntValues(int... iArr) {
            super.setIntValues(iArr);
            this.mIntKeyframeSet = (IntKeyframeSet) this.mKeyframeSet;
        }

        final void calculateValue(float f) {
            this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(f);
        }

        final Object getAnimatedValue() {
            return Integer.valueOf(this.mIntAnimatedValue);
        }

        final void setAnimatedValue(Object obj) {
            if (this.mIntProperty != null) {
                this.mIntProperty.setValue(obj, this.mIntAnimatedValue);
            } else if (this.mProperty != null) {
                this.mProperty.set(obj, Integer.valueOf(this.mIntAnimatedValue));
            } else {
                if (this.mSetter != null) {
                    try {
                        this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
                        this.mSetter.invoke(obj, this.mTmpValueArray);
                    } catch (Object obj2) {
                        Log.e("PropertyValuesHolder", obj2.toString());
                    } catch (Object obj22) {
                        Log.e("PropertyValuesHolder", obj22.toString());
                    }
                }
            }
        }

        final void setupSetter(Class cls) {
            if (this.mProperty == null) {
                super.setupSetter(cls);
            }
        }
    }

    private PropertyValuesHolder(String str) {
        this.mSetter = null;
        this.mGetter = null;
        this.mKeyframeSet = null;
        this.mPropertyMapLock = new ReentrantReadWriteLock();
        this.mTmpValueArray = new Object[1];
        this.mPropertyName = str;
    }

    private PropertyValuesHolder(Property property) {
        this.mSetter = null;
        this.mGetter = null;
        this.mKeyframeSet = null;
        this.mPropertyMapLock = new ReentrantReadWriteLock();
        this.mTmpValueArray = new Object[1];
        this.mProperty = property;
        if (property != null) {
            this.mPropertyName = property.getName();
        }
    }

    public static PropertyValuesHolder ofInt(String str, int... iArr) {
        return new IntPropertyValuesHolder(str, iArr);
    }

    public static PropertyValuesHolder ofInt(Property<?, Integer> property, int... iArr) {
        return new IntPropertyValuesHolder((Property) property, iArr);
    }

    public static PropertyValuesHolder ofFloat(String str, float... fArr) {
        return new FloatPropertyValuesHolder(str, fArr);
    }

    public static PropertyValuesHolder ofFloat(Property<?, Float> property, float... fArr) {
        return new FloatPropertyValuesHolder((Property) property, fArr);
    }

    public void setIntValues(int... iArr) {
        this.mValueType = Integer.TYPE;
        int i = 1;
        int length = iArr.length;
        IntKeyframe[] intKeyframeArr = new IntKeyframe[Math.max(length, 2)];
        if (length == 1) {
            intKeyframeArr[0] = new IntKeyframe();
            intKeyframeArr[1] = new IntKeyframe(1.0f, iArr[0]);
        } else {
            intKeyframeArr[0] = new IntKeyframe(BitmapDescriptorFactory.HUE_RED, iArr[0]);
            while (i < length) {
                intKeyframeArr[i] = new IntKeyframe(((float) i) / ((float) (length - 1)), iArr[i]);
                i++;
            }
        }
        this.mKeyframeSet = new IntKeyframeSet(intKeyframeArr);
    }

    public void setFloatValues(float... fArr) {
        this.mValueType = Float.TYPE;
        int i = 1;
        int length = fArr.length;
        FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[Math.max(length, 2)];
        if (length == 1) {
            floatKeyframeArr[0] = new FloatKeyframe();
            floatKeyframeArr[1] = new FloatKeyframe(1.0f, fArr[0]);
        } else {
            floatKeyframeArr[0] = new FloatKeyframe(BitmapDescriptorFactory.HUE_RED, fArr[0]);
            while (i < length) {
                floatKeyframeArr[i] = new FloatKeyframe(((float) i) / ((float) (length - 1)), fArr[i]);
                i++;
            }
        }
        this.mKeyframeSet = new FloatKeyframeSet(floatKeyframeArr);
    }

    private java.lang.reflect.Method getPropertyFunction(java.lang.Class r9, java.lang.String r10, java.lang.Class r11) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r8 = this;
        r0 = r8.mPropertyName;
        r1 = 0;
        r2 = 1;
        if (r0 == 0) goto L_0x002b;
    L_0x0006:
        r3 = r0.length();
        if (r3 != 0) goto L_0x000d;
    L_0x000c:
        goto L_0x002b;
    L_0x000d:
        r3 = r0.charAt(r1);
        r3 = java.lang.Character.toUpperCase(r3);
        r0 = r0.substring(r2);
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r4.append(r10);
        r4.append(r3);
        r4.append(r0);
        r10 = r4.toString();
    L_0x002b:
        r0 = 0;
        if (r11 != 0) goto L_0x005f;
    L_0x002e:
        r11 = r9.getMethod(r10, r0);	 Catch:{ NoSuchMethodException -> 0x0035 }
        r9 = r11;
        goto L_0x00cd;
    L_0x0035:
        r11 = move-exception;
        r9 = r9.getDeclaredMethod(r10, r0);	 Catch:{ NoSuchMethodException -> 0x003f }
        r9.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x0040 }
        goto L_0x00cd;
    L_0x003f:
        r9 = r0;
    L_0x0040:
        r10 = "PropertyValuesHolder";
        r0 = new java.lang.StringBuilder;
        r1 = "Couldn't find no-arg method for property ";
        r0.<init>(r1);
        r1 = r8.mPropertyName;
        r0.append(r1);
        r1 = ": ";
        r0.append(r1);
        r0.append(r11);
        r11 = r0.toString();
        android.util.Log.e(r10, r11);
        goto L_0x00cd;
    L_0x005f:
        r11 = new java.lang.Class[r2];
        r3 = r8.mValueType;
        r4 = java.lang.Float.class;
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x006e;
    L_0x006b:
        r3 = FLOAT_VARIANTS;
        goto L_0x008e;
    L_0x006e:
        r3 = r8.mValueType;
        r4 = java.lang.Integer.class;
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x007b;
    L_0x0078:
        r3 = INTEGER_VARIANTS;
        goto L_0x008e;
    L_0x007b:
        r3 = r8.mValueType;
        r4 = java.lang.Double.class;
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0088;
    L_0x0085:
        r3 = DOUBLE_VARIANTS;
        goto L_0x008e;
    L_0x0088:
        r3 = new java.lang.Class[r2];
        r4 = r8.mValueType;
        r3[r1] = r4;
    L_0x008e:
        r4 = r3.length;
        r5 = r0;
        r0 = r1;
    L_0x0091:
        if (r0 >= r4) goto L_0x00ad;
    L_0x0093:
        r6 = r3[r0];
        r11[r1] = r6;
        r7 = r9.getMethod(r10, r11);	 Catch:{ NoSuchMethodException -> 0x009f }
        r8.mValueType = r6;	 Catch:{ NoSuchMethodException -> 0x009e }
        return r7;
    L_0x009e:
        r5 = r7;
    L_0x009f:
        r7 = r9.getDeclaredMethod(r10, r11);	 Catch:{ NoSuchMethodException -> 0x00aa }
        r7.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x00a9 }
        r8.mValueType = r6;	 Catch:{ NoSuchMethodException -> 0x00a9 }
        return r7;
    L_0x00a9:
        r5 = r7;
    L_0x00aa:
        r0 = r0 + 1;
        goto L_0x0091;
    L_0x00ad:
        r9 = "PropertyValuesHolder";
        r10 = new java.lang.StringBuilder;
        r11 = "Couldn't find setter/getter for property ";
        r10.<init>(r11);
        r11 = r8.mPropertyName;
        r10.append(r11);
        r11 = " with value type ";
        r10.append(r11);
        r11 = r8.mValueType;
        r10.append(r11);
        r10 = r10.toString();
        android.util.Log.e(r9, r10);
        r9 = r5;
    L_0x00cd:
        return r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.animation.PropertyValuesHolder.getPropertyFunction(java.lang.Class, java.lang.String, java.lang.Class):java.lang.reflect.Method");
    }

    private Method setupSetterOrGetter(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        try {
            this.mPropertyMapLock.writeLock().lock();
            HashMap hashMap2 = (HashMap) hashMap.get(cls);
            Method method = hashMap2 != null ? (Method) hashMap2.get(this.mPropertyName) : null;
            if (method == null) {
                method = getPropertyFunction(cls, str, cls2);
                if (hashMap2 == null) {
                    hashMap2 = new HashMap();
                    hashMap.put(cls, hashMap2);
                }
                hashMap2.put(this.mPropertyName, method);
            }
            this.mPropertyMapLock.writeLock().unlock();
            return method;
        } catch (Throwable th) {
            this.mPropertyMapLock.writeLock().unlock();
        }
    }

    void setupSetter(Class cls) {
        this.mSetter = setupSetterOrGetter(cls, sSetterPropertyMap, "set", this.mValueType);
    }

    final void setupSetterAndGetter(java.lang.Object r7) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r6 = this;
        r0 = r6.mProperty;
        r1 = 0;
        if (r0 == 0) goto L_0x0055;
    L_0x0005:
        r0 = r6.mProperty;	 Catch:{ ClassCastException -> 0x002d }
        r0.get(r7);	 Catch:{ ClassCastException -> 0x002d }
        r0 = r6.mKeyframeSet;	 Catch:{ ClassCastException -> 0x002d }
        r0 = r0.mKeyframes;	 Catch:{ ClassCastException -> 0x002d }
        r0 = r0.iterator();	 Catch:{ ClassCastException -> 0x002d }
    L_0x0012:
        r2 = r0.hasNext();	 Catch:{ ClassCastException -> 0x002d }
        if (r2 == 0) goto L_0x002c;	 Catch:{ ClassCastException -> 0x002d }
    L_0x0018:
        r2 = r0.next();	 Catch:{ ClassCastException -> 0x002d }
        r2 = (com.nineoldandroids.animation.Keyframe) r2;	 Catch:{ ClassCastException -> 0x002d }
        r3 = r2.mHasValue;	 Catch:{ ClassCastException -> 0x002d }
        if (r3 != 0) goto L_0x0012;	 Catch:{ ClassCastException -> 0x002d }
    L_0x0022:
        r3 = r6.mProperty;	 Catch:{ ClassCastException -> 0x002d }
        r3 = r3.get(r7);	 Catch:{ ClassCastException -> 0x002d }
        r2.setValue(r3);	 Catch:{ ClassCastException -> 0x002d }
        goto L_0x0012;
    L_0x002c:
        return;
    L_0x002d:
        r0 = "PropertyValuesHolder";
        r2 = new java.lang.StringBuilder;
        r3 = "No such property (";
        r2.<init>(r3);
        r3 = r6.mProperty;
        r3 = r3.getName();
        r2.append(r3);
        r3 = ") on target object ";
        r2.append(r3);
        r2.append(r7);
        r3 = ". Trying reflection instead";
        r2.append(r3);
        r2 = r2.toString();
        android.util.Log.e(r0, r2);
        r6.mProperty = r1;
    L_0x0055:
        r0 = r7.getClass();
        r2 = r6.mSetter;
        if (r2 != 0) goto L_0x0060;
    L_0x005d:
        r6.setupSetter(r0);
    L_0x0060:
        r2 = r6.mKeyframeSet;
        r2 = r2.mKeyframes;
        r2 = r2.iterator();
    L_0x0068:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x00a9;
    L_0x006e:
        r3 = r2.next();
        r3 = (com.nineoldandroids.animation.Keyframe) r3;
        r4 = r3.mHasValue;
        if (r4 != 0) goto L_0x0068;
    L_0x0078:
        r4 = r6.mGetter;
        if (r4 != 0) goto L_0x0086;
    L_0x007c:
        r4 = sGetterPropertyMap;
        r5 = "get";
        r4 = r6.setupSetterOrGetter(r0, r4, r5, r1);
        r6.mGetter = r4;
    L_0x0086:
        r4 = r6.mGetter;	 Catch:{ InvocationTargetException -> 0x009e, IllegalAccessException -> 0x0093 }
        r5 = 0;	 Catch:{ InvocationTargetException -> 0x009e, IllegalAccessException -> 0x0093 }
        r5 = new java.lang.Object[r5];	 Catch:{ InvocationTargetException -> 0x009e, IllegalAccessException -> 0x0093 }
        r4 = r4.invoke(r7, r5);	 Catch:{ InvocationTargetException -> 0x009e, IllegalAccessException -> 0x0093 }
        r3.setValue(r4);	 Catch:{ InvocationTargetException -> 0x009e, IllegalAccessException -> 0x0093 }
        goto L_0x0068;
    L_0x0093:
        r3 = move-exception;
        r4 = "PropertyValuesHolder";
        r3 = r3.toString();
        android.util.Log.e(r4, r3);
        goto L_0x0068;
    L_0x009e:
        r3 = move-exception;
        r4 = "PropertyValuesHolder";
        r3 = r3.toString();
        android.util.Log.e(r4, r3);
        goto L_0x0068;
    L_0x00a9:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.animation.PropertyValuesHolder.setupSetterAndGetter(java.lang.Object):void");
    }

    public com.nineoldandroids.animation.PropertyValuesHolder clone() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = super.clone();	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0 = (com.nineoldandroids.animation.PropertyValuesHolder) r0;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r2.mPropertyName;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0.mPropertyName = r1;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r2.mProperty;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0.mProperty = r1;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r2.mKeyframeSet;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r1.clone();	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0.mKeyframeSet = r1;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r1 = r2.mEvaluator;	 Catch:{ CloneNotSupportedException -> 0x001b }
        r0.mEvaluator = r1;	 Catch:{ CloneNotSupportedException -> 0x001b }
        return r0;
    L_0x001b:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nineoldandroids.animation.PropertyValuesHolder.clone():com.nineoldandroids.animation.PropertyValuesHolder");
    }

    void setAnimatedValue(Object obj) {
        if (this.mProperty != null) {
            this.mProperty.set(obj, getAnimatedValue());
        }
        if (this.mSetter != null) {
            try {
                this.mTmpValueArray[0] = getAnimatedValue();
                this.mSetter.invoke(obj, this.mTmpValueArray);
            } catch (Object obj2) {
                Log.e("PropertyValuesHolder", obj2.toString());
            } catch (Object obj22) {
                Log.e("PropertyValuesHolder", obj22.toString());
            }
        }
    }

    final void init() {
        if (this.mEvaluator == null) {
            TypeEvaluator typeEvaluator = this.mValueType == Integer.class ? sIntEvaluator : this.mValueType == Float.class ? sFloatEvaluator : null;
            this.mEvaluator = typeEvaluator;
        }
        if (this.mEvaluator != null) {
            this.mKeyframeSet.mEvaluator = this.mEvaluator;
        }
    }

    public final void setEvaluator(TypeEvaluator typeEvaluator) {
        this.mEvaluator = typeEvaluator;
        this.mKeyframeSet.mEvaluator = typeEvaluator;
    }

    void calculateValue(float f) {
        this.mAnimatedValue = this.mKeyframeSet.getValue(f);
    }

    public final void setProperty(Property property) {
        this.mProperty = property;
    }

    Object getAnimatedValue() {
        return this.mAnimatedValue;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.mPropertyName);
        stringBuilder.append(": ");
        stringBuilder.append(this.mKeyframeSet.toString());
        return stringBuilder.toString();
    }
}
