package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipFile;

public final class MultiDex {
    private static final boolean IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));
    private static final Set<File> installedApk = new HashSet();

    static final class V14 {
        private static final int EXTRACTED_SUFFIX_LENGTH = 4;
        private final ElementConstructor elementConstructor;

        interface ElementConstructor {
            Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        static class ICSElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            ICSElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, ZipFile.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public final Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.elementConstructor.newInstance(new Object[]{file, new ZipFile(file), dexFile});
            }
        }

        static class JBMR11ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR11ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, File.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public final Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(new Object[]{file, file, dexFile});
            }
        }

        static class JBMR2ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            JBMR2ElementConstructor(Class<?> cls) throws SecurityException, NoSuchMethodException {
                this.elementConstructor = cls.getConstructor(new Class[]{File.class, Boolean.TYPE, File.class, DexFile.class});
                this.elementConstructor.setAccessible(true);
            }

            public final Object newInstance(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.elementConstructor.newInstance(new Object[]{file, Boolean.FALSE, file, dexFile});
            }
        }

        static void install(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            classLoader = MultiDex.findField(classLoader, "pathList").get(classLoader);
            V14 v14 = new V14();
            Object[] objArr = new Object[list.size()];
            for (int i = 0; i < objArr.length; i++) {
                File file = (File) list.get(i);
                ElementConstructor elementConstructor = v14.elementConstructor;
                String path = file.getPath();
                File parentFile = file.getParentFile();
                String name = file.getName();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(name.substring(0, name.length() - 4));
                stringBuilder.append(".dex");
                objArr[i] = elementConstructor.newInstance(file, DexFile.loadDex(path, new File(parentFile, stringBuilder.toString()).getPath(), 0));
            }
            try {
                MultiDex.access$100(classLoader, "dexElements", objArr);
            } catch (List<? extends File> list2) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", list2);
                MultiDex.access$100(classLoader, "pathElements", objArr);
            }
        }

        private V14() throws java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.NoSuchMethodException {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r2 = this;
            r2.<init>();
            r0 = "dalvik.system.DexPathList$Element";
            r0 = java.lang.Class.forName(r0);
            r1 = new android.support.multidex.MultiDex$V14$ICSElementConstructor;	 Catch:{ NoSuchMethodException -> 0x000f }
            r1.<init>(r0);	 Catch:{ NoSuchMethodException -> 0x000f }
            goto L_0x001a;
        L_0x000f:
            r1 = new android.support.multidex.MultiDex$V14$JBMR11ElementConstructor;	 Catch:{ NoSuchMethodException -> 0x0015 }
            r1.<init>(r0);	 Catch:{ NoSuchMethodException -> 0x0015 }
            goto L_0x001a;
        L_0x0015:
            r1 = new android.support.multidex.MultiDex$V14$JBMR2ElementConstructor;
            r1.<init>(r0);
        L_0x001a:
            r2.elementConstructor = r1;
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.V14.<init>():void");
        }
    }

    static final class V19 {
        static void install(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            classLoader = MultiDex.findField(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList(list);
            MultiDex.access$100(classLoader, "dexElements", (Object[]) MultiDex.findMethod(classLoader, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(classLoader, new Object[]{arrayList2, file, arrayList}));
            if (arrayList.size() > null) {
                list = arrayList.iterator();
                while (list.hasNext() != null) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) list.next());
                }
                list = MultiDex.findField(classLoader, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr = (IOException[]) list.get(classLoader);
                if (iOExceptionArr == null) {
                    file = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    File file2 = new IOException[(arrayList.size() + iOExceptionArr.length)];
                    arrayList.toArray(file2);
                    System.arraycopy(iOExceptionArr, 0, file2, arrayList.size(), iOExceptionArr.length);
                    file = file2;
                }
                list.set(classLoader, file);
                classLoader = new IOException("I/O exception during makeDexElement");
                classLoader.initCause((Throwable) arrayList.get(0));
                throw classLoader;
            }
        }
    }

    static final class V4 {
        static void install(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field access$000 = MultiDex.findField(classLoader, "path");
            StringBuilder stringBuilder = new StringBuilder((String) access$000.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            list = list.listIterator();
            while (list.hasNext()) {
                File file = (File) list.next();
                String absolutePath = file.getAbsolutePath();
                stringBuilder.append(':');
                stringBuilder.append(absolutePath);
                int previousIndex = list.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = file;
                zipFileArr[previousIndex] = new ZipFile(file);
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(absolutePath);
                stringBuilder2.append(".dex");
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, stringBuilder2.toString(), 0);
            }
            access$000.set(classLoader, stringBuilder.toString());
            MultiDex.access$100(classLoader, "mPaths", strArr);
            MultiDex.access$100(classLoader, "mFiles", fileArr);
            MultiDex.access$100(classLoader, "mZips", zipFileArr);
            MultiDex.access$100(classLoader, "mDexs", dexFileArr);
        }
    }

    public static void install(Context context) {
        Log.i("MultiDex", "Installing application");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (VERSION.SDK_INT < 4) {
            StringBuilder stringBuilder = new StringBuilder("MultiDex installation failed. SDK ");
            stringBuilder.append(VERSION.SDK_INT);
            stringBuilder.append(" is unsupported. Min SDK version is 4.");
            throw new RuntimeException(stringBuilder.toString());
        } else {
            try {
                ApplicationInfo applicationInfo = getApplicationInfo(context);
                if (applicationInfo == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                doInstallation$3605d941(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "");
                Log.i("MultiDex", "install done");
            } catch (Context context2) {
                Log.e("MultiDex", "MultiDex installation failure", context2);
                StringBuilder stringBuilder2 = new StringBuilder("MultiDex installation failed (");
                stringBuilder2.append(context2.getMessage());
                stringBuilder2.append(").");
                throw new RuntimeException(stringBuilder2.toString());
            }
        }
    }

    private static void doInstallation$3605d941(android.content.Context r5, java.io.File r6, java.io.File r7, java.lang.String r8, java.lang.String r9) throws java.io.IOException, java.lang.IllegalArgumentException, java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.reflect.InvocationTargetException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.ClassNotFoundException, java.lang.InstantiationException {
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
        r0 = installedApk;
        monitor-enter(r0);
        r1 = installedApk;	 Catch:{ all -> 0x0097 }
        r1 = r1.contains(r6);	 Catch:{ all -> 0x0097 }
        if (r1 == 0) goto L_0x000d;	 Catch:{ all -> 0x0097 }
    L_0x000b:
        monitor-exit(r0);	 Catch:{ all -> 0x0097 }
        return;	 Catch:{ all -> 0x0097 }
    L_0x000d:
        r1 = installedApk;	 Catch:{ all -> 0x0097 }
        r1.add(r6);	 Catch:{ all -> 0x0097 }
        r1 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x0097 }
        r2 = 20;	 Catch:{ all -> 0x0097 }
        if (r1 <= r2) goto L_0x0040;	 Catch:{ all -> 0x0097 }
    L_0x0018:
        r1 = "MultiDex";	 Catch:{ all -> 0x0097 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0097 }
        r3 = "MultiDex is not guaranteed to work in SDK version ";	 Catch:{ all -> 0x0097 }
        r2.<init>(r3);	 Catch:{ all -> 0x0097 }
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x0097 }
        r2.append(r3);	 Catch:{ all -> 0x0097 }
        r3 = ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"";	 Catch:{ all -> 0x0097 }
        r2.append(r3);	 Catch:{ all -> 0x0097 }
        r3 = "java.vm.version";	 Catch:{ all -> 0x0097 }
        r3 = java.lang.System.getProperty(r3);	 Catch:{ all -> 0x0097 }
        r2.append(r3);	 Catch:{ all -> 0x0097 }
        r3 = "\"";	 Catch:{ all -> 0x0097 }
        r2.append(r3);	 Catch:{ all -> 0x0097 }
        r2 = r2.toString();	 Catch:{ all -> 0x0097 }
        android.util.Log.w(r1, r2);	 Catch:{ all -> 0x0097 }
    L_0x0040:
        r1 = r5.getClassLoader();	 Catch:{ RuntimeException -> 0x008d }
        if (r1 != 0) goto L_0x004f;
    L_0x0046:
        r5 = "MultiDex";	 Catch:{ all -> 0x0097 }
        r6 = "Context class loader is null. Must be running in test mode. Skip patching.";	 Catch:{ all -> 0x0097 }
        android.util.Log.e(r5, r6);	 Catch:{ all -> 0x0097 }
        monitor-exit(r0);	 Catch:{ all -> 0x0097 }
        return;
    L_0x004f:
        clearOldDexDir(r5);	 Catch:{ Throwable -> 0x0053 }
        goto L_0x005b;
    L_0x0053:
        r2 = move-exception;
        r3 = "MultiDex";	 Catch:{ all -> 0x0097 }
        r4 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.";	 Catch:{ all -> 0x0097 }
        android.util.Log.w(r3, r4, r2);	 Catch:{ all -> 0x0097 }
    L_0x005b:
        r7 = getDexDir(r5, r7, r8);	 Catch:{ all -> 0x0097 }
        r8 = new android.support.multidex.MultiDexExtractor;	 Catch:{ all -> 0x0097 }
        r8.<init>(r6, r7);	 Catch:{ all -> 0x0097 }
        r6 = 0;
        r2 = 0;
        r2 = r8.load(r5, r9, r2);	 Catch:{ all -> 0x0088 }
        installSecondaryDexes(r1, r7, r2);	 Catch:{ IOException -> 0x006e }
        goto L_0x007e;
    L_0x006e:
        r2 = move-exception;
        r3 = "MultiDex";	 Catch:{ all -> 0x0088 }
        r4 = "Failed to install extracted secondary dex files, retrying with forced extraction";	 Catch:{ all -> 0x0088 }
        android.util.Log.w(r3, r4, r2);	 Catch:{ all -> 0x0088 }
        r2 = 1;	 Catch:{ all -> 0x0088 }
        r5 = r8.load(r5, r9, r2);	 Catch:{ all -> 0x0088 }
        installSecondaryDexes(r1, r7, r5);	 Catch:{ all -> 0x0088 }
    L_0x007e:
        r8.close();	 Catch:{ IOException -> 0x0082 }
        goto L_0x0083;
    L_0x0082:
        r6 = move-exception;
    L_0x0083:
        if (r6 == 0) goto L_0x0086;
    L_0x0085:
        throw r6;	 Catch:{ all -> 0x0097 }
    L_0x0086:
        monitor-exit(r0);	 Catch:{ all -> 0x0097 }
        return;
    L_0x0088:
        r5 = move-exception;
        r8.close();	 Catch:{ IOException -> 0x008c }
    L_0x008c:
        throw r5;	 Catch:{ all -> 0x0097 }
    L_0x008d:
        r5 = move-exception;	 Catch:{ all -> 0x0097 }
        r6 = "MultiDex";	 Catch:{ all -> 0x0097 }
        r7 = "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.";	 Catch:{ all -> 0x0097 }
        android.util.Log.w(r6, r7, r5);	 Catch:{ all -> 0x0097 }
        monitor-exit(r0);	 Catch:{ all -> 0x0097 }
        return;	 Catch:{ all -> 0x0097 }
    L_0x0097:
        r5 = move-exception;	 Catch:{ all -> 0x0097 }
        monitor-exit(r0);	 Catch:{ all -> 0x0097 }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.doInstallation$3605d941(android.content.Context, java.io.File, java.io.File, java.lang.String, java.lang.String):void");
    }

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (Context context2) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", context2);
            return null;
        }
    }

    private static boolean isVMMultidexCapable(java.lang.String r5) {
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
        if (r5 == 0) goto L_0x002c;
    L_0x0003:
        r1 = "(\\d+)\\.(\\d+)(\\.\\d+)?";
        r1 = java.util.regex.Pattern.compile(r1);
        r1 = r1.matcher(r5);
        r2 = r1.matches();
        if (r2 == 0) goto L_0x002c;
    L_0x0013:
        r2 = 1;
        r3 = r1.group(r2);	 Catch:{ NumberFormatException -> 0x002c }
        r3 = java.lang.Integer.parseInt(r3);	 Catch:{ NumberFormatException -> 0x002c }
        r4 = 2;	 Catch:{ NumberFormatException -> 0x002c }
        r1 = r1.group(r4);	 Catch:{ NumberFormatException -> 0x002c }
        r1 = java.lang.Integer.parseInt(r1);	 Catch:{ NumberFormatException -> 0x002c }
        if (r3 > r4) goto L_0x002b;
    L_0x0027:
        if (r3 != r4) goto L_0x002c;
    L_0x0029:
        if (r1 <= 0) goto L_0x002c;
    L_0x002b:
        r0 = r2;
    L_0x002c:
        r1 = "MultiDex";
        r2 = new java.lang.StringBuilder;
        r3 = "VM with version ";
        r2.<init>(r3);
        r2.append(r5);
        if (r0 == 0) goto L_0x003d;
    L_0x003a:
        r5 = " has multidex support";
        goto L_0x003f;
    L_0x003d:
        r5 = " does not have multidex support";
    L_0x003f:
        r2.append(r5);
        r5 = r2.toString();
        android.util.Log.i(r1, r5);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.isVMMultidexCapable(java.lang.String):boolean");
    }

    private static void installSecondaryDexes(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (!list.isEmpty()) {
            if (VERSION.SDK_INT >= 19) {
                V19.install(classLoader, list, file);
            } else if (VERSION.SDK_INT >= 14) {
                V14.install(classLoader, list);
            } else {
                V4.install(classLoader, list);
            }
        }
    }

    private static java.lang.reflect.Field findField(java.lang.Object r3, java.lang.String r4) throws java.lang.NoSuchFieldException {
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
        r0 = r3.getClass();
    L_0x0004:
        if (r0 == 0) goto L_0x001a;
    L_0x0006:
        r1 = r0.getDeclaredField(r4);	 Catch:{ NoSuchFieldException -> 0x0015 }
        r2 = r1.isAccessible();	 Catch:{ NoSuchFieldException -> 0x0015 }
        if (r2 != 0) goto L_0x0014;	 Catch:{ NoSuchFieldException -> 0x0015 }
    L_0x0010:
        r2 = 1;	 Catch:{ NoSuchFieldException -> 0x0015 }
        r1.setAccessible(r2);	 Catch:{ NoSuchFieldException -> 0x0015 }
    L_0x0014:
        return r1;
    L_0x0015:
        r0 = r0.getSuperclass();
        goto L_0x0004;
    L_0x001a:
        r0 = new java.lang.NoSuchFieldException;
        r1 = new java.lang.StringBuilder;
        r2 = "Field ";
        r1.<init>(r2);
        r1.append(r4);
        r4 = " not found in ";
        r1.append(r4);
        r3 = r3.getClass();
        r1.append(r3);
        r3 = r1.toString();
        r0.<init>(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.findField(java.lang.Object, java.lang.String):java.lang.reflect.Field");
    }

    private static java.lang.reflect.Method findMethod(java.lang.Object r3, java.lang.String r4, java.lang.Class<?>... r5) throws java.lang.NoSuchMethodException {
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
        r0 = r3.getClass();
    L_0x0004:
        if (r0 == 0) goto L_0x001a;
    L_0x0006:
        r1 = r0.getDeclaredMethod(r4, r5);	 Catch:{ NoSuchMethodException -> 0x0015 }
        r2 = r1.isAccessible();	 Catch:{ NoSuchMethodException -> 0x0015 }
        if (r2 != 0) goto L_0x0014;	 Catch:{ NoSuchMethodException -> 0x0015 }
    L_0x0010:
        r2 = 1;	 Catch:{ NoSuchMethodException -> 0x0015 }
        r1.setAccessible(r2);	 Catch:{ NoSuchMethodException -> 0x0015 }
    L_0x0014:
        return r1;
    L_0x0015:
        r0 = r0.getSuperclass();
        goto L_0x0004;
    L_0x001a:
        r0 = new java.lang.NoSuchMethodException;
        r1 = new java.lang.StringBuilder;
        r2 = "Method ";
        r1.<init>(r2);
        r1.append(r4);
        r4 = " with parameters ";
        r1.append(r4);
        r4 = java.util.Arrays.asList(r5);
        r1.append(r4);
        r4 = " not found in ";
        r1.append(r4);
        r3 = r3.getClass();
        r1.append(r3);
        r3 = r1.toString();
        r0.<init>(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.findMethod(java.lang.Object, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    private static void clearOldDexDir(Context context) throws Exception {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory() != null) {
            StringBuilder stringBuilder = new StringBuilder("Clearing old secondary dex dir (");
            stringBuilder.append(file.getPath());
            stringBuilder.append(").");
            Log.i("MultiDex", stringBuilder.toString());
            context = file.listFiles();
            if (context == null) {
                stringBuilder = new StringBuilder("Failed to list secondary dex dir content (");
                stringBuilder.append(file.getPath());
                stringBuilder.append(").");
                Log.w("MultiDex", stringBuilder.toString());
                return;
            }
            for (File file2 : context) {
                StringBuilder stringBuilder2 = new StringBuilder("Trying to delete old file ");
                stringBuilder2.append(file2.getPath());
                stringBuilder2.append(" of size ");
                stringBuilder2.append(file2.length());
                Log.i("MultiDex", stringBuilder2.toString());
                if (file2.delete()) {
                    stringBuilder2 = new StringBuilder("Deleted old file ");
                    stringBuilder2.append(file2.getPath());
                    Log.i("MultiDex", stringBuilder2.toString());
                } else {
                    stringBuilder2 = new StringBuilder("Failed to delete old file ");
                    stringBuilder2.append(file2.getPath());
                    Log.w("MultiDex", stringBuilder2.toString());
                }
            }
            if (file.delete() == null) {
                stringBuilder = new StringBuilder("Failed to delete secondary dex dir ");
                stringBuilder.append(file.getPath());
                Log.w("MultiDex", stringBuilder.toString());
                return;
            }
            stringBuilder = new StringBuilder("Deleted old secondary dex dir ");
            stringBuilder.append(file.getPath());
            Log.i("MultiDex", stringBuilder.toString());
        }
    }

    private static java.io.File getDexDir(android.content.Context r2, java.io.File r3, java.lang.String r4) throws java.io.IOException {
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
        r0 = new java.io.File;
        r1 = "code_cache";
        r0.<init>(r3, r1);
        mkdirChecked(r0);	 Catch:{ IOException -> 0x000b }
        goto L_0x0019;
    L_0x000b:
        r0 = new java.io.File;
        r2 = r2.getFilesDir();
        r3 = "code_cache";
        r0.<init>(r2, r3);
        mkdirChecked(r0);
    L_0x0019:
        r2 = new java.io.File;
        r2.<init>(r0, r4);
        mkdirChecked(r2);
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.MultiDex.getDexDir(android.content.Context, java.io.File, java.lang.String):java.io.File");
    }

    private static void mkdirChecked(File file) throws IOException {
        file.mkdir();
        if (!file.isDirectory()) {
            StringBuilder stringBuilder;
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                stringBuilder = new StringBuilder("Failed to create dir ");
                stringBuilder.append(file.getPath());
                stringBuilder.append(". Parent file is null.");
                Log.e("MultiDex", stringBuilder.toString());
            } else {
                StringBuilder stringBuilder2 = new StringBuilder("Failed to create dir ");
                stringBuilder2.append(file.getPath());
                stringBuilder2.append(". parent file is a dir ");
                stringBuilder2.append(parentFile.isDirectory());
                stringBuilder2.append(", a file ");
                stringBuilder2.append(parentFile.isFile());
                stringBuilder2.append(", exists ");
                stringBuilder2.append(parentFile.exists());
                stringBuilder2.append(", readable ");
                stringBuilder2.append(parentFile.canRead());
                stringBuilder2.append(", writable ");
                stringBuilder2.append(parentFile.canWrite());
                Log.e("MultiDex", stringBuilder2.toString());
            }
            stringBuilder = new StringBuilder("Failed to create directory ");
            stringBuilder.append(file.getPath());
            throw new IOException(stringBuilder.toString());
        }
    }

    static /* synthetic */ void access$100(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        str = findField(obj, str);
        Object[] objArr2 = (Object[]) str.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        str.set(obj, objArr3);
    }
}
