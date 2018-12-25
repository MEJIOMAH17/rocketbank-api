package de.greenrobot.event;

final class PendingPostQueue {
    private PendingPost head;
    private PendingPost tail;

    PendingPostQueue() {
    }

    final synchronized void enqueue(PendingPost pendingPost) {
        if (pendingPost == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.tail != null) {
            this.tail.next = pendingPost;
            this.tail = pendingPost;
        } else if (this.head == null) {
            this.tail = pendingPost;
            this.head = pendingPost;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    final synchronized PendingPost poll() {
        PendingPost pendingPost;
        pendingPost = this.head;
        if (this.head != null) {
            this.head = this.head.next;
            if (this.head == null) {
                this.tail = null;
            }
        }
        return pendingPost;
    }

    final synchronized PendingPost poll$2bd60b69() throws InterruptedException {
        if (this.head == null) {
            wait(1000);
        }
        return poll();
    }
}
