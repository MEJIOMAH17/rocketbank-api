package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;

public final class RequestManagerRetriever implements Callback {
    private static final RequestManagerRetriever INSTANCE = new RequestManagerRetriever();
    private volatile RequestManager applicationManager;
    private final Handler handler = new Handler(Looper.getMainLooper(), this);
    final Map<FragmentManager, RequestManagerFragment> pendingRequestManagerFragments = new HashMap();
    final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> pendingSupportRequestManagerFragments = new HashMap();

    public static RequestManagerRetriever get() {
        return INSTANCE;
    }

    RequestManagerRetriever() {
    }

    private RequestManager getApplicationManager(Context context) {
        if (this.applicationManager == null) {
            synchronized (this) {
                if (this.applicationManager == null) {
                    this.applicationManager = new RequestManager(context.getApplicationContext(), new ApplicationLifecycle(), new EmptyRequestManagerTreeNode());
                }
            }
        }
        return this.applicationManager;
    }

    public final RequestManager get(Context context) {
        while (context != null) {
            if (Util.isOnMainThread() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    if (Util.isOnBackgroundThread()) {
                        context = fragmentActivity.getApplicationContext();
                    } else if (VERSION.SDK_INT < 17 || !fragmentActivity.isDestroyed()) {
                        return supportFragmentGet(fragmentActivity, fragmentActivity.getSupportFragmentManager());
                    } else {
                        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                    }
                } else if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    if (!Util.isOnBackgroundThread()) {
                        if (VERSION.SDK_INT >= 11) {
                            if (VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
                                RequestManagerFragment requestManagerFragment = getRequestManagerFragment(activity.getFragmentManager());
                                RequestManager requestManager = requestManagerFragment.getRequestManager();
                                if (requestManager == null) {
                                    requestManager = new RequestManager(activity, requestManagerFragment.getLifecycle(), requestManagerFragment.getRequestManagerTreeNode$502d2407());
                                    requestManagerFragment.setRequestManager(requestManager);
                                }
                                return requestManager;
                            }
                            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                        }
                    }
                    context = activity.getApplicationContext();
                } else if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            return getApplicationManager(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public final RequestManager get(FragmentActivity fragmentActivity) {
        if (Util.isOnBackgroundThread()) {
            return get(fragmentActivity.getApplicationContext());
        }
        if (VERSION.SDK_INT < 17 || !fragmentActivity.isDestroyed()) {
            return supportFragmentGet(fragmentActivity, fragmentActivity.getSupportFragmentManager());
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    public final RequestManager get(Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        } else if (Util.isOnBackgroundThread()) {
            return get(fragment.getActivity().getApplicationContext());
        } else {
            return supportFragmentGet(fragment.getActivity(), fragment.getChildFragmentManager());
        }
    }

    @TargetApi(17)
    final RequestManagerFragment getRequestManagerFragment(FragmentManager fragmentManager) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (requestManagerFragment != null) {
            return requestManagerFragment;
        }
        requestManagerFragment = (RequestManagerFragment) this.pendingRequestManagerFragments.get(fragmentManager);
        if (requestManagerFragment != null) {
            return requestManagerFragment;
        }
        android.app.Fragment requestManagerFragment2 = new RequestManagerFragment();
        this.pendingRequestManagerFragments.put(fragmentManager, requestManagerFragment2);
        fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(1, fragmentManager).sendToTarget();
        return requestManagerFragment2;
    }

    final SupportRequestManagerFragment getSupportRequestManagerFragment(android.support.v4.app.FragmentManager fragmentManager) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment != null) {
            return supportRequestManagerFragment;
        }
        supportRequestManagerFragment = (SupportRequestManagerFragment) this.pendingSupportRequestManagerFragments.get(fragmentManager);
        if (supportRequestManagerFragment != null) {
            return supportRequestManagerFragment;
        }
        Fragment supportRequestManagerFragment2 = new SupportRequestManagerFragment();
        this.pendingSupportRequestManagerFragments.put(fragmentManager, supportRequestManagerFragment2);
        fragmentManager.beginTransaction().add(supportRequestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.handler.obtainMessage(2, fragmentManager).sendToTarget();
        return supportRequestManagerFragment2;
    }

    private RequestManager supportFragmentGet(Context context, android.support.v4.app.FragmentManager fragmentManager) {
        fragmentManager = getSupportRequestManagerFragment(fragmentManager);
        RequestManager requestManager = fragmentManager.getRequestManager();
        if (requestManager != null) {
            return requestManager;
        }
        requestManager = new RequestManager(context, fragmentManager.getLifecycle(), fragmentManager.getRequestManagerTreeNode$502d2407());
        fragmentManager.setRequestManager(requestManager);
        return requestManager;
    }

    public final boolean handleMessage(Message message) {
        Object obj = null;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                message = this.pendingRequestManagerFragments.remove(obj);
                break;
            case 2:
                obj = (android.support.v4.app.FragmentManager) message.obj;
                message = this.pendingSupportRequestManagerFragments.remove(obj);
                break;
            default:
                z = false;
                message = null;
                break;
        }
        if (z && r4 == null && Log.isLoggable("RMRetriever", 5) != null) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: ".concat(String.valueOf(obj)));
        }
        return z;
    }
}
