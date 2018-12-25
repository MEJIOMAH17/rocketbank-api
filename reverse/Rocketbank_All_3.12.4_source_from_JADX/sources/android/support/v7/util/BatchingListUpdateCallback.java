package android.support.v7.util;

import com.google.maps.android.clustering.ClusterManager.OnClusterInfoWindowClickListener;

public final class BatchingListUpdateCallback implements OnClusterInfoWindowClickListener {
    int mLastEventCount = -1;
    Object mLastEventPayload = null;
    int mLastEventPosition = -1;
    int mLastEventType = 0;
    final OnClusterInfoWindowClickListener mWrapped$5e28063c;

    public BatchingListUpdateCallback(OnClusterInfoWindowClickListener onClusterInfoWindowClickListener) {
        this.mWrapped$5e28063c = onClusterInfoWindowClickListener;
    }

    public final void dispatchLastEvent() {
        if (this.mLastEventType != 0) {
            switch (this.mLastEventType) {
                case 1:
                    this.mWrapped$5e28063c.onInserted(this.mLastEventPosition, this.mLastEventCount);
                    break;
                case 2:
                    this.mWrapped$5e28063c.onRemoved(this.mLastEventPosition, this.mLastEventCount);
                    break;
                case 3:
                    this.mWrapped$5e28063c.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
                    break;
                default:
                    break;
            }
            this.mLastEventPayload = null;
            this.mLastEventType = 0;
        }
    }

    public final void onInserted(int i, int i2) {
        if (this.mLastEventType != 1 || i < this.mLastEventPosition || i > this.mLastEventPosition + this.mLastEventCount) {
            dispatchLastEvent();
            this.mLastEventPosition = i;
            this.mLastEventCount = i2;
            this.mLastEventType = 1;
            return;
        }
        this.mLastEventCount += i2;
        this.mLastEventPosition = Math.min(i, this.mLastEventPosition);
    }

    public final void onRemoved(int i, int i2) {
        if (this.mLastEventType != 2 || this.mLastEventPosition < i || this.mLastEventPosition > i + i2) {
            dispatchLastEvent();
            this.mLastEventPosition = i;
            this.mLastEventCount = i2;
            this.mLastEventType = 2;
            return;
        }
        this.mLastEventCount += i2;
        this.mLastEventPosition = i;
    }

    public final void onMoved(int i, int i2) {
        dispatchLastEvent();
        this.mWrapped$5e28063c.onMoved(i, i2);
    }

    public final void onChanged(int i, int i2, Object obj) {
        if (this.mLastEventType == 3 && i <= this.mLastEventPosition + this.mLastEventCount) {
            int i3 = i + i2;
            if (i3 >= this.mLastEventPosition && this.mLastEventPayload == obj) {
                i2 = this.mLastEventPosition + this.mLastEventCount;
                this.mLastEventPosition = Math.min(i, this.mLastEventPosition);
                this.mLastEventCount = Math.max(i2, i3) - this.mLastEventPosition;
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = i;
        this.mLastEventCount = i2;
        this.mLastEventPayload = obj;
        this.mLastEventType = 3;
    }
}
