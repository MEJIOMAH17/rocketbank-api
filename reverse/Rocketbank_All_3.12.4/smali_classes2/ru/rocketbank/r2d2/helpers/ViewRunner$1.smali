.class final Lru/rocketbank/r2d2/helpers/ViewRunner$1;
.super Ljava/lang/Object;
.source "ViewRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/ViewRunner;->set(Ljava/lang/Runnable;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/ViewRunner$1;->val$arrayList:Ljava/util/ArrayList;

    iput-object p2, p0, Lru/rocketbank/r2d2/helpers/ViewRunner$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/ViewRunner$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/ViewRunner$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/ViewRunner$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
