package android.support.compat;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import bolts.CancellationTokenSource;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Locale;
import java.util.Scanner;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.dagger.AndroidModule;
import ru.rocketbank.core.network.api.AndroidPayApi;
import ru.rocketbank.core.network.api.LoginApi;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.compat.R */
public final class C0886R implements Provider<MediaPlayer> {

    /* renamed from: android.support.compat.R$color */
    public static final class color {
    }

    /* renamed from: android.support.compat.R$drawable */
    public static final class drawable {
        private String cacheKey;
        private String postData;
        private String requestURL;
        private String version;

        public drawable(String str, String str2, String str3) {
            this.requestURL = str;
            this.postData = str2;
            this.version = str3;
        }

        public drawable(char[] cArr) {
            Scanner scanner = new Scanner(new String(cArr));
            while (scanner.hasNextLine() != null) {
                cArr = scanner.nextLine();
                if (cArr.startsWith("url=")) {
                    this.requestURL = cArr.substring(4).trim();
                } else if (cArr.startsWith("version=")) {
                    this.version = cArr.substring(8).trim();
                } else if (cArr.startsWith("data=")) {
                    this.postData = cArr.substring(5).trim();
                }
            }
            scanner.close();
        }

        public final String getVersion() {
            return this.version;
        }

        public final String getPostData() {
            return this.postData;
        }

        public final String getRequestURL() {
            return this.requestURL;
        }

        public final void setCacheKey(String str) {
            this.cacheKey = str;
        }

        public final String getCacheKey() {
            return this.cacheKey;
        }
    }

    /* renamed from: android.support.compat.R$styleable */
    public static final class styleable {
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int FontFamilyFont_android_font = 0;
        public static final int FontFamilyFont_android_fontStyle = 2;
        public static final int FontFamilyFont_android_fontWeight = 1;
        public static final int FontFamilyFont_font = 3;
        public static final int FontFamilyFont_fontStyle = 4;
        public static final int FontFamilyFont_fontWeight = 5;
        public static final int FontFamily_fontProviderAuthority = 0;
        public static final int FontFamily_fontProviderCerts = 1;
        public static final int FontFamily_fontProviderFetchStrategy = 2;
        public static final int FontFamily_fontProviderFetchTimeout = 3;
        public static final int FontFamily_fontProviderPackage = 4;
        public static final int FontFamily_fontProviderQuery = 5;
    }

    /* renamed from: android.support.compat.R$dimen */
    public static final class dimen implements Provider<AndroidPayApi> {
        private final Provider<Retrofit> retrofitProvider;
        private final CancellationTokenSource tokenSource;

        public final boolean isCancellationRequested() {
            return this.tokenSource.isCancellationRequested();
        }

        public String toString() {
            return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", new Object[]{getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(this.tokenSource.isCancellationRequested())});
        }

