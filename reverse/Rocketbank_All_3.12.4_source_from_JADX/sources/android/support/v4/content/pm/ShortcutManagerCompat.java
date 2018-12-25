package android.support.v4.content.pm;

import android.content.BroadcastReceiver;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.support.coreui.C0888R.style;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableResource;

public final class ShortcutManagerCompat implements Transformation<GifDrawable> {
    private final BitmapPool bitmapPool;
    private final Transformation<Bitmap> wrapped;

    /* renamed from: android.support.v4.content.pm.ShortcutManagerCompat$1 */
    static class C01201 extends BroadcastReceiver {
        final /* synthetic */ IntentSender val$callback;

        public final void onReceive(android.content.Context r7, android.content.Intent r8) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r6 = this;
            r0 = r6.val$callback;	 Catch:{ SendIntentException -> 0x000b }
            r2 = 0;	 Catch:{ SendIntentException -> 0x000b }
            r3 = 0;	 Catch:{ SendIntentException -> 0x000b }
            r4 = 0;	 Catch:{ SendIntentException -> 0x000b }
            r5 = 0;	 Catch:{ SendIntentException -> 0x000b }
            r1 = r7;	 Catch:{ SendIntentException -> 0x000b }
            r0.sendIntent(r1, r2, r3, r4, r5);	 Catch:{ SendIntentException -> 0x000b }
            return;
        L_0x000b:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.pm.ShortcutManagerCompat.1.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public ShortcutManagerCompat(Transformation<Bitmap> transformation, BitmapPool bitmapPool) {
        this.wrapped = transformation;
        this.bitmapPool = bitmapPool;
    }

    public final Resource<GifDrawable> transform(Resource<GifDrawable> resource, int i, int i2) {
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        Bitmap firstFrame = ((GifDrawable) resource.get()).getFirstFrame();
        Bitmap bitmap = (Bitmap) this.wrapped.transform(new style(firstFrame, this.bitmapPool), i, i2).get();
        return bitmap.equals(firstFrame) == 0 ? new GifDrawableResource(new GifDrawable(gifDrawable, bitmap, this.wrapped)) : resource;
    }

    public final String getId() {
        return this.wrapped.getId();
    }
}
