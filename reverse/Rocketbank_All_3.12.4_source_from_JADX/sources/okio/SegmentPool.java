package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

final class SegmentPool {
    static long byteCount;
    @Nullable
    static Segment next;

    private SegmentPool() {
    }

    static Segment take() {
        synchronized (SegmentPool.class) {
            if (next != null) {
                Segment segment = next;
                next = segment.next;
                segment.next = null;
                byteCount -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return segment;
            }
            return new Segment();
        }
    }

    static void recycle(Segment segment) {
        if (segment.next == null) {
            if (segment.prev == null) {
                if (!segment.shared) {
                    synchronized (SegmentPool.class) {
                        if (byteCount + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                            return;
                        }
                        byteCount += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        segment.next = next;
                        segment.limit = 0;
                        segment.pos = 0;
                        next = segment;
                        return;
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