        public /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(AndroidPayApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AndroidPayApi::class.java)");
            AndroidPayApi androidPayApi = (AndroidPayApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (androidPayApi != null) {
                return androidPayApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: android.support.compat.R$id */
    public static final class id<T> implements Transformation<T> {
        private String id;
        private final Collection<? extends Transformation<T>> transformations;

        @SafeVarargs
        public id(Transformation<T>... transformationArr) {
            if (transformationArr.length <= 0) {
                throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
            }
            this.transformations = Arrays.asList(transformationArr);
        }

        public final Resource<T> transform(Resource<T> resource, int i, int i2) {
            Resource<T> resource2 = resource;
            for (Transformation transform : this.transformations) {
                Resource<T> transform2 = transform.transform(resource2, i, i2);
                if (!(resource2 == null || resource2.equals(resource) || resource2.equals(transform2))) {
                    resource2.recycle();
                }
                resource2 = transform2;
            }
            return resource2;
        }

        public final String getId() {
            if (this.id == null) {
                StringBuilder stringBuilder = new StringBuilder();
                for (Transformation id : this.transformations) {
                    stringBuilder.append(id.getId());
                }
                this.id = stringBuilder.toString();
            }
            return this.id;
        }
    }

    /* renamed from: android.support.compat.R$integer */
    public static final class integer implements DataFetcher<InputStream> {
        private final byte[] bytes;
        private final String id;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        public integer(byte[] bArr, String str) {
            this.bytes = bArr;
            this.id = str;
        }

        public final String getId() {
            return this.id;
        }

        public final /* bridge */ /* synthetic */ Object loadData(Priority priority) throws Exception {
            return new ByteArrayInputStream(this.bytes);
        }
    }

    /* renamed from: android.support.compat.R$layout */
    public static final class layout implements Provider<LoginApi>, Provider {
        private final Provider<Retrofit> retrofitProvider;
        private final ModelLoader<Uri, T> uriLoader;

        public layout(ModelLoader<Uri, T> modelLoader) {
            this.uriLoader = modelLoader;
        }

        public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
            return this.uriLoader.getResourceFetcher(Uri.fromFile((File) obj), i, i2);
        }

        public /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(LoginApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(LoginApi::class.java)");
            LoginApi loginApi = (LoginApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (loginApi != null) {
                return loginApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: android.support.compat.R$string */
    public static final class string implements AnimatorUpdateListener<ImageVideoWrapper> {
        private final AnimatorUpdateListener<ParcelFileDescriptor> fileDescriptorEncoder$527e0935;
        private String id;
        private final AnimatorUpdateListener<InputStream> streamEncoder$527e0935;

        public string(AnimatorUpdateListener<InputStream> animatorUpdateListener, AnimatorUpdateListener<ParcelFileDescriptor> animatorUpdateListener2) {
            this.streamEncoder$527e0935 = animatorUpdateListener;
            this.fileDescriptorEncoder$527e0935 = animatorUpdateListener2;
        }

        public final String getId() {
            if (this.id == null) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(this.streamEncoder$527e0935.getId());
                stringBuilder.append(this.fileDescriptorEncoder$527e0935.getId());
                this.id = stringBuilder.toString();
            }
            return this.id;
        }

        public final /* bridge */ /* synthetic */ boolean encode(Object obj, OutputStream outputStream) {
            ImageVideoWrapper imageVideoWrapper = (ImageVideoWrapper) obj;
            if (imageVideoWrapper.getStream() != null) {
                return this.streamEncoder$527e0935.encode(imageVideoWrapper.getStream(), outputStream);
            }
            return this.fileDescriptorEncoder$527e0935.encode(imageVideoWrapper.getFileDescriptor(), outputStream);
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("\n*** Metrics ***\nmeasures: 0\nadditionalMeasures: 0\nresolutions passes: 0\ntable increases: 0\nmaxTableSize: 0\nmaxVariables: 0\nmaxRows: 0\n\nminimize: 0");
        stringBuilder.append("\nminimizeGoal: 0\nconstraints: 0\nsimpleconstraints: 0\noptimize: 0\niterations: 0\npivots: 0\nbfs: 0\nvariables: 0\nerrors: ");
        stringBuilder.append(0);
        stringBuilder.append("\nslackvariables: 0\nextravariables: 0\nfullySolved: 0\ngraphOptimizer: 0\nresolvedWidgets: 0\noldresolvedWidgets: 0\nnonresolvedWidgets: 0");
        stringBuilder.append("\ncenterConnectionResolved: 0\nmatchConnectionResolved: 0\nchainConnectionResolved: 0\nbarrierConnectionResolved: 0");
        stringBuilder.append("\nproblematicsLayouts: ");
        stringBuilder.append(null);
        stringBuilder.append("\n");
        return stringBuilder.toString();
    }

    public final /* bridge */ /* synthetic */ Object get() {
        return AndroidModule.provideMediaPlayer();
    }
}
