package android.support.coreui;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.net.URL;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.security.storage.FileTokenStorageImpl;
import ru.rocketbank.core.manager.security.storage.RealmTouchTokenStorageImpl;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.coreui.R */
public class C0888R implements Provider<FileTokenStorageImpl>, Provider {
    private final Provider<Context> contextProvider;
    private final ModelLoader<Uri, T> uriLoader;

    /* renamed from: android.support.coreui.R$styleable */
    public static final class styleable {
        public static final int[] CoordinatorLayout = new int[]{C0859R.attr.keylines, C0859R.attr.statusBarBackground};
        public static final int[] CoordinatorLayout_Layout = new int[]{16842931, C0859R.attr.layout_anchor, C0859R.attr.layout_anchorGravity, C0859R.attr.layout_behavior, C0859R.attr.layout_dodgeInsetEdges, C0859R.attr.layout_insetEdge, C0859R.attr.layout_keyline};
        public static final int CoordinatorLayout_Layout_android_layout_gravity = 0;
        public static final int CoordinatorLayout_Layout_layout_anchor = 1;
        public static final int CoordinatorLayout_Layout_layout_anchorGravity = 2;
        public static final int CoordinatorLayout_Layout_layout_behavior = 3;
        public static final int CoordinatorLayout_Layout_layout_dodgeInsetEdges = 4;
        public static final int CoordinatorLayout_Layout_layout_insetEdge = 5;
        public static final int CoordinatorLayout_Layout_layout_keyline = 6;
        public static final int CoordinatorLayout_keylines = 0;
        public static final int CoordinatorLayout_statusBarBackground = 1;
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
    }

    /* renamed from: android.support.coreui.R$attr */
    public static final class attr implements Provider<RealmTouchTokenStorageImpl>, Provider {
        private final Provider<Context> contextProvider;
        private final ModelLoader<GlideUrl, T> glideUrlLoader;
        private final Provider<KeyManager> keyManagerProvider;

        public attr(ModelLoader<GlideUrl, T> modelLoader) {
            this.glideUrlLoader = modelLoader;
        }

        public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
            return this.glideUrlLoader.getResourceFetcher(new GlideUrl((URL) obj), i, i2);
        }

        public /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.contextProvider.get();
            KeyManager keyManager = (KeyManager) this.keyManagerProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(keyManager, "keyManager");
            return new RealmTouchTokenStorageImpl(context, keyManager);
        }
    }

    /* renamed from: android.support.coreui.R$style */
    public static final class style implements Resource<Bitmap> {
        private final Bitmap bitmap;
        private final BitmapPool bitmapPool;

        public style(Bitmap bitmap, BitmapPool bitmapPool) {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            } else if (bitmapPool == null) {
                throw new NullPointerException("BitmapPool must not be null");
            } else {
                this.bitmap = bitmap;
                this.bitmapPool = bitmapPool;
            }
        }

        public final int getSize() {
            return Util.getBitmapByteSize(this.bitmap);
        }

        public final void recycle() {
            if (!this.bitmapPool.put(this.bitmap)) {
                this.bitmap.recycle();
            }
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return this.bitmap;
        }
    }

    public C0888R(ModelLoader<Uri, T> modelLoader) {
        this.uriLoader = modelLoader;
    }

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        String str = (String) obj;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            obj = Uri.fromFile(new File(str));
        } else {
            Uri parse = Uri.parse(str);
            obj = parse.getScheme() == null ? Uri.fromFile(new File(str)) : parse;
        }
        return this.uriLoader.getResourceFetcher(obj, i, i2);
    }

    public /* bridge */ /* synthetic */ Object get() {
        Context context = (Context) this.contextProvider.get();
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new FileTokenStorageImpl(context);
    }
}
