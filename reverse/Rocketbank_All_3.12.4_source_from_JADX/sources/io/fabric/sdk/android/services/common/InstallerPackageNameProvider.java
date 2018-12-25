package io.fabric.sdk.android.services.common;

import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.cache.ValueLoader;

public class InstallerPackageNameProvider {
    private static final String NO_INSTALLER_PACKAGE_NAME = "";
    private final MemoryValueCache<String> installerPackageNameCache = new MemoryValueCache();
    private final ValueLoader<String> installerPackageNameLoader = new C12811();

    /* renamed from: io.fabric.sdk.android.services.common.InstallerPackageNameProvider$1 */
    class C12811 implements ValueLoader<String> {
        C12811() {
        }

        public String load(Context context) throws Exception {
            context = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            return context == null ? "" : context;
        }
    }

    public String getInstallerPackageName(Context context) {
        try {
            String str = (String) this.installerPackageNameCache.get(context, this.installerPackageNameLoader);
            if ("".equals(str)) {
                return null;
            }
            return str;
        } catch (Context context2) {
            Fabric.getLogger().mo771e("Fabric", "Failed to determine installer package name", context2);
            return null;
        }
    }
}
