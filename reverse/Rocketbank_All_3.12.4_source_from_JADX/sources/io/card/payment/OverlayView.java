package io.card.payment;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.card.payment.i18n.LocalizedStrings;
import io.card.payment.i18n.StringKey;
import java.lang.ref.WeakReference;

class OverlayView extends View {
    private static final Orientation[] GRADIENT_ORIENTATIONS = new Orientation[]{Orientation.TOP_BOTTOM, Orientation.LEFT_RIGHT, Orientation.BOTTOM_TOP, Orientation.RIGHT_LEFT};
    private static final String TAG = "OverlayView";
    private int guideColor;
    private boolean hideCardIOLogo;
    private Bitmap mBitmap;
    private Rect mCameraPreviewRect;
    private DetectionInfo mDInfo;
    private CreditCard mDetectedCard;
    private GradientDrawable mGradientDrawable;
    private Rect mGuide;
    private final Paint mGuidePaint;
    private final Paint mLockedBackgroundPaint;
    private Path mLockedBackgroundPath;
    private final Logo mLogo;
    private Rect mLogoRect;
    private int mRotation;
    private int mRotationFlip;
    private float mScale = 1.0f;
    private final WeakReference<CardIOActivity> mScanActivityRef;
    private final boolean mShowTorch;
    private final Torch mTorch;
    private Rect mTorchRect;
    private String scanInstructions;

    public OverlayView(CardIOActivity cardIOActivity, boolean z) {
        super(cardIOActivity, null);
        this.mShowTorch = z;
        this.mScanActivityRef = new WeakReference(cardIOActivity);
        this.mRotationFlip = 1;
        this.mScale = getResources().getDisplayMetrics().density / 1.5f;
        this.mTorch = new Torch(70.0f * this.mScale, 50.0f * this.mScale);
        this.mLogo = new Logo(cardIOActivity);
        this.mGuidePaint = new Paint(1);
        this.mLockedBackgroundPaint = new Paint(1);
        this.mLockedBackgroundPaint.clearShadowLayer();
        this.mLockedBackgroundPaint.setStyle(Style.FILL);
        this.mLockedBackgroundPaint.setColor(true);
        this.scanInstructions = LocalizedStrings.getString(StringKey.SCAN_GUIDE);
    }

    public final void setGuideColor(int i) {
        this.guideColor = i;
    }

    public final void setHideCardIOLogo(boolean z) {
        this.hideCardIOLogo = z;
    }

