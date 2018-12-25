package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.maps.model.internal.zzi;

public final class TileOverlayOptions extends zza {
    public static final Creator<TileOverlayOptions> CREATOR = new zzr();
    private zzi zzbpV;
    private TileProvider zzbpW;
    private boolean zzbpX = true;
    private float zzbph;
    private boolean zzbpi = true;
    private float zzbpq = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: com.google.android.gms.maps.model.TileOverlayOptions$1 */
    class C12141 implements TileProvider {
        private final zzi zzbpY = this.zzbpZ.zzbpV;
        final /* synthetic */ TileOverlayOptions zzbpZ;

        C12141(TileOverlayOptions tileOverlayOptions) {
            this.zzbpZ = tileOverlayOptions;
        }

        public com.google.android.gms.maps.model.Tile getTile(int r2, int r3, int r4) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r1 = this;
            r0 = r1.zzbpY;	 Catch:{ RemoteException -> 0x0007 }
            r2 = r0.getTile(r2, r3, r4);	 Catch:{ RemoteException -> 0x0007 }
            return r2;
        L_0x0007:
            r2 = 0;
            return r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.TileOverlayOptions.1.getTile(int, int, int):com.google.android.gms.maps.model.Tile");
        }
    }

    TileOverlayOptions(IBinder iBinder, boolean z, float f, boolean z2, float f2) {
        this.zzbpV = zzi.zza.zzer(iBinder);
        this.zzbpW = this.zzbpV == null ? null : new C12141(this);
        this.zzbpi = z;
        this.zzbph = f;
        this.zzbpX = z2;
        this.zzbpq = f2;
    }

    public final TileOverlayOptions fadeIn(boolean z) {
        this.zzbpX = z;
        return this;
    }

    public final boolean getFadeIn() {
        return this.zzbpX;
    }

    public final TileProvider getTileProvider() {
        return this.zzbpW;
    }

    public final float getTransparency() {
        return this.zzbpq;
    }

    public final float getZIndex() {
        return this.zzbph;
    }

    public final boolean isVisible() {
        return this.zzbpi;
    }

    public final TileOverlayOptions tileProvider(final TileProvider tileProvider) {
        this.zzbpW = tileProvider;
        this.zzbpV = this.zzbpW == null ? null : new zzi.zza(this) {
            public Tile getTile(int i, int i2, int i3) {
                return tileProvider.getTile(i, i2, i3);
            }
        };
        return this;
    }

    public final TileOverlayOptions transparency(float f) {
        boolean z = f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f;
        zzac.zzb(z, (Object) "Transparency must be in the range [0..1]");
        this.zzbpq = f;
        return this;
    }

    public final TileOverlayOptions visible(boolean z) {
        this.zzbpi = z;
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        zzr.zza(this, parcel, i);
    }

    public final TileOverlayOptions zIndex(float f) {
        this.zzbph = f;
        return this;
    }

    final IBinder zzJQ() {
        return this.zzbpV.asBinder();
    }
}
