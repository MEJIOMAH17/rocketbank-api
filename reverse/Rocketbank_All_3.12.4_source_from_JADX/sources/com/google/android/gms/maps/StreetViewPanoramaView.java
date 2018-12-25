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
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;

public class StreetViewPanoramaView extends FrameLayout {
    private final zzb zzboP;

    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private final Context mContext;
        private final List<OnStreetViewPanoramaReadyCallback> zzboH = new ArrayList();
        private final StreetViewPanoramaOptions zzboS;
        protected zze<zza> zzboq;
        private final ViewGroup zzbow;

        zzb(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.zzbow = viewGroup;
            this.mContext = context;
            this.zzboS = streetViewPanoramaOptions;
        }

        public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (zzBN() != null) {
                ((zza) zzBN()).getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.zzboH.add(onStreetViewPanoramaReadyCallback);
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
            if (r0 == 0) goto L_0x0051;
        L_0x0004:
            r0 = r4.zzBN();
            if (r0 != 0) goto L_0x0051;
        L_0x000a:
            r0 = r4.mContext;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r0 = com.google.android.gms.maps.internal.zzai.zzbI(r0);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r1 = r4.mContext;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r1 = com.google.android.gms.dynamic.zzd.zzA(r1);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2 = r4.zzboS;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r0 = r0.zza(r1, r2);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r1 = r4.zzboq;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2 = new com.google.android.gms.maps.StreetViewPanoramaView$zza;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r3 = r4.zzbow;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2.<init>(r3, r0);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r1.zza(r2);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r0 = r4.zzboH;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r0 = r0.iterator();	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
        L_0x002e:
            r1 = r0.hasNext();	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            if (r1 == 0) goto L_0x0044;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
        L_0x0034:
            r1 = r0.next();	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r1 = (com.google.android.gms.maps.OnStreetViewPanoramaReadyCallback) r1;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2 = r4.zzBN();	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2 = (com.google.android.gms.maps.StreetViewPanoramaView.zza) r2;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r2.getStreetViewPanoramaAsync(r1);	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            goto L_0x002e;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
        L_0x0044:
            r0 = r4.zzboH;	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            r0.clear();	 Catch:{ RemoteException -> 0x004a, GooglePlayServicesNotAvailableException -> 0x0051 }
            return;
        L_0x004a:
            r0 = move-exception;
            r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
            r1.<init>(r0);
            throw r1;
        L_0x0051:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.StreetViewPanoramaView.zzb.zzJz():void");
        }

        protected void zza(zze<zza> zze) {
            this.zzboq = zze;
            zzJz();
        }
    }

    static class zza implements StreetViewLifecycleDelegate {
        private final IStreetViewPanoramaViewDelegate zzboQ;
        private View zzboR;
        private final ViewGroup zzbot;

        public zza(ViewGroup viewGroup, IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegate) {
            this.zzboQ = (IStreetViewPanoramaViewDelegate) zzac.zzw(iStreetViewPanoramaViewDelegate);
            this.zzbot = (ViewGroup) zzac.zzw(viewGroup);
        }

        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.zzboQ.getStreetViewPanoramaAsync(new com.google.android.gms.maps.internal.zzaf.zza(this) {
                    public void zza(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) throws RemoteException {
                        onStreetViewPanoramaReadyCallback.onStreetViewPanoramaReady(new StreetViewPanorama(iStreetViewPanoramaDelegate));
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
                this.zzboQ.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
                this.zzboR = (View) zzd.zzF(this.zzboQ.getView());
                this.zzbot.removeAllViews();
                this.zzbot.addView(this.zzboR);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onDestroy() {
            try {
                this.zzboQ.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        public void onLowMemory() {
            try {
                this.zzboQ.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onPause() {
            try {
                this.zzboQ.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onResume() {
            try {
                this.zzboQ.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzboQ.onSaveInstanceState(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onStart() {
        }

        public void onStop() {
        }
    }

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.zzboP = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzboP = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzboP = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.zzboP = new zzb(this, context, streetViewPanoramaOptions);
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        zzac.zzdj("getStreetViewPanoramaAsync() must be called on the main thread");
        this.zzboP.getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        this.zzboP.onCreate(bundle);
        if (this.zzboP.zzBN() == null) {
            com.google.android.gms.dynamic.zza.zzb((FrameLayout) this);
        }
    }

    public final void onDestroy() {
        this.zzboP.onDestroy();
    }

    public final void onLowMemory() {
        this.zzboP.onLowMemory();
    }

    public final void onPause() {
        this.zzboP.onPause();
    }

    public final void onResume() {
        this.zzboP.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.zzboP.onSaveInstanceState(bundle);
    }
}
