package com.bumptech.glide.integration.okhttp3;

import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader.Factory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.module.GlideModule;
import java.io.InputStream;

public class OkHttpGlideModule implements GlideModule {
    public final void registerComponents$6690f2bc(Glide glide) {
        glide.register(GlideUrl.class, InputStream.class, new Factory());
    }
}
