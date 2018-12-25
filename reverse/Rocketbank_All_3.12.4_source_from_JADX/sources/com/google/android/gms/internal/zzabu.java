package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public final class zzabu extends Fragment implements zzabf {
    private static WeakHashMap<FragmentActivity, WeakReference<zzabu>> zzaCS = new WeakHashMap();
    private int zzJO = 0;
    private Map<String, zzabe> zzaCT = new ArrayMap();
    private Bundle zzaCU;

    public static zzabu zza(FragmentActivity fragmentActivity) {
        zzabu zzabu;
        WeakReference weakReference = (WeakReference) zzaCS.get(fragmentActivity);
        if (weakReference != null) {
            zzabu = (zzabu) weakReference.get();
            if (zzabu != null) {
                return zzabu;
            }
        }
        try {
            zzabu = (zzabu) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
            if (zzabu == null || zzabu.isRemoving()) {
                zzabu = new zzabu();
                fragmentActivity.getSupportFragmentManager().beginTransaction().add((Fragment) zzabu, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
            }
            zzaCS.put(fragmentActivity, new WeakReference(zzabu));
            return zzabu;
        } catch (Throwable e) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
        }
    }

    private void zzb(final String str, final zzabe zzabe) {
        if (this.zzJO > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable(this) {
                final /* synthetic */ zzabu zzaDk;

                public void run() {
                    if (this.zzaDk.zzJO > 0) {
                        zzabe.onCreate(this.zzaDk.zzaCU != null ? this.zzaDk.zzaCU.getBundle(str) : null);
                    }
                    if (this.zzaDk.zzJO >= 2) {
                        zzabe.onStart();
                    }
                    if (this.zzaDk.zzJO >= 3) {
                        zzabe.onStop();
                    }
                    if (this.zzaDk.zzJO >= 4) {
                        zzabe.onDestroy();
                    }
                }
            });
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (zzabe dump : this.zzaCT.values()) {
            dump.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (zzabe onActivityResult : this.zzaCT.values()) {
            onActivityResult.onActivityResult(i, i2, intent);
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzJO = 1;
        this.zzaCU = bundle;
        for (Entry entry : this.zzaCT.entrySet()) {
            ((zzabe) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public final void onDestroy() {
        super.onDestroy();
        this.zzJO = 4;
        for (zzabe onDestroy : this.zzaCT.values()) {
            onDestroy.onDestroy();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Entry entry : this.zzaCT.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((zzabe) entry.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        this.zzJO = 2;
        for (zzabe onStart : this.zzaCT.values()) {
            onStart.onStart();
        }
    }

    public final void onStop() {
        super.onStop();
        this.zzJO = 3;
        for (zzabe onStop : this.zzaCT.values()) {
            onStop.onStop();
        }
    }

    public final <T extends zzabe> T zza(String str, Class<T> cls) {
        return (zzabe) cls.cast(this.zzaCT.get(str));
    }

    public final void zza(String str, zzabe zzabe) {
        if (this.zzaCT.containsKey(str)) {
            StringBuilder stringBuilder = new StringBuilder(59 + String.valueOf(str).length());
            stringBuilder.append("LifecycleCallback with tag ");
            stringBuilder.append(str);
            stringBuilder.append(" already added to this fragment.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.zzaCT.put(str, zzabe);
        zzb(str, zzabe);
    }

    public final /* synthetic */ Activity zzwV() {
        return zzwZ();
    }

    public final FragmentActivity zzwZ() {
        return getActivity();
    }
}
