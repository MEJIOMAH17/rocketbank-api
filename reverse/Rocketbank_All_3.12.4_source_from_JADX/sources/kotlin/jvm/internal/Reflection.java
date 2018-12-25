package kotlin.jvm.internal;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import com.github.ksoichiro.android.observablescrollview.ScrollUtils;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;

public final class Reflection {
    private static final OnLoadCompleteListener[] EMPTY_K_CLASS_ARRAY$71712fe1 = new OnLoadCompleteListener[0];
    private static final ScrollUtils factory$2fb20bc2;

    public static KFunction function(FunctionReference functionReference) {
        return functionReference;
    }

    public static KMutableProperty0 mutableProperty0(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    public static KMutableProperty1 mutableProperty1(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    public static KMutableProperty2 mutableProperty2(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    public static KProperty0 property0(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    public static KProperty1 property1(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public static KProperty2 property2(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    static {
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
        r0 = 0;
        r1 = "kotlin.reflect.jvm.internal.ReflectionFactoryImpl";	 Catch:{ ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e }
        r1 = java.lang.Class.forName(r1);	 Catch:{ ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e }
        r1 = r1.newInstance();	 Catch:{ ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e }
        r1 = (com.github.ksoichiro.android.observablescrollview.ScrollUtils) r1;	 Catch:{ ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e, ClassCastException -> 0x000e }
        r0 = r1;
    L_0x000e:
        if (r0 == 0) goto L_0x0011;
    L_0x0010:
        goto L_0x0016;
    L_0x0011:
        r0 = new com.github.ksoichiro.android.observablescrollview.ScrollUtils;
        r0.<init>();
    L_0x0016:
        factory$2fb20bc2 = r0;
        r0 = 0;
        r0 = new android.support.v4.content.Loader.OnLoadCompleteListener[r0];
        EMPTY_K_CLASS_ARRAY$71712fe1 = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.Reflection.<clinit>():void");
    }

    public static KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        return new PackageReference(cls, str);
    }

    public static OnLoadCompleteListener getOrCreateKotlinClass$4641416c(Class cls) {
        return new ClassReference(cls);
    }

    public static String renderLambdaToString(Lambda lambda) {
        lambda = lambda.getClass().getGenericInterfaces()[0].toString();
        return lambda.startsWith("kotlin.jvm.functions.") ? lambda.substring(21) : lambda;
    }
}
