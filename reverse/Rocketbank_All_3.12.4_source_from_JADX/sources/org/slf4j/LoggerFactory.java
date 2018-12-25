package org.slf4j;

import com.google.maps.android.C0651R.id;
import java.net.URL;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.slf4j.helpers.SubstituteLoggerFactory;
import org.slf4j.impl.StaticLoggerBinder;

public final class LoggerFactory {
    private static final String[] API_COMPATIBILITY_LIST = new String[]{"1.6", "1.7"};
    static int INITIALIZATION_STATE = 0;
    static id NOP_FALLBACK_FACTORY$3d653843 = new id();
    private static String STATIC_LOGGER_BINDER_PATH = "org/slf4j/impl/StaticLoggerBinder.class";
    static SubstituteLoggerFactory TEMP_FACTORY = new SubstituteLoggerFactory();

    private LoggerFactory() {
    }

    private static final void emitSubstituteLoggerWarning() {
        List loggerNameList = TEMP_FACTORY.getLoggerNameList();
        if (loggerNameList.size() != 0) {
            System.err.println("SLF4J: ".concat(String.valueOf("The following loggers will not work because they were created")));
            System.err.println("SLF4J: ".concat(String.valueOf("during the default configuration phase of the underlying logging system.")));
            System.err.println("SLF4J: ".concat(String.valueOf("See also http://www.slf4j.org/codes.html#substituteLogger")));
            for (int i = 0; i < loggerNameList.size(); i++) {
                System.err.println("SLF4J: ".concat(String.valueOf((String) loggerNameList.get(i))));
            }
        }
    }

