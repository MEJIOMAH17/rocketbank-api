package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.util.Log;
import com.bumptech.glide.RequestManager;
import java.util.HashSet;

public final class SupportRequestManagerFragment extends Fragment {
    private final HashSet<SupportRequestManagerFragment> childRequestManagerFragments;
    private final ActivityFragmentLifecycle lifecycle;
    private RequestManager requestManager;
    private final OnLoadCompleteListener requestManagerTreeNode$18af5158;
    private SupportRequestManagerFragment rootRequestManagerFragment;

    class SupportFragmentRequestManagerTreeNode implements OnLoadCompleteListener {
        private SupportFragmentRequestManagerTreeNode() {
        }
    }

    public SupportRequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    @SuppressLint({"ValidFragment"})
    private SupportRequestManagerFragment(ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.requestManagerTreeNode$18af5158 = new SupportFragmentRequestManagerTreeNode();
        this.childRequestManagerFragments = new HashSet();
        this.lifecycle = activityFragmentLifecycle;
    }

    public final void setRequestManager(RequestManager requestManager) {
        this.requestManager = requestManager;
    }

    final ActivityFragmentLifecycle getLifecycle() {
        return this.lifecycle;
    }

    public final RequestManager getRequestManager() {
        return this.requestManager;
    }

    public final OnLoadCompleteListener getRequestManagerTreeNode$502d2407() {
        return this.requestManagerTreeNode$18af5158;
    }

    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.rootRequestManagerFragment = RequestManagerRetriever.get().getSupportRequestManagerFragment(getActivity().getSupportFragmentManager());
            if (this.rootRequestManagerFragment != this) {
                this.rootRequestManagerFragment.childRequestManagerFragments.add(this);
            }
        } catch (Activity activity2) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", activity2);
            }
        }
    }

    public final void onDetach() {
        super.onDetach();
        if (this.rootRequestManagerFragment != null) {
            this.rootRequestManagerFragment.childRequestManagerFragments.remove(this);
            this.rootRequestManagerFragment = null;
        }
    }

    public final void onStart() {
        super.onStart();
        this.lifecycle.onStart();
    }

    public final void onStop() {
        super.onStop();
        this.lifecycle.onStop();
    }

    public final void onDestroy() {
        super.onDestroy();
        this.lifecycle.onDestroy();
    }

    public final void onLowMemory() {
        super.onLowMemory();
        if (this.requestManager != null) {
            this.requestManager.onLowMemory();
        }
    }
}
