package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import bolts.Task.UnobservedExceptionHandler;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.io.File;

@Deprecated
public final class ParcelableCompat<A, T, Z, R> implements LoadProvider<A, T, Z, R> {
    private final DataLoadProvider<T, Z> dataLoadProvider;
    private final ModelLoader<A, T> modelLoader;
    private final ResourceTranscoder<Z, R> transcoder;

    static class ParcelableCompatCreatorHoneycombMR2<T> implements ClassLoaderCreator<T> {
        private final UnobservedExceptionHandler<T> mCallbacks$1627266e;

        ParcelableCompatCreatorHoneycombMR2(UnobservedExceptionHandler<T> unobservedExceptionHandler) {
            this.mCallbacks$1627266e = unobservedExceptionHandler;
        }

        public final T createFromParcel(Parcel parcel) {
            return this.mCallbacks$1627266e.createFromParcel(parcel, null);
        }

        public final T createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return this.mCallbacks$1627266e.createFromParcel(parcel, classLoader);
        }

        public final T[] newArray(int i) {
            return this.mCallbacks$1627266e.newArray(i);
        }
    }

    @Deprecated
    public static <T> Creator<T> newCreator$1bb9b842(UnobservedExceptionHandler<T> unobservedExceptionHandler) {
        return new ParcelableCompatCreatorHoneycombMR2(unobservedExceptionHandler);
    }

    public ParcelableCompat(ModelLoader<A, T> modelLoader, ResourceTranscoder<Z, R> resourceTranscoder, DataLoadProvider<T, Z> dataLoadProvider) {
        if (modelLoader == null) {
            throw new NullPointerException("ModelLoader must not be null");
        }
        this.modelLoader = modelLoader;
        if (resourceTranscoder == null) {
            throw new NullPointerException("Transcoder must not be null");
        }
        this.transcoder = resourceTranscoder;
        if (dataLoadProvider == null) {
            throw new NullPointerException("DataLoadProvider must not be null");
        }
        this.dataLoadProvider = dataLoadProvider;
    }

    public final ModelLoader<A, T> getModelLoader() {
        return this.modelLoader;
    }

    public final ResourceTranscoder<Z, R> getTranscoder() {
        return this.transcoder;
    }

    public final ResourceDecoder<File, Z> getCacheDecoder() {
        return this.dataLoadProvider.getCacheDecoder();
    }

    public final ResourceDecoder<T, Z> getSourceDecoder() {
        return this.dataLoadProvider.getSourceDecoder();
    }

    public final AnimatorUpdateListener<T> getSourceEncoder$2e726854() {
        return this.dataLoadProvider.getSourceEncoder$2e726854();
    }

    public final AnimatorUpdateListener<Z> getEncoder$743e27e$2e726854() {
        return this.dataLoadProvider.getEncoder$743e27e$2e726854();
    }
}
