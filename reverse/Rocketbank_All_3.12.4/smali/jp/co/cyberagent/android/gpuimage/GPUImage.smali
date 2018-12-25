.class public final Ljp/co/cyberagent/android/gpuimage/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    }
.end annotation


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public static init()V
    .locals 6

    const/4 v0, 0x0

    .line 1078
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mVertexShader:Ljava/lang/String;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mFragmentShader:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1108
    new-array v2, v2, [I

    const v3, 0x8b31

    .line 1109
    invoke-static {v1, v3}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v0, "Load Program"

    const-string v1, "Vertex Shader Failed"

    .line 1111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v4, 0x8b30

    .line 1114
    invoke-static {v0, v4}, Ljp/co/cyberagent/android/gpuimage/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Load Program"

    const-string v1, "Fragment Shader Failed"

    .line 1116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1120
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    .line 1122
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1123
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1125
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    .line 1127
    invoke-static {v4, v5, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1128
    aget v2, v2, v3

    if-gtz v2, :cond_2

    const-string v0, "Load Program"

    const-string v1, "Linking Failed"

    .line 1129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1132
    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1133
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :goto_0
    const-string v0, "position"

    .line 1079
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    const-string v0, "inputImageTexture"

    .line 1080
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    const-string v0, "inputTextureCoordinate"

    .line 1081
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    return-void
.end method

.method public static onDraw$785d2f9c()V
    .locals 2

    const/4 v0, 0x0

    .line 2105
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :goto_0
    const/4 v0, 0x0

    .line 2133
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
