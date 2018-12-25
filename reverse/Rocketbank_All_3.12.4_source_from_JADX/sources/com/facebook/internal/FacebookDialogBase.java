package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import java.util.List;

public abstract class FacebookDialogBase<CONTENT, RESULT> implements FacebookDialog<CONTENT, RESULT> {
    protected static final Object BASE_AUTOMATIC_MODE = new Object();
    private static final String TAG = "FacebookDialog";
    private final Activity activity;
    private final FragmentWrapper fragmentWrapper;
    private List<ModeHandler> modeHandlers;
    private int requestCode;

    protected abstract class ModeHandler {
        public abstract boolean canShow(CONTENT content, boolean z);

        public abstract AppCall createAppCall(CONTENT content);

        protected ModeHandler() {
        }

        public Object getMode() {
            return FacebookDialogBase.BASE_AUTOMATIC_MODE;
        }
    }

    protected abstract AppCall createBaseAppCall();

    protected abstract List<ModeHandler> getOrderedModeHandlers();

    protected abstract void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<RESULT> facebookCallback);

    protected FacebookDialogBase(Activity activity, int i) {
        Validate.notNull(activity, "activity");
        this.activity = activity;
        this.fragmentWrapper = null;
        this.requestCode = i;
    }

    protected FacebookDialogBase(FragmentWrapper fragmentWrapper, int i) {
        Validate.notNull(fragmentWrapper, "fragmentWrapper");
        this.fragmentWrapper = fragmentWrapper;
        this.activity = null;
        this.requestCode = i;
        if (fragmentWrapper.getActivity() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }

    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            registerCallbackImpl((CallbackManagerImpl) callbackManager, facebookCallback);
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i) {
        setRequestCode(i);
        registerCallback(callbackManager, facebookCallback);
    }

    protected void setRequestCode(int i) {
        if (FacebookSdk.isFacebookRequestCode(i)) {
            StringBuilder stringBuilder = new StringBuilder("Request code ");
            stringBuilder.append(i);
            stringBuilder.append(" cannot be within the range reserved by the Facebook SDK.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.requestCode = i;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public boolean canShow(CONTENT content) {
        return canShowImpl(content, BASE_AUTOMATIC_MODE);
    }

    protected boolean canShowImpl(CONTENT content, Object obj) {
        boolean z = obj == BASE_AUTOMATIC_MODE;
        for (ModeHandler modeHandler : cachedModeHandlers()) {
            if ((z || Utility.areObjectsEqual(modeHandler.getMode(), obj)) && modeHandler.canShow(content, false)) {
                return true;
            }
        }
        return false;
    }

    public void show(CONTENT content) {
        showImpl(content, BASE_AUTOMATIC_MODE);
    }

    protected void showImpl(CONTENT content, Object obj) {
        AppCall createAppCallForMode = createAppCallForMode(content, obj);
        if (createAppCallForMode == null) {
            content = "No code path should ever result in a null appCall";
            Log.e(TAG, content);
            if (FacebookSdk.isDebugEnabled() != null) {
                throw new IllegalStateException(content);
            }
        } else if (this.fragmentWrapper != null) {
            DialogPresenter.present(createAppCallForMode, this.fragmentWrapper);
        } else {
            DialogPresenter.present(createAppCallForMode, this.activity);
        }
    }

    protected Activity getActivityContext() {
        if (this.activity != null) {
            return this.activity;
        }
        return this.fragmentWrapper != null ? this.fragmentWrapper.getActivity() : null;
    }

    protected void startActivityForResult(Intent intent, int i) {
        String str;
        if (this.activity != null) {
            this.activity.startActivityForResult(intent, i);
        } else {
            if (this.fragmentWrapper == null) {
                str = "Failed to find Activity or Fragment to startActivityForResult ";
            } else if (this.fragmentWrapper.getNativeFragment() != null) {
                this.fragmentWrapper.getNativeFragment().startActivityForResult(intent, i);
            } else if (this.fragmentWrapper.getSupportFragment() != null) {
                this.fragmentWrapper.getSupportFragment().startActivityForResult(intent, i);
            } else {
                str = "Failed to find Activity or Fragment to startActivityForResult ";
            }
            if (str != null) {
                Logger.log(LoggingBehavior.DEVELOPER_ERRORS, 6, getClass().getName(), str);
            }
        }
        str = null;
        if (str != null) {
            Logger.log(LoggingBehavior.DEVELOPER_ERRORS, 6, getClass().getName(), str);
        }
    }

    private AppCall createAppCallForMode(CONTENT content, Object obj) {
        boolean z = obj == BASE_AUTOMATIC_MODE;
        AppCall appCall = null;
        for (ModeHandler modeHandler : cachedModeHandlers()) {
            if ((z || Utility.areObjectsEqual(modeHandler.getMode(), obj)) && modeHandler.canShow(content, true)) {
                try {
                    appCall = modeHandler.createAppCall(content);
                    break;
                } catch (CONTENT content2) {
                    appCall = createBaseAppCall();
                    DialogPresenter.setupAppCallForValidationError(appCall, content2);
                }
            }
        }
        if (appCall != null) {
            return appCall;
        }
        appCall = createBaseAppCall();
        DialogPresenter.setupAppCallForCannotShowError(appCall);
        return appCall;
    }

    private List<ModeHandler> cachedModeHandlers() {
        if (this.modeHandlers == null) {
            this.modeHandlers = getOrderedModeHandlers();
        }
        return this.modeHandlers;
    }
}
