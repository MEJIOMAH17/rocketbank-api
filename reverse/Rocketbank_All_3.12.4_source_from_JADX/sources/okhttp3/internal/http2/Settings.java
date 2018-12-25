package okhttp3.internal.http2;

import ru.rocketbank.r2d2.root.chat.ChatFragment;

public final class Settings {
    private int set;
    private final int[] values = new int[10];

    final Settings set(int i, int i2) {
        if (i >= 0) {
            if (i < 10) {
                this.set = (1 << i) | this.set;
                this.values[i] = i2;
                return this;
            }
        }
        return this;
    }

    final boolean isSet(int i) {
        return ((1 << i) & this.set) != 0;
    }

    final int get(int i) {
        return this.values[i];
    }

    final int size() {
        return Integer.bitCount(this.set);
    }

    final int getHeaderTableSize() {
        return (this.set & 2) != 0 ? this.values[1] : -1;
    }

    final int getMaxConcurrentStreams$134621() {
        return (this.set & 16) != 0 ? this.values[4] : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    final int getMaxFrameSize(int i) {
        return (this.set & 32) != 0 ? this.values[5] : i;
    }

    final int getInitialWindowSize() {
        return (this.set & 128) != 0 ? this.values[7] : ChatFragment.TYPE_MESSAGE_TYPING;
    }
}
