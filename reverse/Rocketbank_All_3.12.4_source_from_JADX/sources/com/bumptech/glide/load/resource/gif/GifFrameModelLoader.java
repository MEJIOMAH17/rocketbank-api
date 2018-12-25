package com.bumptech.glide.load.resource.gif;

import com.bumptech.glide.Priority;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;

final class GifFrameModelLoader implements ModelLoader<GifDecoder, GifDecoder> {

    static class GifFrameDataFetcher implements DataFetcher<GifDecoder> {
        private final GifDecoder decoder;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        public GifFrameDataFetcher(GifDecoder gifDecoder) {
            this.decoder = gifDecoder;
        }

        public final String getId() {
            return String.valueOf(this.decoder.getCurrentFrameIndex());
        }

        public final /* bridge */ /* synthetic */ Object loadData(Priority priority) throws Exception {
            return this.decoder;
        }
    }

    GifFrameModelLoader() {
    }

    public final /* bridge */ /* synthetic */ DataFetcher getResourceFetcher(Object obj, int i, int i2) {
        return new GifFrameDataFetcher((GifDecoder) obj);
    }
}
