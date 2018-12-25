package okhttp3;

import java.util.Collections;
import java.util.List;

public interface CookieJar {
    public static final CookieJar NO_COOKIES = new C12941();

    /* renamed from: okhttp3.CookieJar$1 */
    class C12941 implements CookieJar {
        C12941() {
        }

        public final List<Cookie> loadForRequest$792063fe() {
            return Collections.emptyList();
        }
    }

    List<Cookie> loadForRequest$792063fe();
}
