.class Lio/card/payment/CardScanner;
.super Ljava/lang/Object;
.source "CardScanner.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "CardScanner"

.field private static manualFallbackForError:Z = false

.field private static processingInProgress:Z = false


# instance fields
.field private captureStart:J

.field private detectedBitmap:Landroid/graphics/Bitmap;

.field private isSurfaceValid:Z

.field private mAutoFocusCompletedAt:J

.field private mAutoFocusStartedAt:J

.field private mCamera:Landroid/hardware/Camera;

.field private mFirstPreviewFrame:Z

.field private mFrameOrientation:I

.field private mPreviewBuffer:[B

.field final mPreviewHeight:I

.field final mPreviewWidth:I

.field protected mScanActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/card/payment/CardIOActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mScanExpiry:Z

.field private mSuppressScan:Z

.field private mUnblurDigits:I

.field private numAutoRefocus:I

.field private numFramesSkipped:I

.field private numManualRefocus:I

.field private numManualTorchChange:I

.field protected useCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "card.io"

    const-string v1, "card.io 5.5.1 03/17/2017 14:23:12 -0400"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "cardioDecider"

    .line 124
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded card.io decider library."

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "card.io"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    nUseNeon(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/card/payment/CardScanner;->nUseNeon()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "card.io"

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    nUseTegra():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/card/payment/CardScanner;->nUseTegra()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "card.io"

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    nUseX86():  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/card/payment/CardScanner;->nUseX86()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    invoke-static {}, Lio/card/payment/CardScanner;->nUseNeon()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lio/card/payment/CardScanner;->nUseTegra()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lio/card/payment/CardScanner;->nUseX86()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "opencv_core"

    .line 131
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded opencv core library"

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "opencv_imgproc"

    .line 133
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded opencv imgproc library"

    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    invoke-static {}, Lio/card/payment/CardScanner;->nUseNeon()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "cardioRecognizer"

    .line 137
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded card.io NEON library"

    .line 138
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :cond_3
    invoke-static {}, Lio/card/payment/CardScanner;->nUseX86()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "cardioRecognizer"

    .line 140
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded card.io x86 library"

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {}, Lio/card/payment/CardScanner;->nUseTegra()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "cardioRecognizer_tegra2"

    .line 143
    invoke-static {v1}, Lio/card/payment/CardScanner;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "card.io"

    const-string v2, "Loaded card.io Tegra2 library"

    .line 144
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v1, "card.io"

    const-string v2, "unsupported processor - card.io scanning requires ARMv7 or x86 architecture"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sput-boolean v0, Lio/card/payment/CardScanner;->manualFallbackForError:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load native library: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.io"

    .line 152
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput-boolean v0, Lio/card/payment/CardScanner;->manualFallbackForError:Z

    :goto_2
    return-void
.end method

.method constructor <init>(Lio/card/payment/CardIOActivity;I)V
    .locals 5

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lio/card/payment/CardScanner;->mSuppressScan:Z

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Lio/card/payment/CardScanner;->mUnblurDigits:I

    const/16 v2, 0x280

    .line 93
    iput v2, p0, Lio/card/payment/CardScanner;->mPreviewWidth:I

    const/16 v2, 0x1e0

    .line 94
    iput v2, p0, Lio/card/payment/CardScanner;->mPreviewHeight:I

    const/4 v2, 0x1

    .line 96
    iput v2, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    .line 98
    iput-boolean v2, p0, Lio/card/payment/CardScanner;->mFirstPreviewFrame:Z

    .line 107
    iput-boolean v2, p0, Lio/card/payment/CardScanner;->useCamera:Z

    .line 193
    invoke-virtual {p1}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "io.card.payment.suppressScan"

    .line 195
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lio/card/payment/CardScanner;->mSuppressScan:Z

    const-string v4, "io.card.payment.requireExpiry"

    .line 196
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "io.card.payment.scanExpiry"

    .line 197
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lio/card/payment/CardScanner;->mScanExpiry:Z

    const-string v0, "io.card.payment.unblurDigits"

    .line 198
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/card/payment/CardScanner;->mUnblurDigits:I

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/card/payment/CardScanner;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    .line 201
    iput p2, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    .line 202
    iget-boolean p1, p0, Lio/card/payment/CardScanner;->mSuppressScan:Z

    const/high16 p2, 0x40c00000    # 6.0f

    iget v0, p0, Lio/card/payment/CardScanner;->mUnblurDigits:I

    invoke-direct {p0, p1, p2, v0}, Lio/card/payment/CardScanner;->nSetup(ZFI)V

    return-void
.end method

.method private connectToCamera$366b0d9a(I)Landroid/hardware/Camera;
    .locals 7

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    iget-boolean v2, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v2, "card.io"

    const-string v3, "Unexpected exception. Please report it as a GitHub issue"

    .line 226
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    goto :goto_0

    :catch_1
    :try_start_1
    const-string v2, "card.io"

    const-string v3, "Wasn\'t able to connect to camera service. Waiting and trying again..."

    .line 219
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x32

    .line 221
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "card.io"

    const-string v4, "Interrupted while waiting for camera"

    .line 223
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    int-to-long v2, p1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    .line 232
    :cond_1
    sget-object p1, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v0, "camera connect timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 168
    invoke-static {}, Lio/card/payment/CardIONativeLibsConfig;->getAlternativeLibsPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card.io"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary failed for library "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Trying "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    .line 170
    :cond_2
    :goto_0
    throw v0
.end method

.method private makePreviewGo(Landroid/view/SurfaceHolder;)Z
    .locals 3

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lio/card/payment/CardScanner;->mFirstPreviewFrame:Z

    .line 371
    iget-boolean v1, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 373
    :try_start_0
    iget-object v2, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    :try_start_1
    iget-object p1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 380
    iget-object p1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "card.io"

    const-string v2, "startPreview failed on camera. Error: "

    .line 382
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p1

    const-string v0, "card.io"

    const-string v2, "can\'t set preview display"

    .line 375
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    :goto_0
    return v0
.end method

.method private native nCleanup()V
.end method

.method private native nGetGuideFrame(IIILandroid/graphics/Rect;)V
.end method

.method private native nGetNumFramesScanned()I
.end method

.method private native nResetAnalytics()V
.end method

.method private native nScanFrame([BIIILio/card/payment/DetectionInfo;Landroid/graphics/Bitmap;Z)V
.end method

.method private native nSetup(ZF)V
.end method

.method private native nSetup(ZFI)V
.end method

.method public static native nUseNeon()Z
.end method

.method public static native nUseTegra()Z
.end method

.method public static native nUseX86()Z
.end method

.method static processorSupported()Z
    .locals 3

    .line 189
    sget-boolean v0, Lio/card/payment/CardScanner;->manualFallbackForError:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1185
    invoke-static {}, Lio/card/payment/CardScanner;->nUseNeon()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lio/card/payment/CardScanner;->nUseTegra()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/card/payment/CardScanner;->nUseX86()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public final endScanning()V
    .locals 1

    .line 353
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lio/card/payment/CardScanner;->pauseScanning()V

    .line 356
    :cond_0
    invoke-direct {p0}, Lio/card/payment/CardScanner;->nCleanup()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lio/card/payment/CardScanner;->mPreviewBuffer:[B

    return-void
.end method

.method final getGuideFrame(II)Landroid/graphics/Rect;
    .locals 2

    .line 501
    iget v0, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    .line 3489
    invoke-static {}, Lio/card/payment/CardScanner;->processorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3490
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3491
    invoke-direct {p0, v0, p1, p2, v1}, Lio/card/payment/CardScanner;->nGetGuideFrame(IIILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method final getRotationalOffset()I
    .locals 2

    .line 642
    iget-object v0, p0, Lio/card/payment/CardScanner;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardIOActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lio/card/payment/CardIOActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 643
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFlashOn()Z
    .locals 2

    .line 583
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 586
    :cond_0
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/card/payment/CardScanner;->mAutoFocusCompletedAt:J

    return-void
.end method

.method onEdgeUpdate(Lio/card/payment/DetectionInfo;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lio/card/payment/CardScanner;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0, p1}, Lio/card/payment/CardIOActivity;->onEdgeUpdate(Lio/card/payment/DetectionInfo;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 11

    if-nez p1, :cond_0

    .line 440
    sget-object p1, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string p2, "frame is null! skipping"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 444
    :cond_0
    sget-boolean v0, Lio/card/payment/CardScanner;->processingInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 445
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v2, "processing in progress.... dropping frame"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v0, p0, Lio/card/payment/CardScanner;->numFramesSkipped:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/card/payment/CardScanner;->numFramesSkipped:I

    if-eqz p2, :cond_1

    .line 449
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_1
    return-void

    .line 453
    :cond_2
    sput-boolean v1, Lio/card/payment/CardScanner;->processingInProgress:Z

    .line 456
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->mFirstPreviewFrame:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 457
    iput-boolean v2, p0, Lio/card/payment/CardScanner;->mFirstPreviewFrame:Z

    .line 458
    iput v1, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    .line 459
    iget-object v0, p0, Lio/card/payment/CardScanner;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Lio/card/payment/CardIOActivity;->onFirstFrame$13462e()V

    .line 462
    :cond_3
    new-instance v0, Lio/card/payment/DetectionInfo;

    invoke-direct {v0}, Lio/card/payment/DetectionInfo;-><init>()V

    const/16 v5, 0x280

    const/16 v6, 0x1e0

    .line 465
    iget v7, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    iget-object v9, p0, Lio/card/payment/CardScanner;->detectedBitmap:Landroid/graphics/Bitmap;

    iget-boolean v10, p0, Lio/card/payment/CardScanner;->mScanExpiry:Z

    move-object v3, p0

    move-object v4, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v10}, Lio/card/payment/CardScanner;->nScanFrame([BIIILio/card/payment/DetectionInfo;Landroid/graphics/Bitmap;Z)V

    .line 467
    iget v3, v0, Lio/card/payment/DetectionInfo;->focusScore:F

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-nez v3, :cond_5

    .line 470
    invoke-virtual {p0, v2}, Lio/card/payment/CardScanner;->triggerAutoFocus(Z)V

    goto :goto_2

    .line 2046
    :cond_5
    iget-boolean v3, v0, Lio/card/payment/DetectionInfo;->complete:Z

    if-nez v3, :cond_7

    .line 471
    iget-boolean v3, p0, Lio/card/payment/CardScanner;->mSuppressScan:Z

    if-eqz v3, :cond_8

    .line 3042
    iget-boolean v3, v0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    .line 472
    :cond_7
    iget-object v1, p0, Lio/card/payment/CardScanner;->mScanActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/card/payment/CardIOActivity;

    iget-object v3, p0, Lio/card/payment/CardScanner;->detectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v0}, Lio/card/payment/CardIOActivity;->onCardDetected(Landroid/graphics/Bitmap;Lio/card/payment/DetectionInfo;)V

    :cond_8
    :goto_2
    if-eqz p2, :cond_9

    .line 477
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 479
    :cond_9
    sput-boolean v2, Lio/card/payment/CardScanner;->processingInProgress:Z

    return-void
.end method

.method public final pauseScanning()V
    .locals 4

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lio/card/payment/CardScanner;->setFlashOn(Z)Z

    .line 338
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 341
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "card.io"

    const-string v3, "can\'t stop preview display"

    .line 343
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    :goto_0
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 346
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 347
    iput-object v0, p0, Lio/card/payment/CardScanner;->mPreviewBuffer:[B

    .line 348
    iput-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method final prepareScanner()V
    .locals 9

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lio/card/payment/CardScanner;->mFirstPreviewFrame:Z

    const-wide/16 v0, 0x0

    .line 238
    iput-wide v0, p0, Lio/card/payment/CardScanner;->mAutoFocusStartedAt:J

    .line 239
    iput-wide v0, p0, Lio/card/payment/CardScanner;->mAutoFocusCompletedAt:J

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lio/card/payment/CardScanner;->numManualRefocus:I

    .line 242
    iput v0, p0, Lio/card/payment/CardScanner;->numAutoRefocus:I

    .line 243
    iput v0, p0, Lio/card/payment/CardScanner;->numManualTorchChange:I

    .line 245
    iput v0, p0, Lio/card/payment/CardScanner;->numFramesSkipped:I

    .line 247
    iget-boolean v1, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_5

    const/16 v1, 0x1388

    .line 248
    invoke-direct {p0, v1}, Lio/card/payment/CardScanner;->connectToCamera$366b0d9a(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    .line 249
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const-string v0, "card.io"

    const-string v1, "prepare scanner couldn\'t connect to camera!"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    .line 1618
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1619
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1621
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1622
    invoke-virtual {p0}, Lio/card/payment/CardScanner;->getRotationalOffset()I

    move-result v3

    .line 1623
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    .line 1624
    rem-int/lit16 v2, v2, 0x168

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    .line 1631
    :goto_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 256
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x1e0

    const/16 v4, 0x280

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 262
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-ne v8, v4, :cond_2

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-ne v8, v3, :cond_2

    move-object v5, v7

    :cond_3
    if-nez v5, :cond_4

    const-string v5, "card.io"

    const-string v6, "Didn\'t find a supported 640x480 resolution, so forcing"

    .line 268
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 273
    iput v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 274
    iput v3, v0, Landroid/hardware/Camera$Size;->height:I

    .line 278
    :cond_4
    invoke-virtual {v1, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 280
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 281
    :cond_5
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-nez v0, :cond_6

    .line 282
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v1, "useCamera is false!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    :cond_6
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_7

    .line 284
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "we already have a camera instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_7
    :goto_1
    iget-object v0, p0, Lio/card/payment/CardScanner;->detectedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    const/16 v0, 0x1ac

    const/16 v1, 0x10e

    .line 287
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/card/payment/CardScanner;->detectedBitmap:Landroid/graphics/Bitmap;

    :cond_8
    return-void
.end method

.method final resumeScanning(Landroid/view/SurfaceHolder;)Z
    .locals 4

    .line 294
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lio/card/payment/CardScanner;->prepareScanner()V

    .line 297
    :cond_0
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 299
    sget-object p1, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v0, "null camera. failure"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 305
    :cond_1
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/card/payment/CardScanner;->mPreviewBuffer:[B

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    .line 308
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const v3, 0x4b000

    mul-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 311
    new-array v0, v0, [B

    iput-object v0, p0, Lio/card/payment/CardScanner;->mPreviewBuffer:[B

    .line 312
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lio/card/payment/CardScanner;->mPreviewBuffer:[B

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 315
    :cond_2
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 316
    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 317
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 321
    :cond_3
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->isSurfaceValid:Z

    if-eqz v0, :cond_4

    .line 322
    invoke-direct {p0, p1}, Lio/card/payment/CardScanner;->makePreviewGo(Landroid/view/SurfaceHolder;)Z

    .line 326
    :cond_4
    invoke-virtual {p0, v1}, Lio/card/payment/CardScanner;->setFlashOn(Z)Z

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/card/payment/CardScanner;->captureStart:J

    .line 329
    invoke-direct {p0}, Lio/card/payment/CardScanner;->nResetAnalytics()V

    const/4 p1, 0x1

    return p1
.end method

.method final setDeviceOrientation(I)V
    .locals 0

    .line 505
    iput p1, p0, Lio/card/payment/CardScanner;->mFrameOrientation:I

    return-void
.end method

.method public final setFlashOn(Z)Z
    .locals 2

    .line 598
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 600
    :try_start_0
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "torch"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 601
    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 604
    iget p1, p0, Lio/card/payment/CardScanner;->numManualTorchChange:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/card/payment/CardScanner;->numManualTorchChange:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 608
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v1, "Could not set flash mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .line 410
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v1, "Preview.surfaceChanged(holder?:%b, f:%d, w:%d, h:%d )"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    .line 411
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 410
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "card.io"

    const-string v0, "CardScanner.surfaceCreated() - camera is null!"

    .line 399
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lio/card/payment/CardScanner;->isSurfaceValid:Z

    .line 397
    invoke-direct {p0, p1}, Lio/card/payment/CardScanner;->makePreviewGo(Landroid/view/SurfaceHolder;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 419
    iget-object p1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    iget-object p1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "card.io"

    const-string v1, "error stopping camera"

    .line 423
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 426
    iput-boolean p1, p0, Lio/card/payment/CardScanner;->isSurfaceValid:Z

    return-void
.end method

.method final triggerAutoFocus(Z)V
    .locals 5

    .line 561
    iget-boolean v0, p0, Lio/card/payment/CardScanner;->useCamera:Z

    if-eqz v0, :cond_2

    .line 3544
    iget-wide v0, p0, Lio/card/payment/CardScanner;->mAutoFocusCompletedAt:J

    iget-wide v2, p0, Lio/card/payment/CardScanner;->mAutoFocusStartedAt:J

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-gez v4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 563
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/card/payment/CardScanner;->mAutoFocusStartedAt:J

    .line 564
    iget-object v1, p0, Lio/card/payment/CardScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    if-eqz p1, :cond_1

    .line 566
    iget p1, p0, Lio/card/payment/CardScanner;->numManualRefocus:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/card/payment/CardScanner;->numManualRefocus:I

    return-void

    .line 568
    :cond_1
    iget p1, p0, Lio/card/payment/CardScanner;->numAutoRefocus:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/card/payment/CardScanner;->numAutoRefocus:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 571
    sget-object v0, Lio/card/payment/CardScanner;->TAG:Ljava/lang/String;

    const-string v1, "could not trigger auto focus: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
