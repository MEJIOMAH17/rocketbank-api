package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;

public class MapView extends FrameLayout {
    private final zzb zzbos;

    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private final Context mContext;
        protected zze<zza> zzboq;
        private final List<OnMapReadyCallback> zzbor = new ArrayList();
        private final ViewGroup zzbow;
        private final GoogleMapOptions zzbox;

        zzb(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.zzbow = viewGroup;
            this.mContext = context;
            this.zzbox = googleMapOptions;
        }

        public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
            if (zzBN() != null) {
                ((zza) zzBN()).getMapAsync(onMapReadyCallback);
            } else {
                this.zzbor.add(onMapReadyCallback);
            }
        }

        public void onEnterAmbient(Bundle bundle) {
            if (zzBN() != null) {
                ((zza) zzBN()).onEnterAmbient(bundle);
            }
        }

        public void onExitAmbient() {
            if (zzBN() != null) {
                ((zza) zzBN()).onExitAmbient();
            }
        }

        public void zzJz() {
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
            r4 = this;
            r0 = r4.zzboq;
            if (r0 == 0) goto L_0x0059;
        L_0x0004:
            r0 = r4.zzBN();
            if (r0 != 0) goto L_0x0059;
        L_0x000a:
            r0 = r4.mContext;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            com.google.android.gms.maps.MapsInitializer.initialize(r0);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0 = r4.mContext;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0 = com.google.android.gms.maps.internal.zzai.zzbI(r0);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r1 = r4.mContext;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r1 = com.google.android.gms.dynamic.zzd.zzA(r1);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2 = r4.zzbox;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0 = r0.zza(r1, r2);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            if (r0 != 0) goto L_0x0024;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
        L_0x0023:
            return;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
        L_0x0024:
            r1 = r4.zzboq;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2 = new com.google.android.gms.maps.MapView$zza;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r3 = r4.zzbow;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2.<init>(r3, r0);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r1.zza(r2);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0 = r4.zzbor;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0 = r0.iterator();	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
        L_0x0036:
            r1 = r0.hasNext();	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            if (r1 == 0) goto L_0x004c;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
        L_0x003c:
            r1 = r0.next();	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r1 = (com.google.android.gms.maps.OnMapReadyCallback) r1;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2 = r4.zzBN();	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2 = (com.google.android.gms.maps.MapView.zza) r2;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r2.getMapAsync(r1);	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            goto L_0x0036;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
        L_0x004c:
            r0 = r4.zzbor;	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            r0.clear();	 Catch:{ RemoteException -> 0x0052, GooglePlayServicesNotAvailableException -> 0x0059 }
            return;
        L_0x0052:
            r0 = move-exception;
            r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
            r1.<init>(r0);
            throw r1;
        L_0x0059:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.MapView.zzb.zzJz():void");
        }

        protected void zza(zze<zza> zze) {
            this.zzboq = zze;
            zzJz();
        }
    }

    static class zza implements MapLifecycleDelegate {
        private final ViewGroup zzbot;
        private final IMapViewDelegate zzbou;
        private View zzbov;

        public zza(ViewGroup viewGroup, IMapViewDelegate iMapViewDelegate) {
            this.zzbou = (IMapViewDelegate) zzac.zzw(iMapViewDelegate);
            this.zzbot = (ViewGroup) zzac.zzw(viewGroup);
        }

        public void getMapAsync(final OnMapReadyCallback onMapReadyCallback) {
            try {
                this.zzbou.getMapAsync(new com.google.android.gms.maps.internal.zzt.zza(this) {
                    public void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException {
                        onMapReadyCallback.onMapReady(new GoogleMap(iGoogleMapDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbou.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
                this.zzbov = (View) zzd.zzF(this.zzbou.getView());
                this.zzbot.removeAllViews();
                this.zzbot.addView(this.zzbov);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        public void onDestroy() {
            try {
                this.zzbou.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        public void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbou.onEnterAmbient(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onExitAmbient() {
            try {
                this.zzbou.onExitAmbient();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        public void onLowMemory() {
            try {
                this.zzbou.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onPause() {
            try {
                this.zzbou.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onResume() {
            try {
                this.zzbou.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbou.onSaveInstanceState(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onStart() {
            try {
                this.zzbou.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onStop() {
            try {
                this.zzbou.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.zzbos = new zzb(this, context, null);
        zzJA();
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzbos = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        zzJA();
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzbos = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        zzJA();
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.zzbos = new zzb(this, context, googleMapOptions);
        zzJA();
    }

    private void zzJA() {
        setClickable(true);
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        zzac.zzdj("getMapAsync() must be called on the main thread");
        this.zzbos.getMapAsync(onMapReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        this.zzbos.onCreate(bundle);
        if (this.zzbos.zzBN() == null) {
            com.google.android.gms.dynamic.zza.zzb((FrameLayout) this);
        }
    }

    public final void onDestroy() {
        this.zzbos.onDestroy();
    }

    public final void onEnterAmbient(Bundle bundle) {
        zzac.zzdj("onEnterAmbient() must be called on the main thread");
        this.zzbos.onEnterAmbient(bundle);
    }

    public final void onExitAmbient() {
        zzac.zzdj("onExitAmbient() must be called on the main thread");
        this.zzbos.onExitAmbient();
    }

    public final void onLowMemory() {
        this.zzbos.onLowMemory();
    }

    public final void onPause() {
        this.zzbos.onPause();
    }

    public final void onResume() {
        this.zzbos.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.zzbos.onSaveInstanceState(bundle);
    }

    public final void onStart() {
        this.zzbos.onStart();
    }

    public final void onStop() {
        this.zzbos.onStop();
    }
}
