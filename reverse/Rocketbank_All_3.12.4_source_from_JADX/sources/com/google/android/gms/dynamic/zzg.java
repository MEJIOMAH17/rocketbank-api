package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.google.android.gms.dynamic.zzc.zza;

public final class zzg extends zza {
    private Fragment zzaRN;

    private zzg(Fragment fragment) {
        this.zzaRN = fragment;
    }

    public static zzg zza(Fragment fragment) {
        return fragment != null ? new zzg(fragment) : null;
    }

    public final Bundle getArguments() {
        return this.zzaRN.getArguments();
    }

    public final int getId() {
        return this.zzaRN.getId();
    }

    public final boolean getRetainInstance() {
        return this.zzaRN.getRetainInstance();
    }

    public final String getTag() {
        return this.zzaRN.getTag();
    }

    public final int getTargetRequestCode() {
        return this.zzaRN.getTargetRequestCode();
    }

    public final boolean getUserVisibleHint() {
        return this.zzaRN.getUserVisibleHint();
    }

    public final IObjectWrapper getView() {
        return zzd.zzA(this.zzaRN.getView());
    }

    public final boolean isAdded() {
        return this.zzaRN.isAdded();
    }

    public final boolean isDetached() {
        return this.zzaRN.isDetached();
    }

    public final boolean isHidden() {
        return this.zzaRN.isHidden();
    }

    public final boolean isInLayout() {
        return this.zzaRN.isInLayout();
    }

    public final boolean isRemoving() {
        return this.zzaRN.isRemoving();
    }

    public final boolean isResumed() {
        return this.zzaRN.isResumed();
    }

    public final boolean isVisible() {
        return this.zzaRN.isVisible();
    }

    public final void setHasOptionsMenu(boolean z) {
        this.zzaRN.setHasOptionsMenu(z);
    }

    public final void setMenuVisibility(boolean z) {
        this.zzaRN.setMenuVisibility(z);
    }

    public final void setRetainInstance(boolean z) {
        this.zzaRN.setRetainInstance(z);
    }

    public final void setUserVisibleHint(boolean z) {
        this.zzaRN.setUserVisibleHint(z);
    }

    public final void startActivity(Intent intent) {
        this.zzaRN.startActivity(intent);
    }

    public final void startActivityForResult(Intent intent, int i) {
        this.zzaRN.startActivityForResult(intent, i);
    }

    public final IObjectWrapper zzBO() {
        return zzd.zzA(this.zzaRN.getActivity());
    }

    public final zzc zzBP() {
        return zza(this.zzaRN.getParentFragment());
    }

    public final IObjectWrapper zzBQ() {
        return zzd.zzA(this.zzaRN.getResources());
    }

    public final zzc zzBR() {
        return zza(this.zzaRN.getTargetFragment());
    }

    public final void zzD(IObjectWrapper iObjectWrapper) {
        this.zzaRN.registerForContextMenu((View) zzd.zzF(iObjectWrapper));
    }

    public final void zzE(IObjectWrapper iObjectWrapper) {
        this.zzaRN.unregisterForContextMenu((View) zzd.zzF(iObjectWrapper));
    }
}
