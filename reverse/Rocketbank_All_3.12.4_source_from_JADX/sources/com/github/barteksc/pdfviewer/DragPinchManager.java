package com.github.barteksc.pdfviewer;

import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.View.OnTouchListener;
import com.github.barteksc.pdfviewer.util.Constants.Pinch;

final class DragPinchManager implements OnDoubleTapListener, OnGestureListener, OnScaleGestureListener, OnTouchListener {
    private AnimationManager animationManager;
    private GestureDetector gestureDetector;
    private boolean isSwipeEnabled;
    private PDFView pdfView;
    private ScaleGestureDetector scaleGestureDetector;
    private boolean scaling = false;
    private boolean scrolling = false;
    private boolean swipeVertical;

    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public final void onLongPress(MotionEvent motionEvent) {
    }

    public final void onShowPress(MotionEvent motionEvent) {
    }

    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public DragPinchManager(PDFView pDFView, AnimationManager animationManager) {
        this.pdfView = pDFView;
        this.animationManager = animationManager;
        this.isSwipeEnabled = false;
        this.swipeVertical = pDFView.isSwipeVertical();
        this.gestureDetector = new GestureDetector(pDFView.getContext(), this);
        this.scaleGestureDetector = new ScaleGestureDetector(pDFView.getContext(), this);
        pDFView.setOnTouchListener(this);
    }

    public final void enableDoubletap(boolean z) {
        if (z) {
            this.gestureDetector.setOnDoubleTapListener(this);
        } else {
            this.gestureDetector.setOnDoubleTapListener(null);
        }
    }

    public final void setSwipeEnabled(boolean z) {
        this.isSwipeEnabled = z;
    }

    public final void setSwipeVertical(boolean z) {
        this.swipeVertical = z;
    }

    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.pdfView.performClick();
        return true;
    }

    public final boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.pdfView.getZoom() < this.pdfView.getMidZoom()) {
            this.pdfView.zoomWithAnimation(motionEvent.getX(), motionEvent.getY(), this.pdfView.getMidZoom());
        } else if (this.pdfView.getZoom() < this.pdfView.getMaxZoom()) {
            this.pdfView.zoomWithAnimation(motionEvent.getX(), motionEvent.getY(), this.pdfView.getMaxZoom());
        } else {
            this.pdfView.resetZoomWithAnimation();
        }
        return true;
    }

    public final boolean onDown(MotionEvent motionEvent) {
        this.animationManager.stopFling();
        return true;
    }

    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.scrolling = true;
        if (!(this.pdfView.isZooming() == null && this.isSwipeEnabled == null)) {
            this.pdfView.moveRelativeTo(-f, -f2);
        }
        if (this.scaling == null) {
            this.pdfView.loadPageByOffset();
        }
        return true;
    }

    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int currentXOffset = (int) this.pdfView.getCurrentXOffset();
        int currentYOffset = (int) this.pdfView.getCurrentYOffset();
        AnimationManager animationManager = this.animationManager;
        int i = (int) f;
        int i2 = (int) f2;
        motionEvent2 = 2;
        if (this.swipeVertical != null) {
            motionEvent = 2;
        } else {
            motionEvent = this.pdfView.getPageCount();
        }
        int i3 = currentXOffset * motionEvent;
        if (this.swipeVertical != null) {
            motionEvent2 = this.pdfView.getPageCount();
        }
        animationManager.startFlingAnimation$69c647f5(currentXOffset, currentYOffset, i, i2, i3, currentYOffset * motionEvent2);
        return true;
    }

    public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        float zoom = this.pdfView.getZoom() * scaleFactor;
        if (zoom < Pinch.MINIMUM_ZOOM) {
            scaleFactor = Pinch.MINIMUM_ZOOM / this.pdfView.getZoom();
        } else if (zoom > Pinch.MAXIMUM_ZOOM) {
            scaleFactor = Pinch.MAXIMUM_ZOOM / this.pdfView.getZoom();
        }
        this.pdfView.zoomCenteredRelativeTo(scaleFactor, new PointF(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY()));
        return true;
    }

    public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.scaling = true;
        return true;
    }

    public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.pdfView.loadPages();
        this.scaling = null;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        view = this.scaleGestureDetector.onTouchEvent(motionEvent);
        if (!this.gestureDetector.onTouchEvent(motionEvent)) {
            if (view == null) {
                view = null;
                if (motionEvent.getAction() == 1 && this.scrolling != null) {
                    this.scrolling = false;
                    this.pdfView.loadPages();
                }
                return view;
            }
        }
        view = 1;
        this.scrolling = false;
        this.pdfView.loadPages();
        return view;
    }
}
