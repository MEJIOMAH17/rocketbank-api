package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.InputStream;

public final class ImageVideoModelLoader<A> implements ModelLoader<A, ImageVideoWrapper> {
    private final ModelLoader<A, ParcelFileDescriptor> fileDescriptorLoader;
    private final ModelLoader<A, InputStream> streamLoader;

    static class ImageVideoFetcher implements DataFetcher<ImageVideoWrapper> {
        private final DataFetcher<ParcelFileDescriptor> fileDescriptorFetcher;
        private final DataFetcher<InputStream> streamFetcher;

        public ImageVideoFetcher(DataFetcher<InputStream> dataFetcher, DataFetcher<ParcelFileDescriptor> dataFetcher2) {
            this.streamFetcher = dataFetcher;
            this.fileDescriptorFetcher = dataFetcher2;
        }

        private ImageVideoWrapper loadData(Priority priority) throws Exception {
            InputStream inputStream;
            if (this.streamFetcher != null) {
                try {
                    inputStream = (InputStream) this.streamFetcher.loadData(priority);
                } catch (Throwable e) {
                    if (Log.isLoggable("IVML", 2)) {
                        Log.v("IVML", "Exception fetching input stream, trying ParcelFileDescriptor", e);
                    }
                    if (this.fileDescriptorFetcher == null) {
                        throw e;
                    }
                }
                if (this.fileDescriptorFetcher != null) {
                    try {
                        priority = (ParcelFileDescriptor) this.fileDescriptorFetcher.loadData(priority);
                    } catch (Priority priority2) {
                        if (Log.isLoggable("IVML", 2)) {
                            Log.v("IVML", "Exception fetching ParcelFileDescriptor", priority2);
                        }
                        if (inputStream == null) {
                            throw priority2;
                        }
                    }
                    return new ImageVideoWrapper(inputStream, priority2);
                }
                priority2 = null;
                return new ImageVideoWrapper(inputStream, priority2);
            }
            inputStream = null;
            if (this.fileDescriptorFetcher != null) {
                priority2 = (ParcelFileDescriptor) this.fileDescriptorFetcher.loadData(priority2);
                return new ImageVideoWrapper(inputStream, priority2);
            }
            priority2 = null;
            return new ImageVideoWrapper(inputStream, priority2);
        }

        public final void cleanup() {
            if (this.streamFetcher != null) {
                this.streamFetcher.cleanup();
            }
            if (this.fileDescriptorFetcher != null) {
                this.fileDescriptorFetcher.cleanup();
            }
        }

        public final String getId() {
            if (this.streamFetcher != null) {
                return this.streamFetcher.getId();
            }
            return this.fileDescriptorFetcher.getId();
        }

        public final void cancel() {
            if (this.streamFetcher != null) {
                this.streamFetcher.cancel();
            }
            if (this.fileDescriptorFetcher != null) {
                this.fileDescriptorFetcher.cancel();
            }
        }
    }

    public ImageVideoModelLoader(ModelLoader<A, InputStream> modelLoader, ModelLoader<A, ParcelFileDescriptor> modelLoader2) {
        if (modelLoader == null && modelLoader2 == null) {
            throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.streamLoader = modelLoader;
        this.fileDescriptorLoader = modelLoader2;
    }

    public final DataFetcher<ImageVideoWrapper> getResourceFetcher(A a, int i, int i2) {
        DataFetcher resourceFetcher = this.streamLoader != null ? this.streamLoader.getResourceFetcher(a, i, i2) : null;
        a = this.fileDescriptorLoader != null ? this.fileDescriptorLoader.getResourceFetcher(a, i, i2) : null;
        if (resourceFetcher == null) {
            if (a == null) {
                return null;
            }
        }
        return new ImageVideoFetcher(resourceFetcher, a);
    }
}
