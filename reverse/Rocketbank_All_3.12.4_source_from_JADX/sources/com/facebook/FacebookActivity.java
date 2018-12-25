package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginFragment;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

public class FacebookActivity extends FragmentActivity {
    private static String FRAGMENT_TAG = "SingleFragment";
    public static String PASS_THROUGH_CANCEL_ACTION = "PassThrough";
    private static final String TAG = "com.facebook.FacebookActivity";
    private Fragment singleFragment;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = getIntent();
        if (!FacebookSdk.isInitialized()) {
            Log.d(TAG, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            FacebookSdk.sdkInitialize(getApplicationContext());
        }
        setContentView(C0361R.layout.com_facebook_activity_layout);
        if (PASS_THROUGH_CANCEL_ACTION.equals(bundle.getAction()) != null) {
            handlePassThroughError();
        } else {
            this.singleFragment = getFragment();
        }
    }

    protected Fragment getFragment() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG);
        if (findFragmentByTag != null) {
            return findFragmentByTag;
        }
        if (FacebookDialogFragment.TAG.equals(intent.getAction())) {
            findFragmentByTag = new FacebookDialogFragment();
            findFragmentByTag.setRetainInstance(true);
            findFragmentByTag.show(supportFragmentManager, FRAGMENT_TAG);
            return findFragmentByTag;
        } else if (DeviceShareDialogFragment.TAG.equals(intent.getAction())) {
            findFragmentByTag = new DeviceShareDialogFragment();
            findFragmentByTag.setRetainInstance(true);
            findFragmentByTag.setShareContent((ShareContent) intent.getParcelableExtra(Param.CONTENT));
            findFragmentByTag.show(supportFragmentManager, FRAGMENT_TAG);
            return findFragmentByTag;
        } else {
            findFragmentByTag = new LoginFragment();
            findFragmentByTag.setRetainInstance(true);
            supportFragmentManager.beginTransaction().add(C0361R.id.com_facebook_fragment_container, findFragmentByTag, FRAGMENT_TAG).commit();
            return findFragmentByTag;
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.singleFragment != null) {
            this.singleFragment.onConfigurationChanged(configuration);
        }
    }

    public Fragment getCurrentFragment() {
        return this.singleFragment;
    }

    private void handlePassThroughError() {
        setResult(0, NativeProtocol.createProtocolResultIntent(getIntent(), null, NativeProtocol.getExceptionFromErrorData(NativeProtocol.getMethodArgumentsFromIntent(getIntent()))));
        finish();
    }
}
