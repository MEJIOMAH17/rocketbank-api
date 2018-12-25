package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class zzm {
    private AtomicInteger zzX;
    private final Map<String, Queue<zzl<?>>> zzY;
    private final Set<zzl<?>> zzZ;
    private final PriorityBlockingQueue<zzl<?>> zzaa;
    private final PriorityBlockingQueue<zzl<?>> zzab;
    private zzh[] zzac;
    private zzc zzad;
    private List<Object> zzae;
    private final zzb zzi;
    private final zzo zzj;
    private final zzg zzy;

    public zzm(zzb zzb, zzg zzg) {
        this(zzb, zzg, 4);
    }

    public zzm(zzb zzb, zzg zzg, int i) {
        this(zzb, zzg, i, new zzf(new Handler(Looper.getMainLooper())));
    }

    public zzm(zzb zzb, zzg zzg, int i, zzo zzo) {
        this.zzX = new AtomicInteger();
        this.zzY = new HashMap();
        this.zzZ = new HashSet();
        this.zzaa = new PriorityBlockingQueue();
        this.zzab = new PriorityBlockingQueue();
        this.zzae = new ArrayList();
        this.zzi = zzb;
        this.zzy = zzg;
        this.zzac = new zzh[i];
        this.zzj = zzo;
    }

    public int getSequenceNumber() {
        return this.zzX.incrementAndGet();
    }

    public void start() {
        stop();
        this.zzad = new zzc(this.zzaa, this.zzab, this.zzi, this.zzj);
        this.zzad.start();
        for (int i = 0; i < this.zzac.length; i++) {
            zzh zzh = new zzh(this.zzab, this.zzy, this.zzi, this.zzj);
            this.zzac[i] = zzh;
            zzh.start();
        }
    }

    public void stop() {
        if (this.zzad != null) {
            this.zzad.quit();
        }
        for (int i = 0; i < this.zzac.length; i++) {
            if (this.zzac[i] != null) {
                this.zzac[i].quit();
            }
        }
    }

    public <T> zzl<T> zze(zzl<T> zzl) {
        zzl.zza(this);
        synchronized (this.zzZ) {
            this.zzZ.add(zzl);
        }
        zzl.zza(getSequenceNumber());
        zzl.zzc("add-to-queue");
        if (zzl.zzn()) {
            synchronized (this.zzY) {
                String zzg = zzl.zzg();
                if (this.zzY.containsKey(zzg)) {
                    Queue queue = (Queue) this.zzY.get(zzg);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(zzl);
                    this.zzY.put(zzg, queue);
                    if (zzt.DEBUG) {
                        zzt.zza("Request for cacheKey=%s is in flight, putting on hold.", zzg);
                    }
                } else {
                    this.zzY.put(zzg, null);
                    this.zzaa.add(zzl);
                }
            }
            return zzl;
        }
        this.zzab.add(zzl);
        return zzl;
    }

    <T> void zzf(zzl<T> zzl) {
        synchronized (this.zzZ) {
            this.zzZ.remove(zzl);
        }
        synchronized (this.zzae) {
            Iterator it = this.zzae.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        if (zzl.zzn()) {
            synchronized (this.zzY) {
                Queue queue = (Queue) this.zzY.remove(zzl.zzg());
                if (queue != null) {
                    if (zzt.DEBUG) {
                        zzt.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), r7);
                    }
                    this.zzaa.addAll(queue);
                }
            }
        }
    }
}
