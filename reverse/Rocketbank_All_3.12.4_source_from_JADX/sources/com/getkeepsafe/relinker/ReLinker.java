package com.getkeepsafe.relinker;

import android.content.Context;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.maps.model.LatLng;
import com.google.maps.android.clustering.ClusterItem;
import io.realm.RealmObject;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

public final class ReLinker<T extends RealmObject> implements ClusterItem {
    private LatLng latLng;
    private final T realmObject;
    private String title;

    public interface LibraryInstaller {
        void installLibrary$757ca6fb(Context context, String[] strArr, String str, File file);
    }

    public interface LibraryLoader {
        void loadLibrary(String str);

        void loadPath(String str);

        String mapLibraryName(String str);

        String[] supportedAbis();
    }

    public interface LoadListener {
        boolean isRtl$4d1ed0c3(CharSequence charSequence, int i);
    }

    public static void loadLibrary(Context context, String str, String str2) {
        new ReLinkerInstance().loadLibrary$11a583b2(context, str, str2);
    }

    public final T getRealmObject() {
        return this.realmObject;
    }

    public final String getTitle() {
        return this.title;
    }

    public final LatLng getPosition() {
        return this.latLng;
    }

    public ReLinker(T t, String str, double d, double d2) {
        Intrinsics.checkParameterIsNotNull(t, "realmObject");
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_TITLE);
        this.realmObject = t;
        this.title = str;
        this.latLng = new LatLng(d, d2);
    }
}
