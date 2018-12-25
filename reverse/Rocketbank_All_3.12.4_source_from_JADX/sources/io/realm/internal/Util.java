package io.realm.internal;

import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.log.RealmLog;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

public class Util {
    public static boolean isEmptyString$552c4dfd() {
        return true;
    }

    static native String nativeGetTablePrefix();

    public static String getTablePrefix() {
        return nativeGetTablePrefix();
    }

    public static Class<? extends RealmModel> getOriginalModelClass(Class<? extends RealmModel> cls) {
        Class<? extends RealmModel> superclass = cls.getSuperclass();
        return (superclass.equals(Object.class) || superclass.equals(RealmObject.class)) ? cls : superclass;
    }

    public static boolean deleteRealm(String str, File file, String str2) {
        boolean z;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(".management");
        File file2 = new File(file, stringBuilder.toString());
        File[] listFiles = file2.listFiles();
        if (listFiles != null) {
            z = true;
            for (File delete : listFiles) {
                z = z && delete.delete();
            }
        } else {
            z = true;
        }
        boolean z2 = z && file2.delete();
        return z2 && deletes(str, file, str2) != null;
    }

    private static boolean deletes(String str, File file, String str2) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        File[] fileArr = new File[6];
        fileArr[0] = new File(file, str2);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(".lock");
        fileArr[1] = new File(file, stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(".log_a");
        fileArr[2] = new File(file, stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(".log_b");
        fileArr[3] = new File(file, stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(".log");
        fileArr[4] = new File(file, stringBuilder.toString());
        fileArr[5] = new File(str);
        for (File file2 : Arrays.asList(fileArr)) {
            if (file2.exists() != null && file2.delete() == null) {
                atomicBoolean.set(false);
                RealmLog.warn("Could not delete the file %s", file2);
            }
        }
        return atomicBoolean.get();
    }
}
