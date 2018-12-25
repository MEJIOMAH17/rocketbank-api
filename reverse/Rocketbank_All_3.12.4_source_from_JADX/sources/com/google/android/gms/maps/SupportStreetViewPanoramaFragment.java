package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;

public class SupportStreetViewPanoramaFragment extends Fragment {
    private final zzb zzboU = new zzb(this);

    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private Activity mActivity;
        private final Fragment zzaRN;
        private final List<OnStreetViewPanoramaReadyCallback> zzboH = new ArrayList();
        protected zze<zza> zzboq;

        zzb(Fragment fragment) {
            this.zzaRN = fragment;
        }

        private void setActivity(Activity activity) {
            this.mActivity = activity;
            zzJz();
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
            r0 = r4.mActivity;
            if (r0 == 0) goto L_0x0058;
        L_0x0004:
            r0 = r4.zzboq;
            if (r0 == 0) goto L_0x0058;
        L_0x0008:
            r0 = r4.zzBN();
            if (r0 != 0) goto L_0x0058;
        L_0x000e:
            r0 = r4.mActivity;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            com.google.android.gms.maps.MapsInitializer.initialize(r0);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0 = r4.mActivity;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0 = com.google.android.gms.maps.internal.zzai.zzbI(r0);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r1 = r4.mActivity;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r1 = com.google.android.gms.dynamic.zzd.zzA(r1);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0 = r0.zzJ(r1);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r1 = r4.zzboq;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r2 = new com.google.android.gms.maps.SupportStreetViewPanoramaFragment$zza;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r3 = r4.zzaRN;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r2.<init>(r3, r0);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r1.zza(r2);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0 = r4.zzboH;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0 = r0.iterator();	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
        L_0x0035:
            r1 = r0.hasNext();	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            if (r1 == 0) goto L_0x004b;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
        L_0x003b:
            r1 = r0.next();	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r1 = (com.google.android.gms.maps.OnStreetViewPanoramaReadyCallback) r1;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r2 = r4.zzBN();	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r2 = (com.google.android.gms.maps.SupportStreetViewPanoramaFragment.zza) r2;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r2.getStreetViewPanoramaAsync(r1);	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            goto L_0x0035;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
        L_0x004b:
            r0 = r4.zzboH;	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            r0.clear();	 Catch:{ RemoteException -> 0x0051, GooglePlayServicesNotAvailableException -> 0x0058 }
            return;
        L_0x0051:
            r0 = move-exception;
            r1 = new com.google.android.gms.maps.model.RuntimeRemoteException;
            r1.<init>(r0);
            throw r1;
        L_0x0058:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.SupportStreetViewPanoramaFragment.zzb.zzJz():void");
        }

        protected void zza(zze<zza> zze) {
            this.zzboq = zze;
            zzJz();
        }
    }

    static class zza implements StreetViewLifecycleDelegate {
        private final Fragment zzaRN;
        private final IStreetViewPanoramaFragmentDelegate zzboF;

        public zza(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate) {
            this.zzboF = (IStreetViewPanoramaFragmentDelegate) zzac.zzw(iStreetViewPanoramaFragmentDelegate);
            this.zzaRN = (Fragment) zzac.zzw(fragment);
        }

        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.zzboF.getStreetViewPanoramaAsync(new com.google.android.gms.maps.internal.zzaf.zza(this) {
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
                Bundle arguments = this.zzaRN.getArguments();
                if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                    zzah.zza(bundle2, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
                }
                this.zzboF.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                IObjectWrapper onCreateView = this.zzboF.onCreateView(zzd.zzA(layoutInflater), zzd.zzA(viewGroup), bundle2);
                zzah.zzd(bundle2, bundle);
                return (View) zzd.zzF(onCreateView);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onDestroy() {
            try {
                this.zzboF.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onDestroyView() {
            try {
                this.zzboF.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                bundle = new Bundle();
                zzah.zzd(bundle2, bundle);
                this.zzboF.onInflate(zzd.zzA(activity), null, bundle);
                zzah.zzd(bundle, bundle2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onLowMemory() {
            try {
                this.zzboF.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onPause() {
            try {
                this.zzboF.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onResume() {
            try {
                this.zzboF.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzboF.onSaveInstanceState(bundle2);
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

    public static SupportStreetViewPanoramaFragment newInstance() {
        return new SupportStreetViewPanoramaFragment();
    }

    public static SupportStreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        SupportStreetViewPanoramaFragment supportStreetViewPanoramaFragment = new SupportStreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewPanoramaOptions", streetViewPanoramaOptions);
        supportStreetViewPanoramaFragment.setArguments(bundle);
        return supportStreetViewPanoramaFragment;
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        zzac.zzdj("getStreetViewPanoramaAsync() must be called on the main thread");
        this.zzboU.getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
    }

    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.zzboU.setActivity(activity);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzboU.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.zzboU.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onDestroy() {
        this.zzboU.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView() {
        this.zzboU.onDestroyView();
        super.onDestroyView();
    }

    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        this.zzboU.setActivity(activity);
        this.zzboU.onInflate(activity, new Bundle(), bundle);
    }

    public void onLowMemory() {
        this.zzboU.onLowMemory();
        super.onLowMemory();
    }

    public void onPause() {
        this.zzboU.onPause();
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.zzboU.onResume();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.zzboU.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
