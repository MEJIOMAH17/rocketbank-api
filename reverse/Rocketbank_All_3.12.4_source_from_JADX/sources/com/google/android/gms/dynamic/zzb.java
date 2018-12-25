package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc.zza;

@SuppressLint({"NewApi"})
public final class zzb extends zza {
    private Fragment zzaRK;

    private zzb(Fragment fragment) {
        this.zzaRK = fragment;
    }

    public static zzb zza(Fragment fragment) {
        return fragment != null ? new zzb(fragment) : null;
    }

    public final Bundle getArguments() {
        return this.zzaRK.getArguments();
    }

    public final int getId() {
        return this.zzaRK.getId();
    }

    public final boolean getRetainInstance() {
        return this.zzaRK.getRetainInstance();
    }

    public final String getTag() {
        return this.zzaRK.getTag();
    }

    public final int getTargetRequestCode() {
        return this.zzaRK.getTargetRequestCode();
    }

    public final boolean getUserVisibleHint() {
        return this.zzaRK.getUserVisibleHint();
    }

    public final IObjectWrapper getView() {
        return zzd.zzA(this.zzaRK.getView());
    }

    public final boolean isAdded() {
        return this.zzaRK.isAdded();
    }

    public final boolean isDetached() {
        return this.zzaRK.isDetached();
    }

    public final boolean isHidden() {
        return this.zzaRK.isHidden();
    }

    public final boolean isInLayout() {
        return this.zzaRK.isInLayout();
    }

    public final boolean isRemoving() {
        return this.zzaRK.isRemoving();
    }

    public final boolean isResumed() {
        return this.zzaRK.isResumed();
    }

    public final boolean isVisible() {
        return this.zzaRK.isVisible();
    }

    public final void setHasOptionsMenu(boolean z) {
        this.zzaRK.setHasOptionsMenu(z);
    }

    public final void setMenuVisibility(boolean z) {
        this.zzaRK.setMenuVisibility(z);
    }

    public final void setRetainInstance(boolean z) {
        this.zzaRK.setRetainInstance(z);
    }

    public final void setUserVisibleHint(boolean z) {
        this.zzaRK.setUserVisibleHint(z);
    }

    public final void startActivity(Intent intent) {
        this.zzaRK.startActivity(intent);
    }

    public final void startActivityForResult(Intent intent, int i) {
        this.zzaRK.startActivityForResult(intent, i);
    }

    public final IObjectWrapper zzBO() {
        return zzd.zzA(this.zzaRK.getActivity());
    }

    public final zzc zzBP() {
        return zza(this.zzaRK.getParentFragment());
    }

    public final IObjectWrapper zzBQ() {
        return zzd.zzA(this.zzaRK.getResources());
    }

    public final zzc zzBR() {
        return zza(this.zzaRK.getTargetFragment());
    }

    public final void zzD(IObjectWrapper iObjectWrapper) {
        this.zzaRK.registerForContextMenu((View) zzd.zzF(iObjectWrapper));
    }

    public final void zzE(IObjectWrapper iObjectWrapper) {
        this.zzaRK.unregisterForContextMenu((View) zzd.zzF(iObjectWrapper));
    }
}