    private static final void versionSanityCheck() {
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
        r0 = org.slf4j.impl.StaticLoggerBinder.REQUESTED_API_VERSION;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1 = 0;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r2 = r1;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0004:
        r3 = 2;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        if (r1 >= r3) goto L_0x0015;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0007:
        r3 = API_COMPATIBILITY_LIST;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r3 = r3[r1];	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r3 = r0.startsWith(r3);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        if (r3 == 0) goto L_0x0012;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0011:
        r2 = 1;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0012:
        r1 = r1 + 1;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        goto L_0x0004;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0015:
        if (r2 != 0) goto L_0x0057;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0017:
        r1 = new java.lang.StringBuilder;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r2 = "The requested version ";	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.<init>(r2);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.append(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = " by your slf4j binding is not compatible with ";	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.append(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = API_COMPATIBILITY_LIST;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = java.util.Arrays.asList(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = r0.toString();	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.append(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = r1.toString();	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1 = java.lang.System.err;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r2 = "SLF4J: ";	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = r2.concat(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.println(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = "See http://www.slf4j.org/codes.html#version_mismatch for further details.";	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1 = java.lang.System.err;	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r2 = "SLF4J: ";	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r0 = r2.concat(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
        r1.println(r0);	 Catch:{ NoSuchFieldError -> 0x006b, Throwable -> 0x0058 }
    L_0x0057:
        return;
    L_0x0058:
        r0 = move-exception;
        r1 = "Unexpected problem occured during version sanity check";
        r2 = java.lang.System.err;
        r2.println(r1);
        r1 = java.lang.System.err;
        r2 = "Reported exception:";
        r1.println(r2);
        r0.printStackTrace();
        return;
    L_0x006b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.slf4j.LoggerFactory.versionSanityCheck():void");
    }

    private static Set findPossibleStaticLoggerBinderPathSet() {
        Set linkedHashSet = new LinkedHashSet();
        try {
            Enumeration systemResources;
            ClassLoader classLoader = LoggerFactory.class.getClassLoader();
            if (classLoader == null) {
                systemResources = ClassLoader.getSystemResources(STATIC_LOGGER_BINDER_PATH);
            } else {
                systemResources = classLoader.getResources(STATIC_LOGGER_BINDER_PATH);
            }
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add((URL) systemResources.nextElement());
            }
        } catch (Throwable e) {
            System.err.println("Error getting resources from path");
            System.err.println("Reported exception:");
            e.printStackTrace();
        }
        return linkedHashSet;
    }

    public static Logger getLogger(Class cls) {
        return getLogger(cls.getName());
    }

    public static Logger getLogger(String str) {
        ILoggerFactory iLoggerFactory;
        if (INITIALIZATION_STATE == 0) {
            int i = 1;
            INITIALIZATION_STATE = 1;
            try {
                Set<URL> findPossibleStaticLoggerBinderPathSet = findPossibleStaticLoggerBinderPathSet();
                if ((findPossibleStaticLoggerBinderPathSet.size() > 1 ? 1 : 0) != 0) {
                    System.err.println("SLF4J: ".concat(String.valueOf("Class path contains multiple SLF4J bindings.")));
                    for (URL url : findPossibleStaticLoggerBinderPathSet) {
                        StringBuilder stringBuilder = new StringBuilder("Found binding in [");
                        stringBuilder.append(url);
                        stringBuilder.append("]");
                        System.err.println("SLF4J: ".concat(String.valueOf(stringBuilder.toString())));
                    }
                    System.err.println("SLF4J: ".concat(String.valueOf("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.")));
                }
                StaticLoggerBinder.getSingleton();
                INITIALIZATION_STATE = 3;
                if ((findPossibleStaticLoggerBinderPathSet.size() > 1 ? 1 : 0) != 0) {
                    StringBuilder stringBuilder2 = new StringBuilder("Actual binding is of type [");
                    stringBuilder2.append(StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr());
                    stringBuilder2.append("]");
                    System.err.println("SLF4J: ".concat(String.valueOf(stringBuilder2.toString())));
                }
                emitSubstituteLoggerWarning();
            } catch (Throwable e) {
                String message = e.getMessage();
                if (message != null) {
                    if (message.indexOf("org/slf4j/impl/StaticLoggerBinder") == -1) {
                        if (message.indexOf("org.slf4j.impl.StaticLoggerBinder") != -1) {
                        }
                    }
                    if (i == 0) {
                        INITIALIZATION_STATE = 4;
                        System.err.println("SLF4J: ".concat(String.valueOf("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".")));
                        System.err.println("SLF4J: ".concat(String.valueOf("Defaulting to no-operation (NOP) logger implementation")));
                        System.err.println("SLF4J: ".concat(String.valueOf("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.")));
                    } else {
                        INITIALIZATION_STATE = 2;
                        System.err.println("Failed to instantiate SLF4J LoggerFactory");
                        System.err.println("Reported exception:");
                        e.printStackTrace();
                        throw e;
                    }
                }
                i = 0;
                if (i == 0) {
                    INITIALIZATION_STATE = 2;
                    System.err.println("Failed to instantiate SLF4J LoggerFactory");
                    System.err.println("Reported exception:");
                    e.printStackTrace();
                    throw e;
                }
                INITIALIZATION_STATE = 4;
                System.err.println("SLF4J: ".concat(String.valueOf("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".")));
                System.err.println("SLF4J: ".concat(String.valueOf("Defaulting to no-operation (NOP) logger implementation")));
                System.err.println("SLF4J: ".concat(String.valueOf("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.")));
            } catch (String str2) {
                String message2 = str2.getMessage();
                if (!(message2 == null || message2.indexOf("org.slf4j.impl.StaticLoggerBinder.getSingleton()") == -1)) {
                    INITIALIZATION_STATE = 2;
                    System.err.println("SLF4J: ".concat(String.valueOf("slf4j-api 1.6.x (or later) is incompatible with this binding.")));
                    System.err.println("SLF4J: ".concat(String.valueOf("Your binding is version 1.5.5 or earlier.")));
                    System.err.println("SLF4J: ".concat(String.valueOf("Upgrade your binding to version 1.6.x.")));
                }
                throw str2;
            } catch (String str22) {
                INITIALIZATION_STATE = 2;
                System.err.println("Failed to instantiate SLF4J LoggerFactory");
                System.err.println("Reported exception:");
                str22.printStackTrace();
                throw new IllegalStateException("Unexpected initialization failure", str22);
            }
            if (INITIALIZATION_STATE == 3) {
                versionSanityCheck();
            }
        }
        switch (INITIALIZATION_STATE) {
            case 1:
                iLoggerFactory = TEMP_FACTORY;
                break;
            case 2:
                throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
            case 3:
                iLoggerFactory = StaticLoggerBinder.getSingleton().getLoggerFactory();
                break;
            case 4:
                iLoggerFactory = NOP_FALLBACK_FACTORY$3d653843;
                break;
            default:
                throw new IllegalStateException("Unreachable code");
        }
        return iLoggerFactory.getLogger(str22);
    }
}
