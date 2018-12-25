package com.getkeepsafe.relinker;

import android.os.Build;
import android.os.Build.VERSION;
import com.getkeepsafe.relinker.ReLinker.LibraryLoader;

final class SystemLibraryLoader implements LibraryLoader {
    SystemLibraryLoader() {
    }

    public final void loadLibrary(String str) {
        System.loadLibrary(str);
    }

    public final void loadPath(String str) {
        System.load(str);
    }

    public final String mapLibraryName(String str) {
        if (str.startsWith("lib") && str.endsWith(".so")) {
            return str;
        }
        return System.mapLibraryName(str);
    }

    public final String[] supportedAbis() {
        if (VERSION.SDK_INT >= 21 && Build.SUPPORTED_ABIS.length > 0) {
            return Build.SUPPORTED_ABIS;
        }
        int i;
        CharSequence charSequence = Build.CPU_ABI2;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                i = 0;
                if (i != 0) {
                    return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
                }
                return new String[]{Build.CPU_ABI};
            }
        }
        i = 1;
        if (i != 0) {
            return new String[]{Build.CPU_ABI};
        }
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }
}
