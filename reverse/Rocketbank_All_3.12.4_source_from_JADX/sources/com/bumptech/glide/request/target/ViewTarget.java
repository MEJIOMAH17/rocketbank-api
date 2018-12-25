package com.bumptech.glide.request.target;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.request.Request;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public abstract class ViewTarget<T extends View, Z> extends BaseTarget<Z> {
    private static final String TAG = "ViewTarget";
    private static boolean isTagUsedAtLeastOnce = false;
    private static Integer tagId;
    private final SizeDeterminer sizeDeterminer;
    protected final T view;

    private static class SizeDeterminer {
        private final List<SizeReadyCallback> cbs = new ArrayList();
        private Point displayDimens;
        private SizeDeterminerLayoutListener layoutListener;
        private final View view;

        static class SizeDeterminerLayoutListener implements OnPreDrawListener {
            private final WeakReference<SizeDeterminer> sizeDeterminerRef;

            public SizeDeterminerLayoutListener(SizeDeterminer sizeDeterminer) {
                this.sizeDeterminerRef = new WeakReference(sizeDeterminer);
            }

            public final boolean onPreDraw() {
                if (Log.isLoggable(ViewTarget.TAG, 2)) {
                    Log.v(ViewTarget.TAG, "OnGlobalLayoutListener called listener=".concat(String.valueOf(this)));
                }
                SizeDeterminer sizeDeterminer = (SizeDeterminer) this.sizeDeterminerRef.get();
                if (sizeDeterminer != null) {
                    SizeDeterminer.access$000(sizeDeterminer);
                }
                return true;
            }
        }

        public SizeDeterminer(View view) {
            this.view = view;
        }

        public final void getSize(SizeReadyCallback sizeReadyCallback) {
            Object obj;
            int viewWidthOrParam = getViewWidthOrParam();
            int viewHeightOrParam = getViewHeightOrParam();
            Object obj2 = 1;
            if (viewWidthOrParam <= 0) {
                if (viewWidthOrParam != -2) {
                    obj = null;
                    if (obj != null) {
                        if (viewHeightOrParam <= 0) {
                            if (viewHeightOrParam == -2) {
                                obj2 = null;
                            }
                        }
                        if (obj2 != null) {
                            sizeReadyCallback.onSizeReady(viewWidthOrParam, viewHeightOrParam);
                            return;
                        }
                    }
                    if (!this.cbs.contains(sizeReadyCallback)) {
                        this.cbs.add(sizeReadyCallback);
                    }
                    if (this.layoutListener == null) {
                        sizeReadyCallback = this.view.getViewTreeObserver();
                        this.layoutListener = new SizeDeterminerLayoutListener(this);
                        sizeReadyCallback.addOnPreDrawListener(this.layoutListener);
                    }
                }
            }
            obj = 1;
            if (obj != null) {
                if (viewHeightOrParam <= 0) {
                    if (viewHeightOrParam == -2) {
                        obj2 = null;
                    }
                }
                if (obj2 != null) {
                    sizeReadyCallback.onSizeReady(viewWidthOrParam, viewHeightOrParam);
                    return;
                }
            }
            if (this.cbs.contains(sizeReadyCallback)) {
                this.cbs.add(sizeReadyCallback);
            }
            if (this.layoutListener == null) {
                sizeReadyCallback = this.view.getViewTreeObserver();
                this.layoutListener = new SizeDeterminerLayoutListener(this);
                sizeReadyCallback.addOnPreDrawListener(this.layoutListener);
            }
        }

        private int getViewHeightOrParam() {
            LayoutParams layoutParams = this.view.getLayoutParams();
            int height = this.view.getHeight();
            if (height <= 0) {
                if (height != -2) {
                    height = 0;
                    if (height != 0) {
                        return this.view.getHeight();
                    }
                    if (layoutParams != null) {
                        return 0;
                    }
                    int i = layoutParams.height;
                    return i != -2 ? getDisplayDimens().y : i;
                }
            }
            height = 1;
            if (height != 0) {
                return this.view.getHeight();
            }
            if (layoutParams != null) {
                return 0;
            }
            int i2 = layoutParams.height;
            if (i2 != -2) {
            }
        }

        private int getViewWidthOrParam() {
            LayoutParams layoutParams = this.view.getLayoutParams();
            int width = this.view.getWidth();
            if (width <= 0) {
                if (width != -2) {
                    width = 0;
                    if (width != 0) {
                        return this.view.getWidth();
                    }
                    if (layoutParams != null) {
                        return 0;
                    }
                    int i = layoutParams.width;
                    return i != -2 ? getDisplayDimens().x : i;
                }
            }
            width = 1;
            if (width != 0) {
                return this.view.getWidth();
            }
            if (layoutParams != null) {
                return 0;
            }
            int i2 = layoutParams.width;
            if (i2 != -2) {
            }
        }

        @TargetApi(13)
        private Point getDisplayDimens() {
            if (this.displayDimens != null) {
                return this.displayDimens;
            }
            Display defaultDisplay = ((WindowManager) this.view.getContext().getSystemService("window")).getDefaultDisplay();
            if (VERSION.SDK_INT >= 13) {
                this.displayDimens = new Point();
                defaultDisplay.getSize(this.displayDimens);
            } else {
                this.displayDimens = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
            }
            return this.displayDimens;
        }

        static /* synthetic */ void access$000(SizeDeterminer sizeDeterminer) {
            if (!sizeDeterminer.cbs.isEmpty()) {
                Object obj;
                ViewTreeObserver viewTreeObserver;
                int viewWidthOrParam = sizeDeterminer.getViewWidthOrParam();
                int viewHeightOrParam = sizeDeterminer.getViewHeightOrParam();
                Object obj2 = 1;
                if (viewWidthOrParam <= 0) {
                    if (viewWidthOrParam != -2) {
                        obj = null;
                        if (obj != null) {
                            if (viewHeightOrParam <= 0) {
                                if (viewHeightOrParam == -2) {
                                    obj2 = null;
                                }
                            }
                            if (obj2 == null) {
                                for (SizeReadyCallback onSizeReady : sizeDeterminer.cbs) {
                                    onSizeReady.onSizeReady(viewWidthOrParam, viewHeightOrParam);
                                }
                                sizeDeterminer.cbs.clear();
                                viewTreeObserver = sizeDeterminer.view.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.layoutListener);
                                }
                                sizeDeterminer.layoutListener = null;
                            }
                        }
                    }
                }
                obj = 1;
                if (obj != null) {
                    if (viewHeightOrParam <= 0) {
                        if (viewHeightOrParam == -2) {
                            obj2 = null;
                        }
                    }
                    if (obj2 == null) {
                        while (r2.hasNext()) {
                            onSizeReady.onSizeReady(viewWidthOrParam, viewHeightOrParam);
                        }
                        sizeDeterminer.cbs.clear();
                        viewTreeObserver = sizeDeterminer.view.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.layoutListener);
                        }
                        sizeDeterminer.layoutListener = null;
                    }
                }
            }
        }
    }

    public static void setTagId(int i) {
        if (tagId == null) {
            if (!isTagUsedAtLeastOnce) {
                tagId = Integer.valueOf(i);
                return;
            }
        }
        throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
    }

    public ViewTarget(T t) {
        if (t == null) {
            throw new NullPointerException("View must not be null!");
        }
        this.view = t;
        this.sizeDeterminer = new SizeDeterminer(t);
    }

    public T getView() {
        return this.view;
    }

    public void getSize(SizeReadyCallback sizeReadyCallback) {
        this.sizeDeterminer.getSize(sizeReadyCallback);
    }

    public void setRequest(Request request) {
        setTag(request);
    }

    public Request getRequest() {
        Object tag = getTag();
        if (tag == null) {
            return null;
        }
        if (tag instanceof Request) {
            return (Request) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    private void setTag(Object obj) {
        if (tagId == null) {
            isTagUsedAtLeastOnce = true;
            this.view.setTag(obj);
            return;
        }
        this.view.setTag(tagId.intValue(), obj);
    }

    private Object getTag() {
        if (tagId == null) {
            return this.view.getTag();
        }
        return this.view.getTag(tagId.intValue());
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Target for: ");
        stringBuilder.append(this.view);
        return stringBuilder.toString();
    }
}
