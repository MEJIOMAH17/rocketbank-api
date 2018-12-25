.class public final Lru/rocketbank/r2d2/helpers/ViewRunner;
.super Ljava/lang/Object;
.source "ViewRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs set(Ljava/lang/Runnable;[Landroid/view/View;)V
    .locals 5

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    .line 12
    new-instance v4, Lru/rocketbank/r2d2/helpers/ViewRunner$1;

    invoke-direct {v4, v0, p0}, Lru/rocketbank/r2d2/helpers/ViewRunner$1;-><init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
