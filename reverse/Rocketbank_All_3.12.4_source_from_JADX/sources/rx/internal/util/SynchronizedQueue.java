package rx.internal.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class SynchronizedQueue<T> implements Cloneable, Queue<T> {
    private final Queue<T> list;
    private final int size;

    public SynchronizedQueue() {
        this.list = new LinkedList();
        this.size = -1;
    }

    public SynchronizedQueue(int i) {
        this.list = new LinkedList();
        this.size = i;
    }

    public synchronized boolean isEmpty() {
        return this.list.isEmpty();
    }

    public synchronized boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    public synchronized Iterator<T> iterator() {
        return this.list.iterator();
    }

    public synchronized int size() {
        return this.list.size();
    }

    public synchronized boolean add(T t) {
        return this.list.add(t);
    }

    public synchronized boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    public synchronized boolean containsAll(Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    public synchronized boolean addAll(Collection<? extends T> collection) {
        return this.list.addAll(collection);
    }

    public synchronized boolean removeAll(Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    public synchronized boolean retainAll(Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    public synchronized void clear() {
        this.list.clear();
    }

    public synchronized String toString() {
        return this.list.toString();
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.list.equals(((SynchronizedQueue) obj).list);
    }

    public synchronized T peek() {
        return this.list.peek();
    }

    public synchronized T element() {
        return this.list.element();
    }

    public synchronized T poll() {
        return this.list.poll();
    }

    public synchronized T remove() {
        return this.list.remove();
    }

    public synchronized boolean offer(T t) {
        return ((this.size < 0 || this.list.size() + 1 <= this.size) && this.list.offer(t) != null) ? true : null;
    }

    public synchronized Object clone() {
        SynchronizedQueue synchronizedQueue;
        synchronizedQueue = new SynchronizedQueue(this.size);
        synchronizedQueue.addAll(this.list);
        return synchronizedQueue;
    }

    public synchronized Object[] toArray() {
        return this.list.toArray();
    }

    public synchronized <R> R[] toArray(R[] rArr) {
        return this.list.toArray(rArr);
    }
}
