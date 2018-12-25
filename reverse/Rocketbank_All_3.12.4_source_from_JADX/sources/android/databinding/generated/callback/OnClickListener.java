package android.databinding.generated.callback;

import android.view.View;

public final class OnClickListener implements android.view.View.OnClickListener {
    final Listener mListener;
    final int mSourceId;

    public interface Listener {
        void _internalCallbackOnClick(int i, View view);
    }

    public OnClickListener(Listener listener, int i) {
        this.mListener = listener;
        this.mSourceId = i;
    }

    public final void onClick(View view) {
        this.mListener._internalCallbackOnClick(this.mSourceId, view);
    }
}
