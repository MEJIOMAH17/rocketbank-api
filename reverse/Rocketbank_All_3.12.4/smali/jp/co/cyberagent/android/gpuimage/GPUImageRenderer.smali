.class public Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final CUBE:[F


# instance fields
.field private final mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLRgbBuffer:Ljava/nio/IntBuffer;

.field private final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLTextureId:I

.field private mImageHeight:I

.field private mImageWidth:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunOnDrawEnd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceChangedWaiter:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 46
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljava/nio/IntBuffer;
    .locals 0

    .line 44
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return p0
.end method

.method static synthetic access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureId:I

    return p1
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I
    .locals 0

    .line 44
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return p0
.end method

.method static synthetic access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    return p1
.end method

.method static synthetic access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I
    .locals 0

    .line 44
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    return p1
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    return-void
.end method

.method private adjustImageScaling()V
    .locals 17

    move-object/from16 v0, p0

    .line 254
    iget v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    int-to-float v1, v1

    .line 255
    iget v2, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    int-to-float v2, v2

    .line 256
    sget-object v3, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/Rotation;

    if-eqz v3, :cond_0

    sget-object v3, Ljp/co/cyberagent/android/gpuimage/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/Rotation;

    if-nez v3, :cond_1

    .line 257
    :cond_0
    iget v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    int-to-float v1, v1

    .line 258
    iget v2, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    int-to-float v2, v2

    .line 261
    :cond_1
    iget v3, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 262
    iget v4, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 263
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 264
    iget v4, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 265
    iget v5, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mImageHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    .line 270
    sget-object v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    .line 271
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation$44ccd82e()[F

    move-result-object v3

    .line 272
    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    sub-float v4, v5, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    div-float v1, v5, v1

    sub-float v1, v5, v1

    div-float/2addr v1, v15

    .line 275
    new-array v6, v6, [F

    aget v15, v3, v14

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    move v15, v4

    goto :goto_0

    :cond_2
    sub-float v15, v5, v4

    :goto_0
    aput v15, v6, v14

    .line 276
    aget v15, v3, v13

    cmpl-float v15, v15, v16

    if-nez v15, :cond_3

    move v15, v1

    goto :goto_1

    :cond_3
    sub-float v15, v5, v1

    :goto_1
    aput v15, v6, v13

    aget v13, v3, v12

    cmpl-float v13, v13, v16

    if-nez v13, :cond_4

    move v13, v4

    goto :goto_2

    :cond_4
    sub-float v13, v5, v4

    :goto_2
    aput v13, v6, v12

    .line 277
    aget v12, v3, v11

    cmpl-float v12, v12, v16

    if-nez v12, :cond_5

    move v12, v1

    goto :goto_3

    :cond_5
    sub-float v12, v5, v1

    :goto_3
    aput v12, v6, v11

    aget v11, v3, v10

    cmpl-float v11, v11, v16

    if-nez v11, :cond_6

    move v11, v4

    goto :goto_4

    :cond_6
    sub-float v11, v5, v4

    :goto_4
    aput v11, v6, v10

    .line 278
    aget v10, v3, v9

    cmpl-float v10, v10, v16

    if-nez v10, :cond_7

    move v10, v1

    goto :goto_5

    :cond_7
    sub-float v10, v5, v1

    :goto_5
    aput v10, v6, v9

    aget v9, v3, v8

    cmpl-float v9, v9, v16

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    sub-float v4, v5, v4

    :goto_6
    aput v4, v6, v8

    .line 279
    aget v3, v3, v7

    cmpl-float v3, v3, v16

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    sub-float v1, v5, v1

    :goto_7
    aput v1, v6, v7

    move-object v3, v6

    goto :goto_8

    .line 282
    :cond_a
    new-array v2, v6, [F

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v14

    div-float/2addr v5, v1

    aput v5, v2, v14

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v13

    div-float/2addr v5, v4

    aput v5, v2, v13

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v12

    div-float/2addr v5, v1

    aput v5, v2, v12

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v11

    div-float/2addr v5, v4

    aput v5, v2, v11

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v10

    div-float/2addr v5, v1

    aput v5, v2, v10

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v9

    div-float/2addr v5, v4

    aput v5, v2, v9

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v5, v5, v8

    div-float/2addr v5, v1

    aput v5, v2, v8

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    aget v1, v1, v7

    div-float/2addr v1, v4

    aput v1, v2, v7

    .line 290
    :goto_8
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 291
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 293
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static runAll(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 124
    monitor-enter p0

    .line 125
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    const/16 p1, 0x4100

    .line 114
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 115
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    .line 116
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->onDraw$785d2f9c()V

    .line 117
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDrawEnd:Ljava/util/Queue;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runAll(Ljava/util/Queue;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 133
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 134
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    if-nez v1, :cond_0

    .line 135
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mGLRgbBuffer:Ljava/nio/IntBuffer;

    .line 137
    :cond_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;

    invoke-direct {v1, p0, p1, v0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;[BLandroid/hardware/Camera$Size;Landroid/hardware/Camera;)V

    .line 1330
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    monitor-enter p1

    .line 1331
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mRunOnDraw:Ljava/util/Queue;

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1332
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 101
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputWidth:I

    .line 102
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mOutputHeight:I

    const/4 p1, 0x0

    .line 103
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 106
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->adjustImageScaling()V

    .line 107
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter p1

    .line 108
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 94
    invoke-static {p1, p1, p1, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb71

    .line 95
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 96
    invoke-static {}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->init()V

    return-void
.end method