    public final void setScanInstructions(String str) {
        this.scanInstructions = str;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void setGuideAndRotation(android.graphics.Rect r4, int r5) {
        /*
        r3 = this;
        r3.mRotation = r5;
        r3.mGuide = r4;
        r3.invalidate();
        r4 = r3.mRotation;
        r4 = r4 % 180;
        r5 = 1114636288; // 0x42700000 float:60.0 double:5.507034975E-315;
        r0 = 1109393408; // 0x42200000 float:40.0 double:5.481131706E-315;
        if (r4 == 0) goto L_0x0022;
    L_0x0011:
        r4 = new android.graphics.Point;
        r1 = r3.mScale;
        r0 = r0 * r1;
        r0 = (int) r0;
        r1 = r3.mScale;
        r5 = r5 * r1;
        r5 = (int) r5;
        r4.<init>(r0, r5);
        r5 = -1;
        r3.mRotationFlip = r5;
        goto L_0x0032;
    L_0x0022:
        r4 = new android.graphics.Point;
        r1 = r3.mScale;
        r5 = r5 * r1;
        r5 = (int) r5;
        r1 = r3.mScale;
        r0 = r0 * r1;
        r0 = (int) r0;
        r4.<init>(r5, r0);
        r5 = 1;
        r3.mRotationFlip = r5;
    L_0x0032:
        r5 = r3.mCameraPreviewRect;
        if (r5 == 0) goto L_0x00cc;
    L_0x0036:
        r5 = new android.graphics.Point;
        r0 = r3.mCameraPreviewRect;
        r0 = r0.left;
        r1 = r4.x;
        r0 = r0 + r1;
        r1 = r3.mCameraPreviewRect;
        r1 = r1.top;
        r2 = r4.y;
        r1 = r1 + r2;
        r5.<init>(r0, r1);
        r0 = 1116471296; // 0x428c0000 float:70.0 double:5.51610112E-315;
        r1 = r3.mScale;
        r0 = r0 * r1;
        r0 = (int) r0;
        r1 = r3.mScale;
        r2 = 1112014848; // 0x42480000 float:50.0 double:5.49408334E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r5 = io.card.payment.Util.rectGivenCenter(r5, r0, r1);
        r3.mTorchRect = r5;
        r5 = new android.graphics.Point;
        r0 = r3.mCameraPreviewRect;
        r0 = r0.right;
        r1 = r4.x;
        r0 = r0 - r1;
        r1 = r3.mCameraPreviewRect;
        r1 = r1.top;
        r4 = r4.y;
        r1 = r1 + r4;
        r5.<init>(r0, r1);
        r4 = 1120403456; // 0x42c80000 float:100.0 double:5.53552857E-315;
        r0 = r3.mScale;
        r4 = r4 * r0;
        r4 = (int) r4;
        r0 = r3.mScale;
        r2 = r2 * r0;
        r0 = (int) r2;
        r4 = io.card.payment.Util.rectGivenCenter(r5, r4, r0);
        r3.mLogoRect = r4;
        r4 = 2;
        r4 = new int[r4];
        r4 = {-1, -16777216};
        r5 = GRADIENT_ORIENTATIONS;
        r0 = r3.mRotation;
        r0 = r0 / 90;
        r0 = r0 % 4;
        r5 = r5[r0];
        r0 = new android.graphics.drawable.GradientDrawable;
        r0.<init>(r5, r4);
        r3.mGradientDrawable = r0;
        r4 = r3.mGradientDrawable;
        r5 = 0;
        r4.setGradientType(r5);
        r4 = r3.mGradientDrawable;
        r5 = r3.mGuide;
        r4.setBounds(r5);
        r4 = r3.mGradientDrawable;
        r5 = 50;
        r4.setAlpha(r5);
        r4 = new android.graphics.Path;
        r4.<init>();
        r3.mLockedBackgroundPath = r4;
        r4 = r3.mLockedBackgroundPath;
        r5 = new android.graphics.RectF;
        r0 = r3.mCameraPreviewRect;
        r5.<init>(r0);
        r0 = android.graphics.Path.Direction.CW;
        r4.addRect(r5, r0);
        r4 = r3.mLockedBackgroundPath;
        r5 = new android.graphics.RectF;
        r0 = r3.mGuide;
        r5.<init>(r0);
        r0 = android.graphics.Path.Direction.CCW;
        r4.addRect(r5, r0);
    L_0x00cc:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.OverlayView.setGuideAndRotation(android.graphics.Rect, int):void");
    }

    public final void setBitmap(Bitmap bitmap) {
        if (this.mBitmap != null) {
            this.mBitmap.recycle();
        }
        this.mBitmap = bitmap;
        if (this.mBitmap != null) {
            bitmap = new RectF(2.0f, 2.0f, (float) (this.mBitmap.getWidth() - 2), (float) (this.mBitmap.getHeight() - 2));
            float height = ((float) this.mBitmap.getHeight()) * 0.06666667f;
            Bitmap createBitmap = Bitmap.createBitmap(this.mBitmap.getWidth(), this.mBitmap.getHeight(), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawColor(0);
            Paint paint = new Paint(1);
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            paint.setStyle(Style.FILL);
            canvas.drawRoundRect(bitmap, height, height, paint);
            bitmap = new Paint();
            bitmap.setFilterBitmap(false);
            Canvas canvas2 = new Canvas(this.mBitmap);
            bitmap.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
            canvas2.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmap);
            bitmap.setXfermode(null);
            createBitmap.recycle();
        }
    }

    public final Bitmap getBitmap() {
        return this.mBitmap;
    }

    public final void setDetectionInfo(DetectionInfo detectionInfo) {
        if (this.mDInfo != null) {
            DetectionInfo detectionInfo2 = this.mDInfo;
            Object obj = (detectionInfo.topEdge == detectionInfo2.topEdge && detectionInfo.bottomEdge == detectionInfo2.bottomEdge && detectionInfo.leftEdge == detectionInfo2.leftEdge && detectionInfo.rightEdge == detectionInfo2.rightEdge) ? 1 : null;
            if (obj == null) {
                invalidate();
            }
        }
        this.mDInfo = detectionInfo;
    }

    public final Bitmap getCardImage() {
        return (this.mBitmap == null || this.mBitmap.isRecycled()) ? null : Bitmap.createBitmap(this.mBitmap, 0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    private Rect guideStrokeRect(int i, int i2, int i3, int i4) {
        int i5 = (int) (8.0f * this.mScale);
        Rect rect = new Rect();
        rect.left = Math.min(i, i3) - i5;
        rect.right = Math.max(i, i3) + i5;
        rect.top = Math.min(i2, i4) - i5;
        rect.bottom = Math.max(i2, i4) + i5;
        return rect;
    }

    public void onDraw(Canvas canvas) {
        if (this.mGuide != null) {
            if (this.mCameraPreviewRect != null) {
                int i;
                float f;
                float f2;
                String[] split;
                canvas.save();
                this.mGradientDrawable.draw(canvas);
                if (this.mRotation != 0) {
                    if (this.mRotation != SubsamplingScaleImageView.ORIENTATION_180) {
                        i = (this.mGuide.right - this.mGuide.left) / 4;
                        if (this.mDInfo != null && this.mDInfo.numVisibleEdges() == 4) {
                            canvas.drawPath(this.mLockedBackgroundPath, this.mLockedBackgroundPaint);
                        }
                        this.mGuidePaint.clearShadowLayer();
                        this.mGuidePaint.setStyle(Style.FILL);
                        this.mGuidePaint.setColor(this.guideColor);
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left + i, this.mGuide.top), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left, this.mGuide.top + i), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right - i, this.mGuide.top), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right, this.mGuide.top + i), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.left + i, this.mGuide.bottom), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.left, this.mGuide.bottom - i), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.bottom, this.mGuide.right - i, this.mGuide.bottom), this.mGuidePaint);
                        canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.bottom, this.mGuide.right, this.mGuide.bottom - i), this.mGuidePaint);
                        if (this.mDInfo != null) {
                            if (this.mDInfo.topEdge) {
                                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.right, this.mGuide.top), this.mGuidePaint);
                            }
                            if (this.mDInfo.bottomEdge) {
                                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.right, this.mGuide.bottom), this.mGuidePaint);
                            }
                            if (this.mDInfo.leftEdge) {
                                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left, this.mGuide.bottom), this.mGuidePaint);
                            }
                            if (this.mDInfo.rightEdge) {
                                canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right, this.mGuide.bottom), this.mGuidePaint);
                            }
                            if (this.mDInfo.numVisibleEdges() < 3) {
                                f = 34.0f * this.mScale;
                                f2 = 26.0f * this.mScale;
                                Util.setupTextPaintStyle(this.mGuidePaint);
                                this.mGuidePaint.setTextAlign(Align.CENTER);
                                this.mGuidePaint.setTextSize(f2);
                                canvas.translate((float) (this.mGuide.left + (this.mGuide.width() / 2)), (float) (this.mGuide.top + (this.mGuide.height() / 2)));
                                canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                                if (!(this.scanInstructions == null || this.scanInstructions == "")) {
                                    split = this.scanInstructions.split("\n");
                                    f2 = (-(((((float) (split.length - 1)) * f) - f2) / 2.0f)) - 3.0f;
                                    for (String drawText : split) {
                                        canvas.drawText(drawText, BitmapDescriptorFactory.HUE_RED, f2, this.mGuidePaint);
                                        f2 += f;
                                    }
                                }
                            }
                        }
                        canvas.restore();
                        if (!this.hideCardIOLogo) {
                            canvas.save();
                            canvas.translate(this.mLogoRect.exactCenterX(), this.mLogoRect.exactCenterY());
                            canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                            this.mLogo.draw(canvas, 100.0f * this.mScale, 50.0f * this.mScale);
                            canvas.restore();
                        }
                        if (this.mShowTorch) {
                            canvas.save();
                            canvas.translate(this.mTorchRect.exactCenterX(), this.mTorchRect.exactCenterY());
                            canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                            this.mTorch.draw(canvas);
                            canvas.restore();
                        }
                    }
                }
                i = (this.mGuide.bottom - this.mGuide.top) / 4;
                canvas.drawPath(this.mLockedBackgroundPath, this.mLockedBackgroundPaint);
                this.mGuidePaint.clearShadowLayer();
                this.mGuidePaint.setStyle(Style.FILL);
                this.mGuidePaint.setColor(this.guideColor);
                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left + i, this.mGuide.top), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left, this.mGuide.top + i), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right - i, this.mGuide.top), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right, this.mGuide.top + i), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.left + i, this.mGuide.bottom), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.left, this.mGuide.bottom - i), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.bottom, this.mGuide.right - i, this.mGuide.bottom), this.mGuidePaint);
                canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.bottom, this.mGuide.right, this.mGuide.bottom - i), this.mGuidePaint);
                if (this.mDInfo != null) {
                    if (this.mDInfo.topEdge) {
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.right, this.mGuide.top), this.mGuidePaint);
                    }
                    if (this.mDInfo.bottomEdge) {
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.bottom, this.mGuide.right, this.mGuide.bottom), this.mGuidePaint);
                    }
                    if (this.mDInfo.leftEdge) {
                        canvas.drawRect(guideStrokeRect(this.mGuide.left, this.mGuide.top, this.mGuide.left, this.mGuide.bottom), this.mGuidePaint);
                    }
                    if (this.mDInfo.rightEdge) {
                        canvas.drawRect(guideStrokeRect(this.mGuide.right, this.mGuide.top, this.mGuide.right, this.mGuide.bottom), this.mGuidePaint);
                    }
                    if (this.mDInfo.numVisibleEdges() < 3) {
                        f = 34.0f * this.mScale;
                        f2 = 26.0f * this.mScale;
                        Util.setupTextPaintStyle(this.mGuidePaint);
                        this.mGuidePaint.setTextAlign(Align.CENTER);
                        this.mGuidePaint.setTextSize(f2);
                        canvas.translate((float) (this.mGuide.left + (this.mGuide.width() / 2)), (float) (this.mGuide.top + (this.mGuide.height() / 2)));
                        canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                        split = this.scanInstructions.split("\n");
                        f2 = (-(((((float) (split.length - 1)) * f) - f2) / 2.0f)) - 3.0f;
                        while (r3 < split.length) {
                            canvas.drawText(drawText, BitmapDescriptorFactory.HUE_RED, f2, this.mGuidePaint);
                            f2 += f;
                        }
                    }
                }
                canvas.restore();
                if (this.hideCardIOLogo) {
                    canvas.save();
                    canvas.translate(this.mLogoRect.exactCenterX(), this.mLogoRect.exactCenterY());
                    canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                    this.mLogo.draw(canvas, 100.0f * this.mScale, 50.0f * this.mScale);
                    canvas.restore();
                }
                if (this.mShowTorch) {
                    canvas.save();
                    canvas.translate(this.mTorchRect.exactCenterX(), this.mTorchRect.exactCenterY());
                    canvas.rotate((float) (this.mRotationFlip * this.mRotation));
                    this.mTorch.draw(canvas);
                    canvas.restore();
                }
            }
        }
    }

    public final void setDetectedCard(CreditCard creditCard) {
        this.mDetectedCard = creditCard;
    }

    public boolean onTouchEvent(android.view.MotionEvent r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = r3.getAction();	 Catch:{ NullPointerException -> 0x0045 }
        r0 = r0 & 255;	 Catch:{ NullPointerException -> 0x0045 }
        if (r0 != 0) goto L_0x004c;	 Catch:{ NullPointerException -> 0x0045 }
    L_0x0008:
        r0 = new android.graphics.Point;	 Catch:{ NullPointerException -> 0x0045 }
        r1 = r3.getX();	 Catch:{ NullPointerException -> 0x0045 }
        r1 = (int) r1;	 Catch:{ NullPointerException -> 0x0045 }
        r3 = r3.getY();	 Catch:{ NullPointerException -> 0x0045 }
        r3 = (int) r3;	 Catch:{ NullPointerException -> 0x0045 }
        r0.<init>(r1, r3);	 Catch:{ NullPointerException -> 0x0045 }
        r3 = 20;	 Catch:{ NullPointerException -> 0x0045 }
        r3 = io.card.payment.Util.rectGivenCenter(r0, r3, r3);	 Catch:{ NullPointerException -> 0x0045 }
        r0 = r2.mShowTorch;	 Catch:{ NullPointerException -> 0x0045 }
        if (r0 == 0) goto L_0x0039;	 Catch:{ NullPointerException -> 0x0045 }
    L_0x0021:
        r0 = r2.mTorchRect;	 Catch:{ NullPointerException -> 0x0045 }
        if (r0 == 0) goto L_0x0039;	 Catch:{ NullPointerException -> 0x0045 }
    L_0x0025:
        r0 = r2.mTorchRect;	 Catch:{ NullPointerException -> 0x0045 }
        r3 = android.graphics.Rect.intersects(r0, r3);	 Catch:{ NullPointerException -> 0x0045 }
        if (r3 == 0) goto L_0x0039;	 Catch:{ NullPointerException -> 0x0045 }
    L_0x002d:
        r3 = r2.mScanActivityRef;	 Catch:{ NullPointerException -> 0x0045 }
        r3 = r3.get();	 Catch:{ NullPointerException -> 0x0045 }
        r3 = (io.card.payment.CardIOActivity) r3;	 Catch:{ NullPointerException -> 0x0045 }
        r3.toggleFlash();	 Catch:{ NullPointerException -> 0x0045 }
        goto L_0x004c;	 Catch:{ NullPointerException -> 0x0045 }
    L_0x0039:
        r3 = r2.mScanActivityRef;	 Catch:{ NullPointerException -> 0x0045 }
        r3 = r3.get();	 Catch:{ NullPointerException -> 0x0045 }
        r3 = (io.card.payment.CardIOActivity) r3;	 Catch:{ NullPointerException -> 0x0045 }
        r3.triggerAutoFocus();	 Catch:{ NullPointerException -> 0x0045 }
        goto L_0x004c;
    L_0x0045:
        r3 = TAG;
        r0 = "NullPointerException caught in onTouchEvent method";
        android.util.Log.d(r3, r0);
    L_0x004c:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.card.payment.OverlayView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void markupCard() {
        if (this.mBitmap != null) {
            if (this.mDetectedCard.flipped) {
                Matrix matrix = new Matrix();
                matrix.setRotate(180.0f, (float) (this.mBitmap.getWidth() / 2), (float) (this.mBitmap.getHeight() / 2));
                this.mBitmap = Bitmap.createBitmap(this.mBitmap, 0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight(), matrix, false);
            }
            Canvas canvas = new Canvas(this.mBitmap);
            Paint paint = new Paint();
            Util.setupTextPaintStyle(paint);
            paint.setTextSize(28.0f * this.mScale);
            int length = this.mDetectedCard.cardNumber.length();
            float width = ((float) this.mBitmap.getWidth()) / 428.0f;
            int i = (int) ((((float) this.mDetectedCard.yoff) * width) - 6.0f);
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = (int) (((float) this.mDetectedCard.xoff[i2]) * width);
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(this.mDetectedCard.cardNumber.charAt(i2));
                canvas.drawText(stringBuilder.toString(), (float) i3, (float) i, paint);
            }
        }
    }

    public final void setCameraPreviewRect(Rect rect) {
        this.mCameraPreviewRect = rect;
    }

    public final void setTorchOn(boolean z) {
        this.mTorch.setOn(z);
        invalidate();
    }

    public final void setUseCardIOLogo(boolean z) {
        this.mLogo.loadLogo(z);
    }

    public final Rect getTorchRect() {
        return this.mTorchRect;
    }
}
