package com.bumptech.glide.gifdecoder;

import java.util.ArrayList;
import java.util.List;

public final class GifHeader {
    int bgColor;
    int bgIndex;
    GifFrame currentFrame;
    int frameCount = 0;
    List<GifFrame> frames = new ArrayList();
    int[] gct = null;
    boolean gctFlag;
    int gctSize;
    int height;
    int loopCount = -1;
    int pixelAspect;
    int status = 0;
    int width;

    public final int getNumFrames() {
        return this.frameCount;
    }

    public final int getStatus() {
        return this.status;
    }
}
