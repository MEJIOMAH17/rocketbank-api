package com.flurry.sdk;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class jw<K, V> {
    /* renamed from: a */
    public final Map<K, List<V>> f315a;
    /* renamed from: b */
    private int f316b;

    public jw() {
        this.f315a = new HashMap();
    }

    public jw(Map<K, List<V>> map) {
        this.f315a = map;
    }

    /* renamed from: a */
    public final void m136a() {
        this.f315a.clear();
    }

    /* renamed from: a */
    public final List<V> m134a(K k) {
        if (k == null) {
            return Collections.emptyList();
        }
        k = m135a((Object) k, false);
        return k == null ? Collections.emptyList() : k;
    }

    /* renamed from: a */
    public final void m138a(K k, V v) {
        if (k != null) {
            m135a((Object) k, true).add(v);
        }
    }

    /* renamed from: a */
    public final void m137a(jw<K, V> jwVar) {
        if (jwVar != null) {
            jwVar = jwVar.f315a.entrySet().iterator();
            while (jwVar.hasNext()) {
                Entry entry = (Entry) jwVar.next();
                m135a(entry.getKey(), true).addAll((Collection) entry.getValue());
            }
        }
    }

    /* renamed from: b */
    public final boolean m141b(K k, V v) {
        if (k == null) {
            return false;
        }
        List a = m135a((Object) k, false);
        if (a == null) {
            return false;
        }
        v = a.remove(v);
        if (a.size() == 0) {
            this.f315a.remove(k);
        }
        return v;
    }

    /* renamed from: b */
    public final boolean m140b(K k) {
        return (k == null || ((List) this.f315a.remove(k)) == null) ? false : true;
    }

    /* renamed from: b */
    public final Collection<Entry<K, V>> m139b() {
        Collection arrayList = new ArrayList();
        for (Entry entry : this.f315a.entrySet()) {
            for (Object simpleImmutableEntry : (List) entry.getValue()) {
                arrayList.add(new SimpleImmutableEntry(entry.getKey(), simpleImmutableEntry));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final Collection<V> m142c() {
        Collection arrayList = new ArrayList();
        for (Entry value : this.f315a.entrySet()) {
            arrayList.addAll((Collection) value.getValue());
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<V> m135a(K k, boolean z) {
        List<V> list = (List) this.f315a.get(k);
        if (z && list == null) {
            if (this.f316b <= false) {
                z = new ArrayList(this.f316b);
            } else {
                z = new ArrayList();
            }
            list = z;
            this.f315a.put(k, list);
        }
        return list;
    }
}
