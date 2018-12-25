package com.google.maps.android.quadtree;

import android.support.v7.appcompat.C0219R.bool;
import android.support.v7.appcompat.C0219R.color;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class PointQuadTree<T extends Item> {
    private final bool mBounds$6ccf0245;
    private List<PointQuadTree<T>> mChildren;
    private final int mDepth;
    private List<T> mItems;

    public interface Item {
        color getPoint$4cf92aad();
    }

    public PointQuadTree() {
        this(new bool(0.0d, 1.0d, 0.0d, 1.0d));
    }

    private PointQuadTree(bool bool) {
        this(bool, 0);
    }

    private PointQuadTree(double d, double d2, double d3, double d4, int i) {
        this(new bool(d, d2, d3, d4), i);
    }

    private PointQuadTree(bool bool, int i) {
        this.mChildren = null;
        this.mBounds$6ccf0245 = bool;
        this.mDepth = i;
    }

    public final void add(T t) {
        color point$4cf92aad = t.getPoint$4cf92aad();
        if (this.mBounds$6ccf0245.contains(point$4cf92aad.f5x, point$4cf92aad.f6y)) {
            insert(point$4cf92aad.f5x, point$4cf92aad.f6y, t);
        }
    }

    private void insert(double d, double d2, T t) {
        PointQuadTree pointQuadTree = this;
        while (pointQuadTree.mChildren != null) {
            if (d2 < pointQuadTree.mBounds$6ccf0245.midY) {
                if (d < pointQuadTree.mBounds$6ccf0245.midX) {
                    pointQuadTree = (PointQuadTree) pointQuadTree.mChildren.get(0);
                } else {
                    pointQuadTree = (PointQuadTree) pointQuadTree.mChildren.get(1);
                }
            } else if (d < pointQuadTree.mBounds$6ccf0245.midX) {
                pointQuadTree = (PointQuadTree) pointQuadTree.mChildren.get(2);
            } else {
                pointQuadTree = (PointQuadTree) pointQuadTree.mChildren.get(3);
            }
        }
        if (pointQuadTree.mItems == null) {
            pointQuadTree.mItems = new ArrayList();
        }
        pointQuadTree.mItems.add(t);
        if (pointQuadTree.mItems.size() > 50 && pointQuadTree.mDepth < 40) {
            pointQuadTree.split();
        }
    }

    private void split() {
        this.mChildren = new ArrayList(4);
        this.mChildren.add(new PointQuadTree(this.mBounds$6ccf0245.minX, this.mBounds$6ccf0245.midX, this.mBounds$6ccf0245.minY, this.mBounds$6ccf0245.midY, this.mDepth + 1));
        this.mChildren.add(new PointQuadTree(this.mBounds$6ccf0245.midX, this.mBounds$6ccf0245.maxX, this.mBounds$6ccf0245.minY, this.mBounds$6ccf0245.midY, this.mDepth + 1));
        this.mChildren.add(new PointQuadTree(this.mBounds$6ccf0245.minX, this.mBounds$6ccf0245.midX, this.mBounds$6ccf0245.midY, this.mBounds$6ccf0245.maxY, this.mDepth + 1));
        this.mChildren.add(new PointQuadTree(this.mBounds$6ccf0245.midX, this.mBounds$6ccf0245.maxX, this.mBounds$6ccf0245.midY, this.mBounds$6ccf0245.maxY, this.mDepth + 1));
        List<Item> list = this.mItems;
        this.mItems = null;
        for (Item item : list) {
            insert(item.getPoint$4cf92aad().f5x, item.getPoint$4cf92aad().f6y, item);
        }
    }

    public final void clear() {
        this.mChildren = null;
        if (this.mItems != null) {
            this.mItems.clear();
        }
    }

    public final Collection<T> search$1e128623(bool bool) {
        Collection<T> arrayList = new ArrayList();
        search$670f335b(bool, arrayList);
        return arrayList;
    }

    private void search$670f335b(bool bool, Collection<T> collection) {
        bool bool2 = this.mBounds$6ccf0245;
        Object obj = null;
        Object obj2 = (bool.minX >= bool2.maxX || bool2.minX >= bool.maxX || bool.minY >= bool2.maxY || bool2.minY >= bool.maxY) ? null : 1;
        if (obj2 != null) {
            if (this.mChildren != null) {
                for (PointQuadTree search$670f335b : this.mChildren) {
                    search$670f335b.search$670f335b(bool, collection);
                }
                return;
            }
            if (this.mItems != null) {
                bool2 = this.mBounds$6ccf0245;
                if (bool2.minX >= bool.minX && bool2.maxX <= bool.maxX && bool2.minY >= bool.minY && bool2.maxY <= bool.maxY) {
                    obj = 1;
                }
                if (obj != null) {
                    collection.addAll(this.mItems);
                    return;
                }
                for (Item item : this.mItems) {
                    color point$4cf92aad = item.getPoint$4cf92aad();
                    if (bool.contains(point$4cf92aad.f5x, point$4cf92aad.f6y)) {
                        collection.add(item);
                    }
                }
            }
        }
    }
}
