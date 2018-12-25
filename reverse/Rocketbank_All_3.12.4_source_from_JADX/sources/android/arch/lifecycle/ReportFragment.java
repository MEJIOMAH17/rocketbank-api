package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.arch.lifecycle.Lifecycle.Event;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

@RestrictTo
public final class ReportFragment extends Fragment {
    private ActivityInitializationListener mProcessListener;

    interface ActivityInitializationListener {
    }

    public static void injectIfNeededIn(Activity activity) {
        activity = activity.getFragmentManager();
        if (activity.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            activity.beginTransaction().add(new ReportFragment(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            activity.executePendingTransactions();
        }
    }

    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        dispatch(Event.ON_CREATE);
    }

    public final void onStart() {
        super.onStart();
        dispatch(Event.ON_START);
    }

    public final void onResume() {
        super.onResume();
        dispatch(Event.ON_RESUME);
    }

    public final void onPause() {
        super.onPause();
        dispatch(Event.ON_PAUSE);
    }

    public final void onStop() {
        super.onStop();
        dispatch(Event.ON_STOP);
    }

    public final void onDestroy() {
        super.onDestroy();
        dispatch(Event.ON_DESTROY);
        this.mProcessListener = null;
    }

    private void dispatch(Event event) {
        Activity activity = getActivity();
        if (activity instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) activity).getLifecycle().handleLifecycleEvent(event);
            return;
        }
        if (activity instanceof LifecycleOwner) {
            Lifecycle lifecycle = ((LifecycleOwner) activity).getLifecycle();
            if (lifecycle instanceof LifecycleRegistry) {
                ((LifecycleRegistry) lifecycle).handleLifecycleEvent(event);
            }
        }
    }
}
