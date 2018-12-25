package bolts;

import android.net.Uri;
import java.util.List;

public final class AppLink {
    private Uri sourceUrl;
    private List<Target> targets;
    private Uri webUrl;

    public static class Target {
        private final String appName;
        private final String className;
        private final String packageName;
        private final Uri url;

        public Target(String str, String str2, Uri uri, String str3) {
            this.packageName = str;
            this.className = str2;
            this.url = uri;
            this.appName = str3;
        }
    }

    public AppLink(Uri uri, List<Target> list, Uri uri2) {
        this.sourceUrl = uri;
        this.targets = list;
        this.webUrl = uri2;
    }
}
