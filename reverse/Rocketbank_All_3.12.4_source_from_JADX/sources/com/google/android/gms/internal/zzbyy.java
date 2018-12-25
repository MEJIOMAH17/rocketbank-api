package com.google.android.gms.internal;

import android.support.v4.media.session.PlaybackStateCompat;

final class zzbyy {
    static zzbyx zzcyc;
    static long zzcye;

    private zzbyy() {
    }

    static zzbyx zzafZ() {
        synchronized (zzbyy.class) {
            if (zzcyc != null) {
                zzbyx zzbyx = zzcyc;
                zzcyc = zzbyx.zzcyc;
                zzbyx.zzcyc = null;
                zzcye -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return zzbyx;
            }
            return new zzbyx();
        }
    }

    static void zzb(zzbyx zzbyx) {
        if (zzbyx.zzcyc == null) {
            if (zzbyx.zzcyd == null) {
                if (!zzbyx.zzcya) {
                    synchronized (zzbyy.class) {
                        if (zzcye + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                            return;
                        }
                        zzcye += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        zzbyx.zzcyc = zzcyc;
                        zzbyx.limit = 0;
                        zzbyx.pos = 0;
                        zzcyc = zzbyx;
                        return;
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
