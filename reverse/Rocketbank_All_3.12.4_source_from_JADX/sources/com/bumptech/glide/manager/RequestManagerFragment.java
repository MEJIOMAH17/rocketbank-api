package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.util.Log;
import com.bumptech.glide.RequestManager;
import java.util.HashSet;

@TargetApi(11)
public final class RequestManagerFragment extends Fragment {
    private final HashSet<RequestManagerFragment> childRequestManagerFragments;
    private final ActivityFragmentLifecycle lifecycle;
    private RequestManager requestManager;
    private final OnLoadCompleteListener requestManagerTreeNode$18af5158;
    private RequestManagerFragment rootRequestManagerFragment;

    class FragmentRequestManagerTreeNode implements OnLoadCompleteListener {
        private FragmentRequestManagerTreeNode() {
        }
    }

    public RequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    @SuppressLint({"ValidFragment"})
    private RequestManagerFragment(ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.requestManagerTreeNode$18af5158 = new FragmentRequestManagerTreeNode();
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
            this.rootRequestManagerFragment = RequestManagerRetriever.get().getRequestManagerFragment(getActivity().getFragmentManager());
            if (this.rootRequestManagerFragment != this) {
                this.rootRequestManagerFragment.childRequestManagerFragments.add(this);
            }
        } catch (Activity activity2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", activity2);
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

    public final void onTrimMemory(int i) {
        if (this.requestManager != null) {
            this.requestManager.onTrimMemory(i);
        }
    }

    public final void onLowMemory() {
        if (this.requestManager != null) {
            this.requestManager.onLowMemory();
        }
    }
}
