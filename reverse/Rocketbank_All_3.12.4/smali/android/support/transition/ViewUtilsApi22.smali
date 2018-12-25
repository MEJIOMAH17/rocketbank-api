.class final Landroid/support/transition/ViewUtilsApi22;
.super Landroid/support/transition/ViewUtilsApi21;
.source "ViewUtilsApi22.java"


# static fields
.field private static sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

.field private static sSetLeftTopRightBottomMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public final setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 9

    .line 1051
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 1053
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v6, "setLeftTopRightBottom"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1055
    sput-object v0, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "ViewUtilsApi22"

    const-string v7, "Failed to retrieve setLeftTopRightBottom method"

    .line 1057
    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    :goto_0
    sput-boolean v5, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    .line 38
    :cond_0
    sget-object v0, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 40
    :try_start_1
    sget-object v0, Landroid/support/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    return-void

    :cond_1
    return-void
.end method
